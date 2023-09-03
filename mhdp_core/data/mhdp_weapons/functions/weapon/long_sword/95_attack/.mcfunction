#> mhdp_weapons:weapon/long_sword/95_attack/
#
# 太刀 直接攻撃処理

# 倍率計算
    execute store result score #mhdp_temp_damage_multiply MhdpCore run data get storage mh_dp:player_data AttackList[2][11].Damage 1
    execute store result score #mhdp_temp_damage_multiply_element MhdpCore run data get storage mh_dp:player_data AttackList[2][11].ElementDamage 1
    data modify storage mhdp_core:temp Temp.WeaponDamage.Type set from storage mh_dp:player_data AttackList[2][11].Type
    data modify storage mhdp_core:temp Temp.WeaponDamage.Offhand set from storage mh_dp:player_data AttackList[2][11].Offhand

# 練気上昇
     scoreboard players set @s MhdpWeaponSpiritGaugeTimerLsword 60
     scoreboard players add @s MhdpWeaponSpiritGaugeLsword 35
     execute if score @s MhdpWeaponSpiritGaugeLsword matches 601.. run scoreboard players set @s MhdpWeaponSpiritGaugeLsword 600

# タイマー設定
     scoreboard players set @s MhdpWeaponTimerLsword 12
