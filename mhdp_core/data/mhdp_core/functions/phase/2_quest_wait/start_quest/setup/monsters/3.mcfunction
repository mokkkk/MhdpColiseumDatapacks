#> mhdp_core:phase/2_quest_wait/start_quest/setup/monsters/3
#
# Phase1_クエスト受注 クエスト開始処理 モンスター召喚 4匹目

# データ退避
    data modify storage mhdp_core:temp Temp set from storage mh_dp:status GameStatus.Quest.Monsters[3]

# ID決定
    scoreboard players set #mhdp_id_temp MhdpCore 4

# 読み込み
    function mhdp_core:phase/2_quest_wait/start_quest/setup/monsters/load

# 召喚
    execute if data storage mhdp_core:temp Temp{Condition:0} run function mhdp_core:phase/2_quest_wait/start_quest/setup/monsters/summon

# 終了
    data remove storage mhdp_core:temp Temp