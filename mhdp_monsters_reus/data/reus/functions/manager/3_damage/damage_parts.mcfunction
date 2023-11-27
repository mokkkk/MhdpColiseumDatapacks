#> reus:manager/3_damage/damage_parts
#
# 火竜 ダメージ処理 怯み・怒り適用

# 部位怯み
    execute if entity @s[tag=StateIsNotDown] if score #mhdp_reus_head_damage AsaMatrix matches ..0 run function reus:manager/6_damage_animation/0_animation/damage_head
    execute if entity @s[tag=StateIsNotDown] if score #mhdp_reus_body_damage AsaMatrix matches ..0 run function reus:manager/6_damage_animation/0_animation/damage_body
    execute if entity @s[tag=StateIsNotDown] if score #mhdp_reus_tail_damage AsaMatrix matches ..0 run function reus:manager/6_damage_animation/0_animation/damage_tail
    execute if entity @s[tag=StateIsNotDown] if score #mhdp_reus_leg_damage AsaMatrix matches ..0 run function reus:manager/6_damage_animation/0_animation/damage_leg

# スタン
    execute if data storage mhdp_core:temp Temp.WeaponDamage{Type:2} if score #mhdp_reus_stun_damage AsaMatrix matches ..0 run function reus:manager/6_damage_animation/0_animation/damage_stun

# 怒り遷移
    execute if entity @s[tag=StateIsNotDown] if score #mhdp_reus_anger_damage AsaMatrix matches ..0 run function reus:manager/6_damage_animation/0_animation/anger
