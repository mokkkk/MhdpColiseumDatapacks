#> mhdp_weapons:weapon/long_sword/95_attack/
#
# 太刀 直接攻撃処理

# 倍率計算
     scoreboard players set #mhdp_temp_damage_mult MhdpCore 100
     scoreboard players set #mhdp_temp_element_damage_mult MhdpCore 100

# 属性設定
     data modify storage mhdp_core:temp Temp.WeaponDamage set value {Type:1,Offhand:0b}

# 練気上昇
     scoreboard players add @s MhdpWeaponSpiritGaugeLsword 15
     execute if score @s MhdpWeaponSpiritGaugeLsword matches 101.. run scoreboard players set @s MhdpWeaponSpiritGaugeLsword 100

# タイマー設定
     scoreboard players set @s MhdpWeaponTimerLsword 12
