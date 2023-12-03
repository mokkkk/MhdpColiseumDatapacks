#> reus:manager/5_animation/land_down_r/
#
# 火竜 アニメーションのイベントハンドラ ダウン

# 効果音
    execute if score @s aj.reus.animation.land_down_r.local_anim_time matches 1 run playsound block.grass.step master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.land_down_r.local_anim_time matches 1 run particle block sand ~ ~0.1 ~ 1.5 0 1.5 0 10
    execute if score @s aj.reus.animation.land_down_r.local_anim_time matches 1..2 run playsound entity.ravager.attack master @a[distance=..48] ~ ~ ~ 1 0.7 0.4

# まばたき
    execute if entity @s[tag=StateIsStun] if score @s aj.reus.animation.land_down_r.local_anim_time matches 1 run function reus:manager/7_model/head_blink
    execute if score @s aj.reus.animation.land_down_r.local_anim_time matches 20 run function reus:manager/7_model/head_blink
    execute if entity @s[tag=!StateIsStun] if score @s aj.reus.animation.land_down_r.local_anim_time matches 34 run function reus:manager/7_model/head_blink_end

# 接地
    execute at @s if block ~ ~-0.1 ~ #asa_animator:no_collision at @s run function asa_animator:general/check_ground
    execute at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~

# スタン演出
    execute if entity @s[tag=StateIsStun] on passengers if entity @s[tag=LctPosHead] on origin at @s run particle crit ~ ~0.8 ~ 0.2 0.1 0.2 0.1 1

# 終了
    execute if score @s aj.reus.animation.land_down_r.local_anim_time matches 34.. run function reus:manager/5_animation/land_down_r/end