#> reus:manager/5_animation/fly_anger/
#
# 火竜 アニメーションのイベントハンドラ 空中怒り

# 効果音
    execute if score @s aj.reus.animation.fly_anger.local_anim_time matches 5 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.fly_anger.local_anim_time matches 18 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.fly_anger.local_anim_time matches 55 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.fly_anger.local_anim_time matches 2 run playsound entity.hoglin.angry master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.fly_anger.local_anim_time matches 17..33 run playsound entity.ender_dragon.growl master @a[distance=..48] ~ ~ ~ 1 0.5 0.4
    execute if score @s aj.reus.animation.fly_anger.local_anim_time matches 17..33 run playsound entity.ravager.attack master @a[distance=..48] ~ ~ ~ 1 0.7 0.4
    execute if score @s aj.reus.animation.fly_anger.local_anim_time matches 17..50 on passengers if entity @s[tag=LctPosHead] on origin at @s run particle flash ~ ~ ~ 0 0 0 0 1

# 咆哮怯み
    execute if score @s aj.reus.animation.fly_anger.local_anim_time matches 17 as @a[distance=..24] at @s run function mhdp_core:player/damage/knockback/voice/1

# 接地
    execute at @s if block ~ ~-2.4 ~ #asa_animator:no_collision at @s run tp @s ~ ~-0.2 ~ ~ ~
    execute at @s unless block ~ ~-2.5 ~ #asa_animator:no_collision at @s run tp @s ~ ~0.2 ~ ~ ~

# 終了
    execute if score @s aj.reus.animation.fly_anger.local_anim_time matches 66.. run function reus:manager/5_animation/fly_anger/end
