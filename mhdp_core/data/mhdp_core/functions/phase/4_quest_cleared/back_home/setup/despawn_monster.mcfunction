#> mhdp_core:phase/4_quest_cleared/back_home/setup/despawn_monster
#
# Phase4_クエストクリア モンスター消去処理

# 青鳥竜
    execute if entity @s[tag=RanposuRoot] run function ranposu:manager/4_general/kill

# 火竜
    # execute if entity @s[tag=ReusRoot] run function asa_animator:reus/manager/4_general/kill

# 雷狼竜
    # execute if entity @s[tag=ZinogreRoot] run function asa_animator:zinogre/manager/4_general/kill
