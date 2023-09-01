#> mhdp_weapons:weapon/long_sword/0_tick/
#
# 太刀：納刀時でも実行する処理
#

# 抜刀中確認
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainHand.tag{MhdpWeapon:1b} run tag @s add IsDrawing

# スタミナ回復
    execute if entity @s[tag=!PlyStaminaNotRegen,tag=!WpnSsword3Guard,tag=!WpnSsword7Step,scores={MhdpStamina=..999}] run tag @s add Regen

# 回復
    execute if entity @s[tag=Regen,scores={MhdpStaminaSpeed=..79}] run scoreboard players add @s MhdpStaminaSpeed 1
    execute if entity @s[tag=Regen,scores={MhdpStaminaSpeed=..39,MhdpStamina=..999}] run scoreboard players add @s MhdpStamina 4
    execute if entity @s[tag=Regen,scores={MhdpStaminaSpeed=40..79,MhdpStamina=..999}] run scoreboard players add @s MhdpStamina 8
    execute if entity @s[tag=Regen,scores={MhdpStaminaSpeed=80..,MhdpStamina=..999}] run scoreboard players add @s MhdpStamina 12
    execute if entity @s[tag=Regen,scores={MhdpStamina=1001..}] run scoreboard players set @s MhdpStamina 1000

# 回復速度リセット
    execute if entity @s[tag=!Regen] run scoreboard players set @s MhdpStaminaSpeed 0

# 練気ゲージ減少
    execute if score @s MhdpWeaponSpiritGaugeTimerLsword matches 1.. run scoreboard players remove @s MhdpWeaponSpiritGaugeTimerLsword 1
    execute if score @s MhdpWeaponSpiritGaugeLsword matches 1.. unless score @s MhdpWeaponSpiritGaugeTimerLsword matches 1.. run scoreboard players remove @s MhdpWeaponSpiritGaugeLsword 1

# 練気ゲージ色減少
    execute if score @s MhdpWeaponSpiritGaugeColorLsword matches 1..6000 run scoreboard players remove @s MhdpWeaponSpiritGaugeColorLsword 1
    execute if score @s MhdpWeaponSpiritGaugeColorLsword matches 6001..12000 run scoreboard players remove @s MhdpWeaponSpiritGaugeColorLsword 3
    execute if score @s MhdpWeaponSpiritGaugeColorLsword matches 12001.. run scoreboard players remove @s MhdpWeaponSpiritGaugeColorLsword 5

# 終了
    tag @s remove Regen
