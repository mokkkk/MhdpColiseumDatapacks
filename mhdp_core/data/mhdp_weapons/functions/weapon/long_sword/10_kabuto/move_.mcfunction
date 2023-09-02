execute as @e[type=slime,tag=MonsterParts,distance=..3] run tag @s add Targets
execute if block ~ ~-1 ~ #asa_animator:no_collision positioned ~ ~-1 ~ run function mhdp_weapons:weapon/long_sword/10_kabuto/move_
execute unless block ~ ~-1 ~ #asa_animator:no_collision run tp @s ~ ~ ~