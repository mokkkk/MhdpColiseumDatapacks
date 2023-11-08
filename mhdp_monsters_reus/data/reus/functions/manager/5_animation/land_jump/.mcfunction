#> reus:manager/5_animation/land_jump/
#
# 火竜 アニメーションのイベントハンドラ 床ドン

# 移動

# 演出
    execute if score @s aj.reus.animation.land_jump.local_anim_time matches 1 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.land_jump.local_anim_time matches 15 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.land_jump.local_anim_time matches 15 run particle block sand ~ ~0.1 ~ 1 0 1 0 30
    execute if score @s aj.reus.animation.land_jump.local_anim_time matches 15 run playsound block.grass.step master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.land_jump.local_anim_time matches 55 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.land_jump.local_anim_time matches 62 run playsound block.grass.step master @a ~ ~ ~ 2 0.7

# 攻撃
    execute if score @s aj.reus.animation.land_jump.local_anim_time matches 33 run function reus:manager/5_animation/land_jump/damage
# 風圧
    execute if score @s aj.reus.animation.land_jump.local_anim_time matches 33 as @a[distance=..9] run function mhdp_core:player/damage/knockback/wind/1

# 接地
    execute at @s if block ~ ~-0.1 ~ #asa_animator:no_collision at @s run function asa_animator:general/check_ground
    execute at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~

# 状態変更
    execute if score @s aj.reus.animation.land_jump.local_anim_time matches 15 run tag @s add StateIsFlying
    execute if score @s aj.reus.animation.land_jump.local_anim_time matches 33 run tag @s remove StateIsFlying

# 終了
    execute if score @s aj.reus.animation.land_jump.local_anim_time matches 97.. run function reus:manager/5_animation/land_jump/end
