#> mhdp_weapons:weapon/short_sword/14_just_3/attack_1
#
# 片手剣：ジャストラッシュ 攻撃エフェクト
#

# 演出
    playsound entity.player.attack.sweep master @a ~ ~ ~ 1 0.7
    playsound item.trident.throw master @a ~ ~ ~ 1 1.2
    playsound item.trident.throw master @a ~ ~ ~ 1 0.7
    execute positioned ~ ~1.75 ~ positioned ^-0.5 ^ ^3 rotated ~90 70 run function mhdp_weapons:weapon/short_sword/12_just_1/particle_1
    execute positioned ~ ~1.75 ~ positioned ^-0.5 ^ ^3 rotated ~90 -20 run function mhdp_weapons:weapon/short_sword/12_just_1/particle_1
    execute if entity @s[tag=WpnSswordJust] positioned ~ ~1.75 ~ positioned ^-0.5 ^ ^2 rotated ~90 70 run function mhdp_weapons:weapon/short_sword/12_just_1/particle_0
    execute if entity @s[tag=WpnSswordJust] positioned ~ ~1.75 ~ positioned ^-0.5 ^ ^2 rotated ~90 -20 run function mhdp_weapons:weapon/short_sword/12_just_1/particle_0

# 倍率設定
    execute store result score #mhdp_temp_damage_multiply MhdpCore run data get storage mh_dp:player_data AttackList[1][12].Damage 1
    execute store result score #mhdp_temp_damage_multiply_element MhdpCore run data get storage mh_dp:player_data AttackList[1][12].ElementDamage 1
    execute if entity @s[tag=WpnSswordJust] store result score #mhdp_temp_damage_multiply MhdpCore run data get storage mh_dp:player_data AttackList[1][12].DamageJust 1
    execute if entity @s[tag=WpnSswordJust] store result score #mhdp_temp_damage_multiply_element MhdpCore run data get storage mh_dp:player_data AttackList[1][12].ElementDamageJust 1
    data modify storage mhdp_core:temp Temp.WeaponDamage.Type set from storage mh_dp:player_data AttackList[1][12].Type
    data modify storage mhdp_core:temp Temp.WeaponDamage.Offhand set from storage mh_dp:player_data AttackList[1][12].Offhand

# ダメージ発生
    execute positioned ^ ^ ^3.5 as @e[type=slime,tag=MonsterParts,distance=..4] run tag @s add Targets
    execute if entity @e[type=slime,tag=Targets] run function mhdp_weapons:core/attack/attack_by_mhdp_skill
    execute if entity @e[type=slime,tag=Targets] run function mhdp_weapons:weapon/short_sword/14_just_3/move
    execute unless entity @e[type=slime,tag=Targets] run tag @s remove AttackHit
    tag @e[type=slime,tag=Targets] remove Targets
