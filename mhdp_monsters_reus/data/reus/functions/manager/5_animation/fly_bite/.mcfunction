#> reus:manager/5_animation/fly_bite/
#
# 火竜 アニメーションのイベントハンドラ 飛行噛みつき

# 効果音
    execute if score @s aj.reus.animation.fly_bite.local_anim_time matches 4 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.fly_bite.local_anim_time matches 14 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.fly_bite.local_anim_time matches 22 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.5
    execute if score @s aj.reus.animation.fly_bite.local_anim_time matches 34 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.fly_bite.local_anim_time matches 28 run playsound entity.wither.break_block master @a ~ ~ ~ 1 1.5

# 移動
    execute if score @s aj.reus.animation.fly_bite.local_anim_time matches 1..7 unless entity @e[tag=ReusAttackTarget,distance=..2] run function reus:manager/4_general/rotate
    execute if score @s aj.reus.animation.fly_bite.local_anim_time matches 22..34 run tp @s ^ ^ ^0.8
    execute if score @s aj.reus.animation.fly_bite.local_anim_time matches 35..42 run tp @s ^ ^ ^0.3

# 風圧：小
    execute if score @s aj.reus.animation.fly_bite.local_anim_time matches 22 as @a[distance=..7] run function mhdp_core:player/damage/knockback/wind/0
# 攻撃
    execute if score @s aj.reus.animation.fly_bite.local_anim_time matches 26..30 run function reus:manager/5_animation/fly_bite/damage

# 接地
    execute if score @s aj.reus.animation.fly_bite.local_anim_time matches 1..21 at @s if block ~ ~-1.5 ~ #asa_animator:no_collision at @s run tp @s ~ ~-0.2 ~ ~ ~
    execute if score @s aj.reus.animation.fly_bite.local_anim_time matches 1..21 at @s unless block ~ ~-1.6 ~ #asa_animator:no_collision at @s run tp @s ~ ~0.2 ~ ~ ~
    execute if score @s aj.reus.animation.fly_bite.local_anim_time matches 22..42 at @s if block ~ ~-0.8 ~ #asa_animator:no_collision at @s run tp @s ~ ~-0.2 ~ ~ ~
    execute if score @s aj.reus.animation.fly_bite.local_anim_time matches 22..42 at @s unless block ~ ~-0.9 ~ #asa_animator:no_collision at @s run tp @s ~ ~0.2 ~ ~ ~
    execute if score @s aj.reus.animation.fly_bite.local_anim_time matches 43.. at @s if block ~ ~-2 ~ #asa_animator:no_collision at @s run tp @s ~ ~-0.2 ~ ~ ~
    execute if score @s aj.reus.animation.fly_bite.local_anim_time matches 43.. at @s unless block ~ ~-2.1 ~ #asa_animator:no_collision at @s run tp @s ~ ~0.2 ~ ~ ~

# 終了
    execute if score @s aj.reus.animation.fly_bite.local_anim_time matches 52.. run function reus:manager/5_animation/fly_bite/end
