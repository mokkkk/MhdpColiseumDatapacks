#> reus:manager/5_animation/land_chargebite/
#
# 火竜 アニメーションのイベントハンドラ チャージ噛みつき

# 移動
    execute if score @s aj.reus.animation.land_chargebite.local_anim_time matches 1..5 at @s run tp @s ^ ^ ^-0.2 ~ 0
    execute if score @s aj.reus.animation.land_chargebite.local_anim_time matches 1..12 if entity @e[tag=ReusAttackTarget,distance=..6] at @s run tp @s ^ ^ ^-0.4
    execute if score @s aj.reus.animation.land_chargebite.local_anim_time matches 1..42 unless entity @e[tag=ReusAttackTarget,distance=..2] run function reus:manager/4_general/rotate
    execute if score @s aj.reus.animation.land_chargebite.local_anim_time matches 42..56 unless entity @e[tag=ReusAttackTarget,distance=..6] at @s run tp @s ^ ^ ^0.7

# 演出
    execute if score @s aj.reus.animation.land_chargebite.local_anim_time matches 1 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.land_chargebite.local_anim_time matches 10 run playsound item.firecharge.use master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.land_chargebite.local_anim_time matches 10..56 on passengers if entity @s[tag=LctPosHead] on origin at @s run particle flame ^ ^ ^ 0.1 0.1 0.1 0.1 5
    execute if score @s aj.reus.animation.land_chargebite.local_anim_time matches 42..56 on passengers if entity @s[tag=LctPosHead] on origin at @s run particle lava ~ ~ ~ 0.1 0.1 0.1 0.05 3

# 攻撃
    execute if score @s aj.reus.animation.land_chargebite.local_anim_time matches 55 run playsound entity.wither.break_block master @a ~ ~ ~ 1 1.2
    execute if score @s aj.reus.animation.land_chargebite.local_anim_time matches 56 run function reus:manager/5_animation/land_chargebite/damage

# 接地
    execute at @s if block ~ ~-0.1 ~ #asa_animator:no_collision at @s run function asa_animator:general/check_ground
    execute at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~
    
# 終了
    execute if score @s aj.reus.animation.land_chargebite.local_anim_time matches 95.. run function reus:manager/5_animation/land_chargebite/end
