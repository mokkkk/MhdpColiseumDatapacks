#> mhdp_weapons:weapon/great_sword/95_attack/
#
# 大剣 直接攻撃処理

# 倍率計算
     execute store result score #mhdp_temp_damage_multiply MhdpCore run data get storage mh_dp:player_data AttackList[0][10].Damage 1
    execute store result score #mhdp_temp_damage_multiply_element MhdpCore run data get storage mh_dp:player_data AttackList[0][10].ElementDamage 1
    data modify storage mhdp_core:temp Temp.WeaponDamage.Type set from storage mh_dp:player_data AttackList[0][10].Type
    data modify storage mhdp_core:temp Temp.WeaponDamage.Offhand set from storage mh_dp:player_data AttackList[0][10].Offhand
