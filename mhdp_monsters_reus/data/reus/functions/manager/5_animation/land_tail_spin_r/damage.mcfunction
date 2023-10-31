# 尻尾回転

# ダメージ設定
    data modify storage mhdp_core:temp Temp.Damage set from storage mh_dp:monster_data AttackList[1][1]
    execute if entity @s[tag=StateIsAnger] run data modify storage mhdp_core:temp Temp.Damage.Damage set from storage mhdp_core:temp Temp.Damage.Anger

# ターゲット設定
    execute on passengers if entity @s[tag=LctPosTail2] on origin at @s positioned ^ ^ ^-1 run tag @e[type=!#asa_animator:not_target,tag=!ReusHealth,tag=!Target,distance=0..2] add Target
    execute if entity @s[tag=!StateBreakTail] on passengers if entity @s[tag=LctPosTail3] on origin at @s positioned ^ ^ ^-2 run tag @e[type=!#asa_animator:not_target,tag=!ReusHealth,tag=!Target,distance=0..3] add Target
    execute on passengers if entity @s[tag=LctPosTail2] on origin at @s positioned ^ ^-2 ^-1 run tag @e[type=!#asa_animator:not_target,tag=!ReusHealth,tag=!Target,distance=0..2] add Target
    execute if entity @s[tag=!StateBreakTail] on passengers if entity @s[tag=LctPosTail3] on origin at @s positioned ^ ^-2 ^-2 run tag @e[type=!#asa_animator:not_target,tag=!ReusHealth,tag=!Target,distance=0..3] add Target

# 攻撃処理
    execute as @e[tag=Target] run function reus:manager/5_animation/land_tail_spin_r/damage_sub
    tag @e[tag=Target] remove Target

# 演出
    execute if entity @s[tag=StateBreakTail] on passengers if entity @s[tag=LctPosTail2] on origin at @s run particle cloud ~ ~ ~ 0.2 0.2 0.2 0.1 1
    execute if entity @s[tag=!StateBreakTail] on passengers if entity @s[tag=LctPosTail3] on origin at @s run particle cloud ~ ~ ~ 0.2 0.2 0.2 0.1 1
