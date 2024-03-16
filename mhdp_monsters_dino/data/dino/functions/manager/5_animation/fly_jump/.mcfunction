#> reus:manager/5_animation/fly_jump/
#
# 火竜 アニメーションのイベントハンドラ 強襲

# 効果音
    execute if score @s aj.reus.animation.fly_jump.local_anim_time matches 4 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.fly_jump.local_anim_time matches 15 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.fly_jump.local_anim_time matches 74 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.fly_jump.local_anim_time matches 81 run playsound block.grass.step master @a ~ ~ ~ 2 0.7

# 移動
    execute if score @s aj.reus.animation.fly_jump.local_anim_time matches 1..30 run function reus:manager/4_general/rotate
    execute if score @s aj.reus.animation.fly_jump.local_anim_time matches 1..10 run tp @s ^ ^0.5 ^-0.2
    execute if score @s aj.reus.animation.fly_jump.local_anim_time matches 11..20 run tp @s ^ ^0.2 ^-0.1
    execute if score @s aj.reus.animation.fly_jump.local_anim_time matches 21..25 run tp @s ^ ^0.1 ^
    execute if score @s aj.reus.animation.fly_jump.local_anim_time matches 30 facing entity @e[tag=ReusAttackTarget] feet rotated ~ 0 run function reus:manager/5_animation/fly_jump/pos/set_pos_0
    execute if score @s aj.reus.animation.fly_jump.local_anim_time matches 35..50 at @s run function reus:manager/5_animation/fly_jump/pos/offset

# 攻撃
    execute if score @s aj.reus.animation.fly_jump.local_anim_time matches 50 run function reus:manager/5_animation/fly_jump/damage
# 風圧：大
    execute if score @s aj.reus.animation.fly_jump.local_anim_time matches 50 as @a[distance=..9] run function mhdp_core:player/damage/knockback/wind/1

# 接地
    execute if score @s aj.reus.animation.fly_jump.local_anim_time matches 51.. at @s if block ~ ~-0.1 ~ #asa_animator:no_collision at @s run function asa_animator:general/check_ground
    execute if score @s aj.reus.animation.fly_jump.local_anim_time matches 51.. at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~

# 状態変更
    execute if score @s aj.reus.animation.fly_jump.local_anim_time matches 50 run tag @s remove StateIsFlying

# 終了
    execute if score @s aj.reus.animation.fly_jump.local_anim_time matches 114.. run function reus:manager/5_animation/fly_jump/end
