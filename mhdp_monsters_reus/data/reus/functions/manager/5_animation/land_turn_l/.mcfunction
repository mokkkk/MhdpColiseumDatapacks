#> reus:manager/5_animation/land_turn_l/
#
# 火竜 アニメーションのイベントハンドラ 軸合わせ

# 移動
    execute if score @s aj.reus.animation.land_turn_l.local_anim_time matches 3.. run function reus:manager/4_general/rotate

# 効果音
    execute if score @s aj.reus.animation.land_turn_l.local_anim_time matches 8 run playsound entity.hoglin.step master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.land_turn_l.local_anim_time matches 16 run playsound entity.hoglin.step master @a ~ ~ ~ 2 0.7

# まばたき
    execute if score @s aj.reus.animation.land_turn_l.local_anim_time matches 10 run function reus:manager/7_model/head_blink
    execute if score @s aj.reus.animation.land_turn_l.local_anim_time matches 12 run function reus:manager/7_model/head_blink_end

# 接地
    execute at @s if block ~ ~-0.1 ~ #asa_animator:no_collision at @s run function asa_animator:general/check_ground
    execute at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~
    
# 終了
    execute if score @s aj.reus.animation.land_turn_l.local_anim_time matches 24.. run function reus:manager/5_animation/land_turn_l/end