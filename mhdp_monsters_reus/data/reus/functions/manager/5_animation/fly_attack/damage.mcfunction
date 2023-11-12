# 爪攻撃

# ダメージ設定
    data modify storage mhdp_core:temp Temp.Damage set from storage mh_dp:monster_data AttackList[1][6]
    execute if entity @s[tag=StateIsAnger] run data modify storage mhdp_core:temp Temp.Damage.Damage set from storage mhdp_core:temp Temp.Damage.Anger

# ターゲット設定
    execute positioned ^ ^-2 ^4 run tag @e[type=!#asa_animator:not_target,tag=!ReusHealth,tag=!Target,distance=0..3.5] add Target
    execute positioned ^ ^ ^4 run tag @e[type=!#asa_animator:not_target,tag=!ReusHealth,tag=!Target,distance=0..3.5] add Target
    execute positioned ^ ^2 ^4 run tag @e[type=!#asa_animator:not_target,tag=!ReusHealth,tag=!Target,distance=0..3.5] add Target

# 攻撃処理
    execute as @e[tag=Target] run function reus:manager/5_animation/fly_attack/damage_sub
    tag @e[tag=Target] remove Target
