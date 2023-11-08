#> reus:manager/5_animation/land_bjb/
#
# 火竜 アニメーションのイベントハンドラ バックジャンプブレス

# 効果音
    execute if score @s aj.reus.animation.land_bjb.local_anim_time matches 1 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.land_bjb.local_anim_time matches 15 run particle block sand ~ ~0.1 ~ 1 0 1 0 30
    execute if score @s aj.reus.animation.land_bjb.local_anim_time matches 20 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7

# 移動
    execute if score @s aj.reus.animation.land_bjb.local_anim_time matches 15..20 at @s run tp @s ^ ^0.4 ^-0.8
    execute if score @s aj.reus.animation.land_bjb.local_anim_time matches 21..30 at @s run tp @s ^ ^0.2 ^-0.3

# 攻撃
    execute if score @s aj.reus.animation.land_bjb.local_anim_time matches 20 on passengers if entity @s[tag=LctPosHead] on origin at @s as @e[type=item_display,tag=ReusRoot] run function reus:manager/5_animation/land_bjb/shot
# 風圧：大
    execute if score @s aj.reus.animation.land_bjb.local_anim_time matches 20 as @a[distance=..7] run function mhdp_core:player/damage/knockback/wind/1

# 接地
    execute if score @s aj.reus.animation.land_bjb.local_anim_time matches 0..14 at @s if block ~ ~-0.1 ~ #asa_animator:no_collision at @s run function asa_animator:general/check_ground
    execute if score @s aj.reus.animation.land_bjb.local_anim_time matches 0..14 at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~

# 状態変更
    execute if score @s aj.reus.animation.land_bjb.local_anim_time matches 15 run tag @s add StateIsFlying

# 終了
    execute if score @s aj.reus.animation.land_bjb.local_anim_time matches 33.. run function reus:manager/5_animation/land_bjb/end
