#> reus:manager/3_damage/damage
#
# 火竜 ダメージ処理

# ダメージ適用
    scoreboard players operation #mhdp_reus_health AsaMatrix += #mhdp_reus_damage AsaMatrix
    scoreboard players operation #mhdp_reus_health_half AsaMatrix += #mhdp_reus_damage AsaMatrix
# ボスバー設定
    execute store result bossbar asa_animator:reus_health value run scoreboard players get #mhdp_reus_health AsaMatrix
# 効果音など
    playsound minecraft:entity.player.hurt master @a ~ ~ ~ 2 1

# 怯み中確認
    execute as @e[type=item_display,tag=ReusRoot] if entity @s[tag=!aj.reus.animation.land_damage_head,tag=!aj.reus.animation.land_damage_body,tag=!aj.reus.animation.land_damage_tail,tag=!aj.reus.animation.land_damage_leg_r,tag=!aj.reus.animation.land_damage_leg_l,tag=!aj.reus.animation.fly_damage] run tag @s add StateIsNotDamage
# ダウン中確認
    execute as @e[type=item_display,tag=ReusRoot] if entity @s[tag=!aj.reus.animation.land_damage_leg_r,tag=!aj.reus.animation.land_damage_leg_l,tag=!aj.reus.animation.land_down_r,tag=!aj.reus.animation.land_down_l] run tag @s add StateIsNotDown

# 部位・スタン・怒りダメージ適用
    # 部位ダメージ
        execute if entity @s[tag=HeadParts] if entity @e[type=item_display,tag=ReusRoot,tag=!aj.reus.animation.land_damage_head] run scoreboard players operation #mhdp_reus_head_damage AsaMatrix += #mhdp_reus_damage AsaMatrix
        execute if entity @s[tag=BodyParts] if entity @e[type=item_display,tag=ReusRoot,tag=!aj.reus.animation.land_damage_body] run scoreboard players operation #mhdp_reus_body_damage AsaMatrix += #mhdp_reus_damage AsaMatrix
        execute if entity @s[tag=LegParts] if entity @e[type=item_display,tag=ReusRoot,tag=StateIsNotDown] run scoreboard players operation #mhdp_reus_leg_damage AsaMatrix += #mhdp_reus_damage AsaMatrix
        execute if entity @s[tag=TailParts] if entity @e[type=item_display,tag=ReusRoot,tag=!aj.reus.animation.land_damage_tail] run scoreboard players operation #mhdp_reus_tail_damage AsaMatrix += #mhdp_reus_damage AsaMatrix
    # 怒り値増加
        execute as @e[type=item_display,tag=ReusRoot,tag=!StateIsAnger] run scoreboard players operation #mhdp_reus_anger_damage AsaMatrix += #mhdp_reus_damage AsaMatrix
    # スタン値増加
        execute if entity @s[tag=HeadParts] if entity @e[type=item_display,tag=ReusRoot,tag=!StateIsStun] if data storage mhdp_core:temp Temp.WeaponDamage{Type:2} run scoreboard players operation #mhdp_reus_stun_damage AsaMatrix += #mhdp_reus_damage AsaMatrix

# 怯み適用
    execute if score #mhdp_reus_health AsaMatrix matches 1.. as @e[type=item_display,tag=ReusRoot] run function reus:manager/3_damage/damage_parts

# 死亡時，アニメーション設定
    execute if score #mhdp_reus_health AsaMatrix matches ..0 as @e[type=item_display,tag=ReusRoot] run function reus:manager/6_damage_animation/0_animation/death

# 体力半分時処理
    execute as @e[tag=ReusRoot] if entity @s[tag=!HpHalf] if score #mhdp_reus_health_half AsaMatrix matches ..0 run function mhdp_core:phase/3_quest/check/hp_half

# 終了
    tag @e[tag=ReusRoot] remove StateIsNotDown
    tag @e[tag=ReusRoot] remove StateIsNotDamage
