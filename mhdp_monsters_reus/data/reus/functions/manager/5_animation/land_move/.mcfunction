#> reus:manager/5_animation/land_dash/
#
# 火竜 アニメーションのイベントハンドラ 突進

# 移動
    tp @s ^ ^ ^0.8 ~ 0

# 演出
    particle block sand ~ ~0.1 ~ 1 0 1 0 3
    execute if score @s aj.reus.animation.land_dash.local_anim_time matches 5 run playsound entity.hoglin.step master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.land_dash.local_anim_time matches 15 run playsound entity.hoglin.step master @a ~ ~ ~ 2 0.7

# 攻撃
    function reus:manager/5_animation/land_dash/damage

# 接地
    execute at @s if block ~ ~-0.1 ~ #asa_animator:no_collision at @s run function asa_animator:general/check_ground
    execute at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~
    
# 終了
    execute if score @s aj.reus.animation.land_dash.local_anim_time matches 19.. run function reus:manager/5_animation/land_dash/end
