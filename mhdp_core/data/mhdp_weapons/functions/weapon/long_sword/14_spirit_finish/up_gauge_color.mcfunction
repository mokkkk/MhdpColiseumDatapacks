#> mhdp_weapons:weapon/long_sword/14_spirit_finish/up_gauge_color
#
# 太刀：気刃大回転斬り ゲージ色アップ

# 色を1段階上げる
    scoreboard players add @s MhdpWeaponSpiritGaugeColorLsword 6000
    execute if score @s MhdpWeaponSpiritGaugeColorLsword matches ..6000 run scoreboard players set @s MhdpWeaponSpiritGaugeColorLsword 6000
    execute if score @s MhdpWeaponSpiritGaugeColorLsword matches 6001..12000 run scoreboard players set @s MhdpWeaponSpiritGaugeColorLsword 12000
    execute if score @s MhdpWeaponSpiritGaugeColorLsword matches 12001.. run scoreboard players set @s MhdpWeaponSpiritGaugeColorLsword 18000
