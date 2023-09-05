#> mhdp_weapons:weapon/short_sword/95_attack/
#
# 片手剣 直接攻撃処理

# 倍率計算
    execute store result score #mhdp_temp_damage_mult MhdpCore run data get storage mh_dp:player_data AttackList[1][15].Damage 1
    execute store result score #mhdp_temp_element_damage_mult MhdpCore run data get storage mh_dp:player_data AttackList[1][15].ElementDamage 1
    data modify storage mhdp_core:temp Temp.WeaponDamage.Type set from storage mh_dp:player_data AttackList[1][15].Type
    data modify storage mhdp_core:temp Temp.WeaponDamage.Offhand set from storage mh_dp:player_data AttackList[1][15].Offhand

# タイマー設定
    scoreboard players set @s MhdpWeaponTimerSsword 12
