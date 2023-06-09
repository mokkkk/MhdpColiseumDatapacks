#> mhdp_core:phase/2_quest_wait/start_quest/
#
# Phase1_クエスト受注 クエスト開始処理

# プレイヤーUID割り当て
    scoreboard players set #mhdp_temp_uid MhdpCore 0
    execute as @a[sort=arbitrary] run function mhdp_core:phase/2_quest_wait/start_quest/setup/uid
    scoreboard players reset #mhdp_temp_uid

# プレイヤーの武器をオフハンドにセット
    execute as @a run function mhdp_core:phase/2_quest_wait/start_quest/setup/weapon

# プレイヤーの特殊装具をstickからcarrot_on_a_stickに変更(TO DO)
    # function ...

# クエスト独自処理実行
    function mhdp_core:phase/2_quest_wait/start_quest/quests/

# MhdpWeapons処理用タグ付与
# ムービー再生時は，ムービー再生終了時にそちらの処理で付与する
    execute unless data storage mh_dp:status GameStatus{Movie:1b} run tag @a add PlyQuest

# Phase変更
    execute unless data storage mh_dp:status GameStatus{Movie:1b} run data modify storage mh_dp:status GameStatus.Phase set value 3
    execute if data storage mh_dp:status GameStatus{Movie:1b} run data modify storage mh_dp:status GameStatus.Phase set value 6

say 出発