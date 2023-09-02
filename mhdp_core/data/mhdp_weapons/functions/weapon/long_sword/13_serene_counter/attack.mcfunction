#> mhdp_weapons:weapon/long_sword/13_serene_counter/attack
#
# 太刀：水月の構え 攻撃エフェクト
#

# 演出
    playsound entity.player.attack.sweep master @a ~ ~ ~ 1 0.7
    playsound item.trident.throw master @a ~ ~ ~ 1 0.7
    playsound item.trident.return master @a ~ ~ ~ 1 0.7
    playsound item.trident.return master @a ~ ~ ~ 1 0.5
    execute positioned ~ ~1.4 ~ rotated ~90 90 positioned ^ ^ ^0.2 run function mhdp_weapons:weapon/long_sword/4_spirit1/attack_particle
    execute positioned ~ ~1.4 ~ rotated ~90 90 run function mhdp_weapons:weapon/long_sword/4_spirit1/attack_particle
    execute positioned ~ ~1.4 ~ rotated ~90 90 positioned ^ ^ ^-0.2 run function mhdp_weapons:weapon/long_sword/4_spirit1/attack_particle

# 倍率設定
    execute store result score #mhdp_temp_damage_multiply MhdpCore run data get storage mh_dp:player_data AttackList[2][10].Damage 1
    execute store result score #mhdp_temp_damage_multiply_element MhdpCore run data get storage mh_dp:player_data AttackList[2][10].ElementDamage 1
    data modify storage mhdp_core:temp Temp.WeaponDamage.Type set from storage mh_dp:player_data AttackList[2][10].Type
    data modify storage mhdp_core:temp Temp.WeaponDamage.Offhand set from storage mh_dp:player_data AttackList[2][10].Offhand

# ダメージ発生
    execute positioned ^ ^ ^4.5 as @e[type=slime,tag=MonsterParts,distance=..4] run tag @s add Targets
    execute if entity @e[tag=Targets] run scoreboard players add @s MhdpWeaponSpiritGaugeLsword 70
    execute if entity @e[tag=Targets] run scoreboard players set @s MhdpWeaponSpiritGaugeTimerLsword 200
    execute if entity @e[type=slime,tag=Targets] run function mhdp_weapons:core/attack/attack_by_mhdp_skill
    tag @e[type=slime,tag=Targets] remove Targets
