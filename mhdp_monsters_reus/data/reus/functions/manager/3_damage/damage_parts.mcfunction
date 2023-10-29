#> ranposu:manager/3_damage/damage_parts
#
# 青鳥竜 ダメージ処理 怯み・怒り適用

# 部位怯み
    execute if score #mhdp_ranposu_head_damage AsaMatrix matches ..0 run function ranposu:manager/6_damage_animation/0_animation/damage_head
    execute if score #mhdp_ranposu_body_damage AsaMatrix matches ..0 run function ranposu:manager/6_damage_animation/0_animation/damage_body

# スタン
    execute if data storage mhdp_core:temp Temp.WeaponDamage{Type:2} if score #mhdp_ranposu_stun_damage AsaMatrix matches ..0 run function ranposu:manager/6_damage_animation/0_animation/damage_stun

# 怒り遷移
    execute if entity @s[tag=!StateIsFlying] if score #mhdp_ranposu_anger_damage AsaMatrix matches ..0 run function ranposu:manager/6_damage_animation/0_animation/anger
