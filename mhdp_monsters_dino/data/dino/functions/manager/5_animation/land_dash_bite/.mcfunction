#> reus:manager/5_animation/land_dash_bite/
#
# 火竜 アニメーションのイベントハンドラ 突進・停止

# 移動
    execute if score @s aj.reus.animation.land_dash_bite.local_anim_time matches 1..5 at @s run tp @s ^ ^ ^0.4 ~ 0
    execute if score @s aj.reus.animation.land_dash_bite.local_anim_time matches 18..26 at @s run tp @s ^ ^ ^0.4 ~ 0

# 演出
    execute if score @s aj.reus.animation.land_dash_bite.local_anim_time matches 1 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.land_dash_bite.local_anim_time matches 18 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.land_dash_bite.local_anim_time matches 40 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.land_dash_bite.local_anim_time matches 5 run particle block sand ~ ~0.1 ~ 1 0 1 0 5
    execute if score @s aj.reus.animation.land_dash_bite.local_anim_time matches 25 run particle block sand ~ ~0.1 ~ 1 0 1 0 10

# 攻撃
    execute if score @s aj.reus.animation.land_dash_bite.local_anim_time matches 26 rotated ~10 ~ run function reus:manager/5_animation/land_dash_bite/damage

# 接地
    execute at @s if block ~ ~-0.1 ~ #asa_animator:no_collision at @s run function asa_animator:general/check_ground
    execute at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~
    
# 終了
    execute if score @s aj.reus.animation.land_dash_bite.local_anim_time matches 67.. run function reus:manager/5_animation/land_dash_bite/end
