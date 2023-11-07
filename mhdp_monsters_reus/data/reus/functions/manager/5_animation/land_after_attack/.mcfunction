#> reus:manager/5_animation/land_after_attack/
#
# 火竜 アニメーションのイベントハンドラ 後隙

# 効果音
    execute if score @s aj.reus.animation.land_after_attack.local_anim_time matches 1 run playsound block.grass.step master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.land_after_attack.local_anim_time matches 23 run playsound entity.hoglin.step master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.land_after_attack.local_anim_time matches 22..26 run playsound entity.ravager.attack master @a[distance=..48] ~ ~ ~ 1 0.7 0.4

# まばたき
    execute if score @s aj.reus.animation.land_after_attack.local_anim_time matches 35 run function reus:manager/7_model/head_blink
    execute if score @s aj.reus.animation.land_after_attack.local_anim_time matches 40 run function reus:manager/7_model/head_blink_end

# 接地
    execute at @s if block ~ ~-0.1 ~ #asa_animator:no_collision at @s run function asa_animator:general/check_ground
    execute at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~
    
# 終了
    execute if score @s aj.reus.animation.land_after_attack.local_anim_time matches 56.. run tag @s add ChangeAnm
