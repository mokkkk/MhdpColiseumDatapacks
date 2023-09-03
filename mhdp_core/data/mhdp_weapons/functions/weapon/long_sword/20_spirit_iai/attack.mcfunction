#> mhdp_weapons:weapon/long_sword/20_spirit_iai/attack
#
# 太刀：居合抜刀気刃斬り 攻撃エフェクト
#

# 演出
    execute positioned ~ ~1.4 ~ rotated ~90 10 run function mhdp_weapons:weapon/long_sword/14_spirit_finish/attack_particle

# 倍率設定
    execute store result score #mhdp_temp_damage_multiply MhdpCore run data get storage mh_dp:player_data AttackList[2][12].Damage 1
    execute store result score #mhdp_temp_damage_multiply_element MhdpCore run data get storage mh_dp:player_data AttackList[2][12].ElementDamage 1
    data modify storage mhdp_core:temp Temp.WeaponDamage.Type set from storage mh_dp:player_data AttackList[2][12].Type
    data modify storage mhdp_core:temp Temp.WeaponDamage.Offhand set from storage mh_dp:player_data AttackList[2][12].Offhand

# ダメージ発生
    execute as @e[type=slime,tag=MonsterParts,distance=..5.5] run tag @s add Targets
    execute if entity @e[type=slime,tag=Targets] run function mhdp_weapons:core/attack/attack_by_mhdp_skill
    tag @e[type=slime,tag=Targets] remove Targets
