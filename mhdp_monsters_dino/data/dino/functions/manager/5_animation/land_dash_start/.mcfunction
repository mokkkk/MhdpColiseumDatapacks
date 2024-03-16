#> reus:manager/5_animation/land_dash_start/
#
# 火竜 アニメーションのイベントハンドラ 突進・開始

# 移動
    execute if score @s aj.reus.animation.land_dash_start.local_anim_time matches 14.. run tp @s ^ ^ ^0.5 ~ 0

# 演出
    execute if score @s aj.reus.animation.land_dash_start.local_anim_time matches 1 run playsound block.grass.step master @a ~ ~ ~ 2 0.7

# 接地
    execute at @s if block ~ ~-0.1 ~ #asa_animator:no_collision at @s run function asa_animator:general/check_ground
    execute at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~

# 終了
    execute if score @s aj.reus.animation.land_dash_start.local_anim_time matches 19.. run function reus:manager/5_animation/land_dash_start/end
