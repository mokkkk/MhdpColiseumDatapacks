# 嚙みつき

# ダメージ設定
    data modify storage mhdp_core:temp Temp.Damage set from storage mh_dp:monster_data AttackList[1][4]
    execute if entity @s[tag=StateIsAnger] run data modify storage mhdp_core:temp Temp.Damage.Damage set from storage mhdp_core:temp Temp.Damage.Anger

# ターゲット設定
    execute positioned ^ ^1 ^7.5 run tag @e[type=!#asa_animator:not_target,tag=!ReusHealth,tag=!Target,distance=0..5.2] add Target

# 攻撃処理
    execute as @e[tag=Target] run function reus:manager/5_animation/land_bite_r/damage_sub
    tag @e[tag=Target] remove Target

# 演出
    execute positioned ^ ^1 ^7.5 run function reus:manager/5_animation/land_chargebite/damage_effect
