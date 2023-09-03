#> mhdp_weapons:weapon/great_sword/3_charge_attack/attack
#
# 大剣：溜め斬り 攻撃エフェクト
#

# 演出
    playsound entity.player.attack.sweep master @a ~ ~ ~ 1 0.7
    playsound item.trident.throw master @a ~ ~ ~ 1 0.7
    # execute positioned ^ ^ ^1.5 run particle sweep_attack ~ ~1 ~ 0.1 1 0.1 0 20
    execute positioned ^ ^ ^2.5 run function mhdp_core:vfx/gsword/slash_charge/start

# 倍率設定
    execute store result score #mhdp_temp_damage_multiply MhdpCore run data get storage mh_dp:player_data AttackList[0][0].Damage 1
    execute store result score #mhdp_temp_damage_multiply_element MhdpCore run data get storage mh_dp:player_data AttackList[0][0].ElementDamage 1
    data modify storage mhdp_core:temp Temp.WeaponDamage.Type set from storage mh_dp:player_data AttackList[0][0].Type
    data modify storage mhdp_core:temp Temp.WeaponDamage.Offhand set from storage mh_dp:player_data AttackList[0][0].Offhand
    execute if entity @s[tag=WpnGswordCharge1] store result score #mhdp_temp_damage_multiply MhdpCore run data get storage mh_dp:player_data AttackList[0][1].Damage 1
    execute if entity @s[tag=WpnGswordCharge2] store result score #mhdp_temp_damage_multiply MhdpCore run data get storage mh_dp:player_data AttackList[0][2].Damage 1
    execute if entity @s[tag=WpnGswordCharge3] store result score #mhdp_temp_damage_multiply MhdpCore run data get storage mh_dp:player_data AttackList[0][3].Damage 1
    execute if entity @s[tag=WpnGswordCharge2,tag=PlyDrawAttackWirebug] store result score #mhdp_temp_damage_multiply MhdpCore run data get storage mh_dp:player_data AttackList[0][4].Damage 1
    execute if entity @s[tag=WpnGswordCharge3,tag=PlyDrawAttackWirebug] store result score #mhdp_temp_damage_multiply MhdpCore run data get storage mh_dp:player_data AttackList[0][5].Damage 1

# ダメージ発生
    execute positioned ^ ^ ^4.5 as @e[type=slime,tag=MonsterParts,distance=..4] run tag @s add Targets
    execute if entity @e[type=slime,tag=Targets] run tag @s add AttackHit
    execute if entity @e[type=slime,tag=Targets] run function mhdp_weapons:core/attack/attack_by_mhdp_skill
    tag @e[type=slime,tag=Targets] remove Targets
