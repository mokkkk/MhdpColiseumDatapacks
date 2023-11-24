# 突進

# ダメージ設定
    data modify storage mhdp_core:temp Temp.Damage set from storage mh_dp:monster_data AttackList[1][3]
    execute if entity @s[tag=StateIsAnger] run data modify storage mhdp_core:temp Temp.Damage.Damage set from storage mhdp_core:temp Temp.Damage.Anger

# ターゲット設定
    execute positioned ^ ^2 ^3 run tag @e[type=!#asa_animator:not_target,tag=!ReusHealth,tag=!Target,distance=0..4.5] add Target

# プレイヤーの位置確認
    execute at @s as @a[tag=Target] run function reus:manager/5_animation/land_dash/damage_to_right_player

# 攻撃処理
# 連続ヒット防止のため，プレイヤーのノックバック方向は左右にする
    execute as @a[tag=Target,tag=Right] positioned ^-10 ^ ^ run function reus:manager/5_animation/land_dash/damage_sub
    execute as @a[tag=Target,tag=!Right] positioned ^10 ^ ^ run function reus:manager/5_animation/land_dash/damage_sub
    execute as @e[type=!player,tag=Target] run function reus:manager/5_animation/land_dash/damage_sub
    tag @a[tag=Target,tag=Right] remove Right
    tag @e[tag=Target] remove Target
