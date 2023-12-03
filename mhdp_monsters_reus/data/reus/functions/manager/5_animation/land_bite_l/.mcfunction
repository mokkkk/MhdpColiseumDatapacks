#> reus:manager/5_animation/land_bite_l/
#
# 火竜 アニメーションのイベントハンドラ 噛みつき

# 移動
    execute if score @s aj.reus.animation.land_bite_l.local_anim_time matches 1..5 at @s run tp @s ^ ^ ^-0.1 ~ 0
    execute if score @s aj.reus.animation.land_bite_l.local_anim_time matches 17..24 at @s positioned ^ ^ ^4 unless entity @e[tag=ReusAttackTarget,distance=..3] at @s run tp @s ^ ^ ^0.5 ~ 0
    execute if score @s aj.reus.animation.land_bite_l.local_anim_time matches 25..30 at @s run tp @s ^ ^ ^0.1 ~ 0
    execute if score @s aj.reus.animation.land_bite_l.local_anim_time matches 34..38 at @s run tp @s ^ ^ ^0.2 ~ 0
    execute if score @s aj.reus.animation.land_bite_l.local_anim_time matches 50..57 at @s positioned ^ ^ ^4 unless entity @e[tag=ReusAttackTarget,distance=..3] at @s run tp @s ^ ^ ^0.5 ~ 0
    execute if score @s aj.reus.animation.land_bite_l.local_anim_time matches 58..63 at @s run tp @s ^ ^ ^0.1 ~ 0

# 演出
    execute if score @s aj.reus.animation.land_bite_l.local_anim_time matches 1 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.land_bite_l.local_anim_time matches 34 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7

# 攻撃
    execute if score @s aj.reus.animation.land_bite_l.local_anim_time matches 24 rotated ~10 ~ run function reus:manager/5_animation/land_bite_r/damage
    execute if score @s aj.reus.animation.land_bite_l.local_anim_time matches 57 rotated ~-10 ~ run function reus:manager/5_animation/land_bite_r/damage

# 接地
    execute at @s if block ~ ~-0.1 ~ #asa_animator:no_collision at @s run function asa_animator:general/check_ground
    execute at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~
    
# 終了
    execute if score @s aj.reus.animation.land_bite_l.local_anim_time matches 104.. run function reus:manager/5_animation/land_bite_l/end
