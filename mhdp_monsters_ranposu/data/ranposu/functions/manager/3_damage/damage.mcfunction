#> ranposu:manager/3_damage/damage
#
# 青鳥竜 ダメージ処理

# ダメージ適用
    scoreboard players operation #mhdp_ranposu_health AsaMatrix += #mhdp_ranposu_damage AsaMatrix
    scoreboard players operation #mhdp_ranposu_health_half AsaMatrix += #mhdp_ranposu_damage AsaMatrix
# ボスバー設定
    execute store result bossbar asa_animator:ranposu_health value run scoreboard players get #mhdp_ranposu_health AsaMatrix
# 効果音など
    playsound minecraft:entity.player.hurt master @a ~ ~ ~ 2 1

# 部位・スタン・怒りダメージ適用
    # 部位ダメージ
        execute if entity @s[tag=HeadParts] if entity @e[type=item_display,tag=RanposuRoot,tag=!aj.ranposu.animation.down] run scoreboard players operation #mhdp_ranposu_head_damage AsaMatrix += #mhdp_ranposu_damage AsaMatrix
        execute if entity @s[tag=BodyParts] if entity @e[type=item_display,tag=RanposuRoot,tag=!aj.ranposu.animation.down] run scoreboard players operation #mhdp_ranposu_body_damage AsaMatrix += #mhdp_ranposu_damage AsaMatrix
    # 怒り値増加
        execute as @e[type=item_display,tag=RanposuRoot,tag=!StateIsAnger] run scoreboard players operation #mhdp_ranposu_anger_damage AsaMatrix += #mhdp_ranposu_damage AsaMatrix
    # スタン値増加
        execute if entity @s[tag=HeadParts] if entity @e[type=item_display,tag=RanposuRoot,tag=!aj.ranposu.animation.down] if data storage mhdp_core:temp Temp.WeaponDamage{Type:2} run scoreboard players operation #mhdp_ranposu_stun_damage AsaMatrix += #mhdp_ranposu_damage AsaMatrix

# 怯み適用
    execute as @e[type=item_display,tag=RanposuRoot] if entity @e[type=item_display,tag=RanposuRoot,tag=!aj.ranposu.animation.damage,tag=!aj.ranposu.animation.damage_down,tag=!aj.ranposu.animation.damage_flying,tag=!aj.ranposu.animation.down,tag=!aj.ranposu.animation.down_end] run function ranposu:manager/3_damage/damage_parts

# 死亡時，アニメーション設定
    execute if score #mhdp_ranposu_health AsaMatrix matches ..0 as @e[type=item_display,tag=RanposuRoot] run function ranposu:manager/6_damage_animation/0_animation/death

# 体力半分時処理
    execute as @e[tag=RanposuRoot] if entity @s[tag=!HpHalf] if score #mhdp_ranposu_health_half AsaMatrix matches ..0 run function mhdp_core:phase/3_quest/check/hp_half
