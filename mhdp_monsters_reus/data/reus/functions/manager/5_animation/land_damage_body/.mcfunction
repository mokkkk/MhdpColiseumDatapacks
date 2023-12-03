#> reus:manager/5_animation/land_damage_body/
#
# 火竜 アニメーションのイベントハンドラ 怯み・胴体

# 移動
    execute if score @s aj.reus.animation.land_damage_body.local_anim_time matches 1..5 at @s run tp @s ^ ^ ^-0.5 ~ 0
    execute if score @s aj.reus.animation.land_damage_body.local_anim_time matches 6..10 at @s run tp @s ^ ^ ^-0.3 ~ 0
    execute if score @s aj.reus.animation.land_damage_body.local_anim_time matches 11..15 at @s run tp @s ^ ^ ^-0.1 ~ 0

# 効果音
    execute if score @s aj.reus.animation.land_damage_body.local_anim_time matches 12 run playsound entity.hoglin.step master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.land_damage_body.local_anim_time matches 19 run playsound entity.hoglin.step master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.land_damage_body.local_anim_time matches 59 run playsound entity.hoglin.step master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.land_damage_body.local_anim_time matches 1..3 run playsound entity.ravager.hurt master @a[distance=..48] ~ ~ ~ 1 0.7 0.4
    execute if score @s aj.reus.animation.land_damage_body.local_anim_time matches 33..38 run playsound entity.ravager.attack master @a[distance=..48] ~ ~ ~ 1 0.7 0.4

# まばたき
    execute if score @s aj.reus.animation.land_damage_body.local_anim_time matches 1 run function reus:manager/7_model/head_blink
    execute if score @s aj.reus.animation.land_damage_body.local_anim_time matches 35 run function reus:manager/7_model/head_blink_end

# 接地
    execute at @s if block ~ ~-0.1 ~ #asa_animator:no_collision at @s run function asa_animator:general/check_ground
    execute at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~
    
# 終了
    execute if score @s aj.reus.animation.land_damage_body.local_anim_time matches 59.. run function reus:manager/5_animation/land_damage_body/end