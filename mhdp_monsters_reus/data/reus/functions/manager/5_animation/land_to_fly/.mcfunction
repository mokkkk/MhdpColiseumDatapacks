#> reus:manager/5_animation/land_to_fly/
#
# 火竜 アニメーションのイベントハンドラ バックジャンプブレス

# 効果音
    execute if score @s aj.reus.animation.land_to_fly.local_anim_time matches 1 run playsound block.grass.step master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.land_to_fly.local_anim_time matches 5 run particle block sand ~ ~0.1 ~ 1 0 1 0 30
    execute if score @s aj.reus.animation.land_to_fly.local_anim_time matches 10 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7

# 移動
    execute if score @s aj.reus.animation.land_to_fly.local_anim_time matches 5..10 at @s run tp @s ^ ^0.4 ^0.2
    execute if score @s aj.reus.animation.land_to_fly.local_anim_time matches 11..20 at @s run tp @s ^ ^0.2 ^0.05

# 風圧：大
    execute if score @s aj.reus.animation.land_to_fly.local_anim_time matches 5 as @a[distance=..7] run function mhdp_core:player/damage/knockback/wind/1

# 接地
    execute if score @s aj.reus.animation.land_to_fly.local_anim_time matches 0..4 at @s if block ~ ~-0.1 ~ #asa_animator:no_collision at @s run function asa_animator:general/check_ground
    execute if score @s aj.reus.animation.land_to_fly.local_anim_time matches 0..4 at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~

# 状態変更
    execute if score @s aj.reus.animation.land_to_fly.local_anim_time matches 5 run tag @s add StateIsFlying

# 終了
    execute if score @s aj.reus.animation.land_to_fly.local_anim_time matches 21.. run function reus:manager/5_animation/land_to_fly/end
