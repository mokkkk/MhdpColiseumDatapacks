#> mhdp_core:phase/2_quest_wait/start_quest/phase_quest
#
# Phase1_クエスト受注 クエストPhase開始処理

# attribute設定
    execute as @a run attribute @s generic.knockback_resistance base set 1.0

# プレイヤーUID割り当て
    scoreboard players set #mhdp_temp_uid MhdpCore 0
    execute as @a[sort=arbitrary] run function mhdp_core:phase/2_quest_wait/start_quest/setup/uid
    scoreboard players reset #mhdp_temp_uid

# クエスト開始時刻保存
    data modify storage mh_dp:status GameStatus.Quest.StartTime set from storage mh_dp:status Time
    execute as @a run function mhdp_core:phase/2_quest_wait/start_quest/setup/player_time

# プレイヤーの武器をオフハンドにセット
    execute as @a run function mhdp_core:phase/2_quest_wait/start_quest/setup/weapon

# プレイヤーの特殊装具を取得
    execute as @a run function mhdp_core:phase/2_quest_wait/start_quest/setup/sp_items/

# プレイヤーの防具を外せなくする
    execute as @a run function mhdp_core:phase/2_quest_wait/start_quest/setup/armor

# プレイヤーの特殊装具をstickからcarrot_on_a_stickに変更(TO DO)
    # function ...

# マップ処理
    # 大闘技場
        execute if data storage mh_dp:status GameStatus.Quest{Field:1} run function mhdp_core:phase/2_quest_wait/start_quest/setup/map/coliseum

# 訓練開始時処理
    execute if score #mhdp_quest_id MhdpCore matches 0 run function mhdp_core:phase/2_quest_wait/start_quest/quests/tutorial

# MhdpWeapons処理用タグ付与
    tag @a add PlyQuest

# 開始前にadvancementを除去
    execute if entity @s[tag=AdvInventoryChangedMain] run tag @s remove AdvInventoryChangedMain
    execute if entity @s[tag=AdvInventoryChangedOff] run tag @s remove AdvInventoryChangedOff
    execute if entity @s[tag=AdvInventoryChangedOther] run tag @s remove AdvInventoryChangedOther

# Phase変更
    data modify storage mh_dp:status GameStatus.Phase set value 3

# 制限時間表示・tickに変更
    execute unless score #mhdp_quest_id MhdpCore matches 0 run tellraw @a [{"text": "【制限時間は "},{"score":{"name":"#mhdp_quest_timer","objective":"MhdpCore"}},{"text": "分 です】"}]
    scoreboard players set #mhdp_sec_temp MhdpCore 1200
    scoreboard players operation #mhdp_quest_timer MhdpCore *= #mhdp_sec_temp MhdpCore
    scoreboard players reset #mhdp_sec_temp

# 乙数初期化
    scoreboard players set #mhdp_quest_death_count MhdpCore 3
    # 報酬金保険発動時
        execute if entity @a[tag=CatSklInsurance] run scoreboard players set #mhdp_quest_death_count MhdpCore 4

# ノックバック用ID初期化
    scoreboard players set #mhdp_global_knockback_id MhdpCore 0
    scoreboard players set #mhdp_global_knockback_kill_id MhdpCore 0

# モンスターを配置
    function mhdp_core:phase/2_quest_wait/start_quest/setup/monsters/

# クエスト状態を受注済みに変更
    function mhdp_core:phase/2_quest_wait/start_quest/setup/quest_start
