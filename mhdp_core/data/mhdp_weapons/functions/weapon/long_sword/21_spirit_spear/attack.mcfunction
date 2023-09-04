#> mhdp_weapons:weapon/long_sword/21_spirit_spear/attack
#
# 太刀：気刃突き 攻撃エフェクト
#

# 演出
    playsound entity.player.attack.sweep master @a ~ ~ ~ 1 0.7
    playsound item.trident.throw master @a ~ ~ ~ 1 0.7

# 倍率設定
    execute store result score #mhdp_temp_damage_multiply MhdpCore run data get storage mh_dp:player_data AttackList[2][0].Damage 1
    execute store result score #mhdp_temp_damage_multiply_element MhdpCore run data get storage mh_dp:player_data AttackList[2][0].ElementDamage 1
    data modify storage mhdp_core:temp Temp.WeaponDamage.Type set from storage mh_dp:player_data AttackList[2][0].Type
    data modify storage mhdp_core:temp Temp.WeaponDamage.Offhand set from storage mh_dp:player_data AttackList[2][0].Offhand

# ゲージ色による威力増減
    execute if entity @s[tag=PlySkillTechnical] if score @s MhdpWeaponSpiritGaugeColorLsword matches ..0 store result score #mhdp_temp_damage_multiply MhdpCore run data get storage mh_dp:player_data AttackList[2][0].DamageColor0 1
    execute if entity @s[tag=PlySkillTechnical] if score @s MhdpWeaponSpiritGaugeColorLsword matches 1..6000 store result score #mhdp_temp_damage_multiply MhdpCore run data get storage mh_dp:player_data AttackList[2][0].DamageColor1 1
    execute if entity @s[tag=PlySkillTechnical] if score @s MhdpWeaponSpiritGaugeColorLsword matches 6001..12000 store result score #mhdp_temp_damage_multiply MhdpCore run data get storage mh_dp:player_data AttackList[2][0].DamageColor2 1
    execute if entity @s[tag=PlySkillTechnical] if score @s MhdpWeaponSpiritGaugeColorLsword matches 12001.. store result score #mhdp_temp_damage_multiply MhdpCore run data get storage mh_dp:player_data AttackList[2][0].DamageColor3 1

# ダメージ発生
    execute positioned ^ ^ ^4.5 as @e[type=slime,tag=MonsterParts,distance=..4] run tag @s add Targets
    execute if entity @e[tag=Targets] if score @s MhdpWeaponSpiritGaugeColorLsword matches 1.. run tag @s add AttackHit
    execute if entity @e[type=slime,tag=Targets] run function mhdp_weapons:core/attack/attack_by_mhdp_skill
    tag @e[type=slime,tag=Targets] remove Targets