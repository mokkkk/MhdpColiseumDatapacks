#> mhdp_core:phase/4_quest_cleared/back_home/setup/disable_datapack/
#
# Phase4_クエストクリア 帰還処理 データパック無効化

# 1匹目
    data remove storage mhdp_core:temp Temp
    execute if data storage mh_dp:status GameStatus.Quest.Monsters[0] run data modify storage mhdp_core:temp Temp set from storage mh_dp:status GameStatus.Quest.Monsters[0]
    execute if data storage mhdp_core:temp Temp run function mhdp_core:phase/4_quest_cleared/back_home/setup/disable_datapack/disable
# 2匹目
    data remove storage mhdp_core:temp Temp
    execute if data storage mh_dp:status GameStatus.Quest.Monsters[1] run data modify storage mhdp_core:temp Temp set from storage mh_dp:status GameStatus.Quest.Monsters[1]
    execute if data storage mhdp_core:temp Temp run function mhdp_core:phase/4_quest_cleared/back_home/setup/disable_datapack/disable
# 3匹目
    data remove storage mhdp_core:temp Temp
    execute if data storage mh_dp:status GameStatus.Quest.Monsters[2] run data modify storage mhdp_core:temp Temp set from storage mh_dp:status GameStatus.Quest.Monsters[2]
    execute if data storage mhdp_core:temp Temp run function mhdp_core:phase/4_quest_cleared/back_home/setup/disable_datapack/disable
# 4匹目
    data remove storage mhdp_core:temp Temp
    execute if data storage mh_dp:status GameStatus.Quest.Monsters[3] run data modify storage mhdp_core:temp Temp set from storage mh_dp:status GameStatus.Quest.Monsters[3]
    execute if data storage mhdp_core:temp Temp run function mhdp_core:phase/4_quest_cleared/back_home/setup/disable_datapack/disable
# 5匹目
    data remove storage mhdp_core:temp Temp
    execute if data storage mh_dp:status GameStatus.Quest.Monsters[4] run data modify storage mhdp_core:temp Temp set from storage mh_dp:status GameStatus.Quest.Monsters[4]
    execute if data storage mhdp_core:temp Temp run function mhdp_core:phase/4_quest_cleared/back_home/setup/disable_datapack/disable

# 終了
    data remove storage mhdp_core:temp Temp
