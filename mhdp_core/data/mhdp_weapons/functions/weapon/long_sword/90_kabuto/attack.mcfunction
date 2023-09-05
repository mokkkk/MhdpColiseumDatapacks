#> mhdp_weapons:weapon/long_sword/90_kabuto/attack
#
# 気刃兜割の処理 攻撃
#

# プレイヤー特定
    tag @s add Target
    execute as @a if score @s MhdpPlayerUid = @e[type=marker,tag=Target,limit=1] MhdpPlayerUid run tag @s add Attacker

# モンスター特定
    execute as @e[type=slime,tag=MonsterParts] if score @s MhdpPartsUid = @e[type=marker,tag=Target,limit=1] MhdpPartsUid run tag @s add Victim

# 練気ゲージ色に応じて倍率設定
    execute if score @s MhdpWeaponSpiritGaugeColorLsword matches ..0 store result score #mhdp_temp_damage_multiply MhdpCore run data get storage mh_dp:player_data AttackList[2][7].Damage 1
    execute if score @s MhdpWeaponSpiritGaugeColorLsword matches 1 store result score #mhdp_temp_damage_multiply MhdpCore run data get storage mh_dp:player_data AttackList[2][8].Damage 1
    execute if score @s MhdpWeaponSpiritGaugeColorLsword matches 2.. store result score #mhdp_temp_damage_multiply MhdpCore run data get storage mh_dp:player_data AttackList[2][9].Damage 1
    execute store result score #mhdp_temp_damage_multiply_element MhdpCore run data get storage mh_dp:player_data AttackList[2][7].ElementDamage 1
    data modify storage mhdp_core:temp Temp.WeaponDamage.Type set from storage mh_dp:player_data AttackList[2][7].Type
    data modify storage mhdp_core:temp Temp.WeaponDamage.Offhand set from storage mh_dp:player_data AttackList[2][7].Offhand

# 演出
    execute at @e[type=slime,tag=Victim] run particle crit ~ ~ ~ 0 0 0 1 30 force

# ダメージ発生
    execute at @e[type=slime,tag=Victim] as @a[tag=Attacker] run function mhdp_weapons:core/attack/attack_by_mhdp_skill
    tag @e[type=slime,tag=Victim] remove Victim

# 終了
    tag @s remove Target
    tag @a remove Attacker
