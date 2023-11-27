#> reus:manager/5_animation/land_death/
#
# 火竜 アニメーションのイベントハンドラ 討伐

# 移動
    execute if score @s aj.reus.animation.land_death.local_anim_time matches 85..94 at @s run tp @s ^0.1 ^ ^0.2 ~ 0

# 効果音
    execute if score @s aj.reus.animation.land_death.local_anim_time matches 95 run playsound entity.hoglin.step master @a ~ ~ ~ 2 0.5
    execute if score @s aj.reus.animation.land_death.local_anim_time matches 95 run particle block sand ~ ~0.1 ~ 1.5 0 1.5 0 20
    execute if score @s aj.reus.animation.land_death.local_anim_time matches 45..50 run playsound entity.ravager.hurt master @a[distance=..48] ~ ~ ~ 1 0.5 0.3

# まばたき
    execute if score @s aj.reus.animation.land_death.local_anim_time matches 1 run function reus:manager/7_model/head_blink
    execute if score @s aj.reus.animation.land_death.local_anim_time matches 30 run function reus:manager/7_model/head_blink_end
    execute if score @s aj.reus.animation.land_death.local_anim_time matches 85 run function reus:manager/7_model/head_blink

# 接地
    execute at @s if block ~ ~-0.1 ~ #asa_animator:no_collision at @s run function asa_animator:general/check_ground
    execute at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~

# 終了
    execute if score @s aj.reus.animation.land_death.local_anim_time matches 139.. run function reus:manager/5_animation/land_death/end