# 嚙みつき
# 4（6 * 0.67）
# Guard：2（ガード可能）
# 属性なし・属性やられなし

# ダメージ設定
    data modify storage mhdp_core:temp Temp.Damage set from storage mh_dp:monster_data AttackList[0][0]
    execute if entity @s[tag=IsAnger] run data modify storage mhdp_core:temp Temp.Damage.Damage set from storage mhdp_core:temp Temp.Damage.Anger

# ターゲット設定
    execute positioned ^-1.6 ^1 ^5 run tag @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!RanposuHealth,tag=!Target,distance=0..3.5] add Target

# 攻撃処理
    execute as @e[tag=Target] run function ranposu:manager/5_animation/bite/damage_sub
    tag @e[tag=Target] remove Target

# 演出
    playsound entity.wither.break_block master @a ~ ~ ~ 1 1.5
