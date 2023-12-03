# なぎ払い火炎放射エフェクト

scoreboard players remove @s AsaMatrix 1
particle flame ~ ~ ~ 0.5 0.5 0.5 0.05 6 force
execute if entity @e[tag=ReusTarget,tag=!Target,distance=0..2] run tag @e[tag=ReusTarget,tag=!Target,distance=0..2] add Target
execute if score @s AsaMatrix matches 1.. unless block ^ ^ ^1 #asa_animator:no_collision run scoreboard players set @s AsaMatrix 0
execute if score @s AsaMatrix matches 1.. positioned ^ ^ ^1 run function reus:manager/5_animation/fly_flame_sweep/effect/loop
execute unless block ^ ^ ^1.5 #asa_animator:no_collision run tp @s ^ ^ ^1