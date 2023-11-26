#> reus:manager/5_animation/land_anger/
#
# 火竜 アニメーションのイベントハンドラ 怒り開始

# 移動
    execute if score @s aj.reus.animation.land_anger.local_anim_time matches 1..10 at @s run function reus:manager/4_general/rotate

# 演出
    execute if score @s aj.reus.animation.land_anger.local_anim_time matches 65 run playsound entity.hoglin.step master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.land_anger.local_anim_time matches 2 run playsound entity.hoglin.angry master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.land_anger.local_anim_time matches 14..30 run playsound entity.ender_dragon.growl master @a[distance=..48] ~ ~ ~ 1 0.5 0.4
    execute if score @s aj.reus.animation.land_anger.local_anim_time matches 14..30 run playsound entity.ravager.attack master @a[distance=..48] ~ ~ ~ 1 0.7 0.4
    execute if score @s aj.reus.animation.land_anger.local_anim_time matches 14..45 on passengers if entity @s[tag=LctPosHead] on origin at @s run particle flash ~ ~ ~ 0 0 0 0 1

# 咆哮怯み
    execute if score @s aj.reus.animation.land_anger.local_anim_time matches 17 as @a[distance=..16] at @s run function mhdp_core:player/damage/knockback/voice/1

# 接地
    execute at @s if block ~ ~-0.1 ~ #asa_animator:no_collision at @s run function asa_animator:general/check_ground
    execute at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~
    
# 終了
    execute if score @s aj.reus.animation.land_anger.local_anim_time matches 69.. run function reus:manager/5_animation/land_anger/end
