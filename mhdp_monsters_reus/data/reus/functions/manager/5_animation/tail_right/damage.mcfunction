# 尻尾なぎはらい
# Damage：6.0 
# Guard：2（ガード可能）
# 属性なし・属性やられなし

# ダメージ設定
    data modify storage mhdp_core:temp Temp.Damage set from storage mh_dp:monster_data AttackList[0][2]
    execute if entity @s[tag=StateIsAnger] run data modify storage mhdp_core:temp Temp.Damage.Damage set from storage mhdp_core:temp Temp.Damage.Anger

# ターゲット設定
    execute positioned ^ ^2 ^-3 run tag @e[type=!#asa_animator:not_target,tag=!RanposuHealth,tag=!Target,distance=0..4.5] add Target

# 攻撃処理
    execute as @e[tag=Target] run function ranposu:manager/5_animation/tail_right/damage_sub
    tag @e[tag=Target] remove Target
