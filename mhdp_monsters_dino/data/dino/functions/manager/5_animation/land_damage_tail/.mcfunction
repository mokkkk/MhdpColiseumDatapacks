#> reus:manager/5_animation/land_damage_tail/
#
# 火竜 アニメーションのイベントハンドラ 怯み・尻尾

# 移動
    execute if score @s aj.reus.animation.land_damage_tail.local_anim_time matches 1..15 at @s run tp @s ^ ^ ^0.8 ~5 0
    execute if score @s aj.reus.animation.land_damage_tail.local_anim_time matches 16..25 at @s run tp @s ^0.1 ^ ^0.4 ~3 0
    execute if score @s aj.reus.animation.land_damage_tail.local_anim_time matches 26..35 at @s run tp @s ^0.1 ^ ^0.05 ~3 0
    execute if score @s aj.reus.animation.land_damage_tail.local_anim_time matches 61..75 at @s run tp @s ^ ^ ^-0.05 ~5 0
# 効果音
    execute if score @s aj.reus.animation.land_damage_tail.local_anim_time matches 8 run playsound entity.hoglin.step master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.land_damage_tail.local_anim_time matches 15 run playsound entity.hoglin.step master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.land_damage_tail.local_anim_time matches 1..5 run playsound entity.ravager.hurt master @a[distance=..48] ~ ~ ~ 1 0.7 0.4
    execute if score @s aj.reus.animation.land_damage_tail.local_anim_time matches 15..24 run playsound block.grass.step master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.land_damage_tail.local_anim_time matches 15..24 run particle block sand ~ ~0.1 ~ 1.5 0 1.5 0 5
    execute if score @s aj.reus.animation.land_damage_tail.local_anim_time matches 40..42 run playsound block.grass.step master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.land_damage_tail.local_anim_time matches 61 run playsound block.grass.step master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.land_damage_tail.local_anim_time matches 90..95 run playsound entity.ravager.attack master @a[distance=..48] ~ ~ ~ 1 0.7 0.4

# まばたき
    execute if score @s aj.reus.animation.land_damage_tail.local_anim_time matches 1 run function reus:manager/7_model/head_blink
    execute if score @s aj.reus.animation.land_damage_tail.local_anim_time matches 47 run function reus:manager/7_model/head_blink_end

# 接地
    execute at @s if block ~ ~-0.1 ~ #asa_animator:no_collision at @s run function asa_animator:general/check_ground
    execute at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~
    
# 終了
    execute if score @s aj.reus.animation.land_damage_tail.local_anim_time matches 116.. run function reus:manager/5_animation/land_damage_tail/end
