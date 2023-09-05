#> mhdp_weapons:weapon/long_sword/14_spirit_finish/attack
#
# 太刀：気刃大回転斬り 攻撃エフェクト
#

# 演出
    execute positioned ~ ~1.4 ~ rotated ~90 0 run function mhdp_weapons:weapon/long_sword/14_spirit_finish/attack_particle
    execute positioned ~ ~1.4 ~ rotated ~90 -40 run function mhdp_weapons:weapon/long_sword/14_spirit_finish/attack_particle

# 倍率設定
    execute store result score #mhdp_temp_damage_multiply MhdpCore run data get storage mh_dp:player_data AttackList[2][12].Damage 1
    execute store result score #mhdp_temp_damage_multiply_element MhdpCore run data get storage mh_dp:player_data AttackList[2][12].ElementDamage 1
    data modify storage mhdp_core:temp Temp.WeaponDamage.Type set from storage mh_dp:player_data AttackList[2][12].Type
    data modify storage mhdp_core:temp Temp.WeaponDamage.Offhand set from storage mh_dp:player_data AttackList[2][12].Offhand

# ゲージ色による威力増減
    execute if entity @s[tag=PlySkillTechnical] if score @s MhdpWeaponSpiritGaugeColorLsword matches ..0 store result score #mhdp_temp_damage_multiply MhdpCore run data get storage mh_dp:player_data AttackList[2][12].DamageColor0 1
    execute if entity @s[tag=PlySkillTechnical] if score @s MhdpWeaponSpiritGaugeColorLsword matches 1..6000 store result score #mhdp_temp_damage_multiply MhdpCore run data get storage mh_dp:player_data AttackList[2][12].DamageColor1 1
    execute if entity @s[tag=PlySkillTechnical] if score @s MhdpWeaponSpiritGaugeColorLsword matches 6001..12000 store result score #mhdp_temp_damage_multiply MhdpCore run data get storage mh_dp:player_data AttackList[2][12].DamageColor2 1
    execute if entity @s[tag=PlySkillTechnical] if score @s MhdpWeaponSpiritGaugeColorLsword matches 12001.. store result score #mhdp_temp_damage_multiply MhdpCore run data get storage mh_dp:player_data AttackList[2][12].DamageColor3 1

# ダメージ発生
    execute as @e[type=slime,tag=MonsterParts,distance=..4.5] run tag @s add Targets
    execute if entity @e[tag=Targets] run function mhdp_weapons:weapon/long_sword/14_spirit_finish/up_gauge_color
    execute if entity @e[type=slime,tag=Targets] run function mhdp_weapons:core/attack/attack_by_mhdp_skill
    tag @e[type=slime,tag=Targets] remove Targets
