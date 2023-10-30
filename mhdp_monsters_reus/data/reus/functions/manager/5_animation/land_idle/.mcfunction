#> reus:manager/5_animation/idle/
#
# 火竜 アニメーションのイベントハンドラ 待機

# 効果音
    execute if score @s aj.reus.animation.land_idle.local_anim_time matches 21 run playsound block.grass.step master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.land_idle.local_anim_time matches 35 run playsound entity.hoglin.step master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.land_idle.local_anim_time matches 35 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.land_idle.local_anim_time matches 70 run playsound block.grass.step master @a ~ ~ ~ 2 0.7

# まばたき
    execute if score @s aj.reus.animation.land_idle.local_anim_time matches 10 run function reus:manager/7_model/head_blink
    execute if score @s aj.reus.animation.land_idle.local_anim_time matches 12 run function reus:manager/7_model/head_blink_end
    execute if score @s aj.reus.animation.land_idle.local_anim_time matches 45 run function reus:manager/7_model/head_blink
    execute if score @s aj.reus.animation.land_idle.local_anim_time matches 47 run function reus:manager/7_model/head_blink_end

# 接地
    execute at @s if block ~ ~-0.1 ~ #asa_animator:no_collision at @s run function asa_animator:general/check_ground
    execute at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~
    
# 終了
    execute if score @s aj.reus.animation.land_idle.local_anim_time matches 87.. run tag @s add ChangeAnm
