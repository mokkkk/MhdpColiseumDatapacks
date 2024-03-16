# 尻尾なぎ払い

# ダメージ設定
    data modify storage mhdp_core:temp Temp.Damage set from storage mh_dp:monster_data AttackList[1][1]
    execute if entity @s[tag=StateIsAnger] run data modify storage mhdp_core:temp Temp.Damage.Damage set from storage mhdp_core:temp Temp.Damage.Anger

# ターゲット設定
    execute rotated ~-30 ~ positioned ^ ^-2 ^5 run tag @e[type=!#asa_animator:not_target,tag=!ReusHealth,tag=!Target,distance=0..3.5] add Target
    execute rotated ~ ~ positioned ^ ^-2 ^5 run tag @e[type=!#asa_animator:not_target,tag=!ReusHealth,tag=!Target,distance=0..3.5] add Target
    execute rotated ~30 ~ positioned ^ ^-2 ^5 run tag @e[type=!#asa_animator:not_target,tag=!ReusHealth,tag=!Target,distance=0..3.5] add Target

# 攻撃処理
    execute as @e[tag=Target] run function reus:manager/5_animation/fly_tail/damage_sub
    tag @e[tag=Target] remove Target

# 演出
    playsound entity.player.attack.sweep master @a ~ ~ ~ 2 0.7