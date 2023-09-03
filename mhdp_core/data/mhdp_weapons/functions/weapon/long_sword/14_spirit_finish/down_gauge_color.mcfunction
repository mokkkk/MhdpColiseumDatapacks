#> mhdp_weapons:weapon/long_sword/14_spirit_finish/down_gauge_color
#
# 太刀：気刃大回転斬り ゲージ色アップ

# 練気を満タンにする
    scoreboard players set @s MhdpWeaponSpiritGaugeLsword 600
    scoreboard players set @s MhdpWeaponSpiritGaugeTimerLsword 200

# 色を1段階下げる
    scoreboard players remove @s MhdpWeaponSpiritGaugeColorLsword 6000
    execute if score @s MhdpWeaponSpiritGaugeColorLsword matches ..0 run scoreboard players set @s MhdpWeaponSpiritGaugeColorLsword 0
    execute if score @s MhdpWeaponSpiritGaugeColorLsword matches 1..6000 run scoreboard players set @s MhdpWeaponSpiritGaugeColorLsword 6000
    execute if score @s MhdpWeaponSpiritGaugeColorLsword matches 6001..12000 run scoreboard players set @s MhdpWeaponSpiritGaugeColorLsword 12000
