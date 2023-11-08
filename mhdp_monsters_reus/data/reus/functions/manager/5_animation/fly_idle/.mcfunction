#> reus:manager/5_animation/fly_idle/
#
# 火竜 アニメーションのイベントハンドラ 待機

# 効果音
    execute if score @s aj.reus.animation.fly_idle.local_anim_time matches 8 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.fly_idle.local_anim_time matches 28 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7

# まばたき
    execute if score @s aj.reus.animation.fly_idle.local_anim_time matches 20 run function reus:manager/7_model/head_blink
    execute if score @s aj.reus.animation.fly_idle.local_anim_time matches 25 run function reus:manager/7_model/head_blink_end

# 接地
    execute at @s if block ~ ~-2.9 ~ #asa_animator:no_collision at @s run tp @s ~ ~-0.5 ~ ~ ~
    execute at @s unless block ~ ~-3 ~ #asa_animator:no_collision at @s run tp @s ~ ~0.5 ~ ~ ~
    
# 終了
    execute if score @s aj.reus.animation.fly_idle.local_anim_time matches 39.. run function reus:manager/5_animation/fly_idle/end