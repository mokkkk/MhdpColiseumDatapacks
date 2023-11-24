#> reus:manager/5_animation/land_move/
#
# 火竜 アニメーションのイベントハンドラ 突進

# 移動
    function reus:manager/4_general/rotate
    execute at @s run tp @s ^ ^ ^0.6 ~ 0

# 演出
    particle block sand ~ ~0.1 ~ 1 0 1 0 3
    execute if score @s aj.reus.animation.land_move.local_anim_time matches 5 run playsound entity.hoglin.step master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.land_move.local_anim_time matches 15 run playsound entity.hoglin.step master @a ~ ~ ~ 2 0.7

# 接地
    execute at @s if block ~ ~-0.1 ~ #asa_animator:no_collision at @s run function asa_animator:general/check_ground
    execute at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~

# ターゲットにある程度近づいた場合，強制的にアニメーション変更
    execute if entity @e[tag=ReusAttackTarget,distance=..6] run function reus:manager/5_animation/land_move/change

# 終了
    execute if score @s aj.reus.animation.land_move.local_anim_time matches 19.. run function reus:manager/5_animation/land_move/end
