#> reus:manager/5_animation/land_breath/shot_main
#
# 火竜 ブレス処理

# 移動
    execute at @s run function reus:manager/5_animation/land_breath/shot_move
    execute at @s run function reus:manager/5_animation/land_breath/shot_move

# スコア増加
    scoreboard players add @s AsaMatrix 1
    execute positioned ~ ~1.4 ~ unless block ^ ^ ^1 #asa_animator:no_collision run scoreboard players set @s AsaMatrix 30
    execute if entity @s[scores={AsaMatrix=30..}] positioned ~ ~1.4 ~ run function reus:manager/5_animation/land_breath/damage
