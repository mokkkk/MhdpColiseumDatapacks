#> mhdp_core:phase/2_quest_wait/start_quest/setup/monsters/
#
# Phase1_クエスト受注 クエスト開始処理 モンスター召喚

# １匹目
    execute if data storage mh_dp:status GameStatus.Quest.Monsters[0] positioned -72 66 100 run function mhdp_core:phase/2_quest_wait/start_quest/setup/monsters/0

# ２匹目
    execute if data storage mh_dp:status GameStatus.Quest.Monsters[1] positioned -94 66 120 run function mhdp_core:phase/2_quest_wait/start_quest/setup/monsters/1

# ３匹目
    execute if data storage mh_dp:status GameStatus.Quest.Monsters[2] positioned -72 66 100 run function mhdp_core:phase/2_quest_wait/start_quest/setup/monsters/2

# ４匹目
    execute if data storage mh_dp:status GameStatus.Quest.Monsters[3] positioned -94 66 120 run function mhdp_core:phase/2_quest_wait/start_quest/setup/monsters/3

# ５匹目
    execute if data storage mh_dp:status GameStatus.Quest.Monsters[4] positioned -72 66 100 run function mhdp_core:phase/2_quest_wait/start_quest/setup/monsters/4
