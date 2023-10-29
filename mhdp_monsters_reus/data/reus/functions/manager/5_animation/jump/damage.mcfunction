# とびかかり
# Damage：10.0 
# Guard：3（大剣ガード可能）
# 属性なし・属性やられなし

# ダメージ設定
    data modify storage mhdp_core:temp Temp.Damage set from storage mh_dp:monster_data AttackList[0][4]
    execute if entity @s[tag=StateIsAnger] run data modify storage mhdp_core:temp Temp.Damage.Damage set from storage mhdp_core:temp Temp.Damage.Anger

# ターゲット設定
    execute positioned ^ ^2 ^ run tag @e[type=!#asa_animator:not_target,tag=!RanposuHealth,tag=!Target,distance=0..4.0] add Target

# 攻撃処理
    execute as @e[tag=Target] run function ranposu:manager/5_animation/jump/damage_sub
    tag @e[tag=Target] remove Target
