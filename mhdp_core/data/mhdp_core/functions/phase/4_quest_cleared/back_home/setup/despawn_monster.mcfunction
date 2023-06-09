#> mhdp_core:phase/4_quest_cleared/back_home/setup/despawn_monster
#
# Phase4_クエストクリア モンスター消去処理

# 火竜
    execute if entity @s[tag=ReusRoot] run function asa_animator:reus/manager/4_general/kill

# execute if entity @s[tag=DiablosRoot] run function asa_animator:diablos/manager/despawn

# 雷狼竜
    execute if entity @s[tag=ZinogreRoot] run function asa_animator:zinogre/manager/4_general/kill

execute if entity @s[tag=ReiaRoot] run function asa_animator:reia/manager/despawn

execute if entity @s[tag=NargaRoot] run function asa_animator:narga/manager/despawn

execute if entity @s[tag=DynoRoot] run function asa_animator:dyno/manager/despawn

execute if entity @s[tag=BrachyRoot] run function asa_animator:brachy/manager/despawn
execute if entity @s[tag=BrachyRRoot] run function asa_animator:brachyr/manager/despawn

execute if entity @s[tag=TigaRoot] run function asa_animator:tiga/manager/despawn

execute if entity @s[tag=KushalaRoot] run function asa_animator:kushala/manager/despawn

execute if entity @s[tag=TeoRoot] run function asa_animator:teo/manager/despawn

execute if entity @s[tag=NazutiRoot] run function asa_animator:nazuti/manager/despawn

execute if entity @s[tag=RukoRoot] run function asa_animator:ruko/manager/despawn