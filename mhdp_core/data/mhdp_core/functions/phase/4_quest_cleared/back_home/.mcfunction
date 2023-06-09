#> mhdp_core:phase/4_quest_cleared/back_home/
#
# Phase4_クエストクリア 帰還処理

# クエストIDを参照し，状態をクリアにする
    function mhdp_core:phase/4_quest_cleared/back_home/setup/quest_clear

# 訓練終了処理
    execute if score #mhdp_quest_id MhdpCore matches 0 run function mhdp_core:phase/4_quest_cleared/back_home/setup/tutorial

# クエストデータ初期化
    data remove storage mh_dp:status GameStatus.Quest
    scoreboard players reset #mhdp_quest_id
    scoreboard players reset #mhdp_quest_monster_count
    scoreboard players reset #mhdp_quest_death_count
    scoreboard players reset #mhdp_quest_timer

# Phase変更
    data modify storage mh_dp:status GameStatus.Phase set value 0

# プレイヤーの状態リセット
    execute as @a run function mhdp_core:player/death/reset

# プレイヤーの武器をリセット
    execute as @a run function mhdp_core:phase/4_quest_cleared/back_home/setup/weapon

# プレイヤーの防具をリセット
    execute as @a run function mhdp_core:phase/4_quest_cleared/back_home/setup/armor

# プレイヤーの特殊装具をリセット
    execute as @a run function mhdp_core:phase/4_quest_cleared/back_home/setup/item

# プレイヤーを移動
    tp @a 266 63 204
    spawnpoint @a 266 63 204

# 中心点削除
    kill @e[type=marker,tag=CenterPos]

# forceload解除
    # 大闘技場
    # -138 70 55 to -6 70 153
        execute positioned -138 70 55 run forceload remove ~ ~ 132 98

# MhdpWeapons処理用タグ削除
    tag @a remove PlyQuest
    tag @a remove MnsTarget
    tag @a remove PlyWeaponDrawing
    tag @a remove PlyWeaponDrawingSub

# モンスター消去処理
    execute as @e[type=armor_stand,tag=MonsterRoot] run function mhdp_core:phase/4_quest_cleared/back_home/setup/despawn_monster

# 報酬チェスト用意
    function mhdp_core:phase/4_quest_cleared/back_home/setup/reward

# 再度アイテム回収
# 投げ捨てた武器は保存済みなのでkillする
    kill @e[type=item,nbt={Item:{tag:{MhdpWeapon:1b}}}]
    function mhdp_core:phase/2_quest_wait/prepare/pick_item

# 村人再配置
    function mhdp_core:phase/0_village/villager/
