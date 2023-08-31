#> mhdp_weapons:ui/ex/long_sword_color_0
#
# UI表示処理等 武器ごとの特殊ゲージ 太刀
#

# 練気ゲージ色：白
    execute if score @s MhdpWeaponSpiritGaugeColorLsword matches ..600 run data modify storage mhdp_core:temp Temp.UI.ExArray append value '[{"text":"1","font":"ex/long_sword_color","color":"white"}]'
    execute if score @s MhdpWeaponSpiritGaugeColorLsword matches 601..1200 run data modify storage mhdp_core:temp Temp.UI.ExArray append value '[{"text":"2","font":"ex/long_sword_color","color":"white"}]'
    execute if score @s MhdpWeaponSpiritGaugeColorLsword matches 1201..1800 run data modify storage mhdp_core:temp Temp.UI.ExArray append value '[{"text":"3","font":"ex/long_sword_color","color":"white"}]'
    execute if score @s MhdpWeaponSpiritGaugeColorLsword matches 1801..2400 run data modify storage mhdp_core:temp Temp.UI.ExArray append value '[{"text":"4","font":"ex/long_sword_color","color":"white"}]'
    execute if score @s MhdpWeaponSpiritGaugeColorLsword matches 2401..3000 run data modify storage mhdp_core:temp Temp.UI.ExArray append value '[{"text":"5","font":"ex/long_sword_color","color":"white"}]'
    execute if score @s MhdpWeaponSpiritGaugeColorLsword matches 3001..3600 run data modify storage mhdp_core:temp Temp.UI.ExArray append value '[{"text":"6","font":"ex/long_sword_color","color":"white"}]'
    execute if score @s MhdpWeaponSpiritGaugeColorLsword matches 3601..4200 run data modify storage mhdp_core:temp Temp.UI.ExArray append value '[{"text":"7","font":"ex/long_sword_color","color":"white"}]'
    execute if score @s MhdpWeaponSpiritGaugeColorLsword matches 4201..4800 run data modify storage mhdp_core:temp Temp.UI.ExArray append value '[{"text":"8","font":"ex/long_sword_color","color":"white"}]'
    execute if score @s MhdpWeaponSpiritGaugeColorLsword matches 4801..5400 run data modify storage mhdp_core:temp Temp.UI.ExArray append value '[{"text":"9","font":"ex/long_sword_color","color":"white"}]'
    execute if score @s MhdpWeaponSpiritGaugeColorLsword matches 5401.. run data modify storage mhdp_core:temp Temp.UI.ExArray append value '[{"text":"#","font":"ex/long_sword_color","color":"white"}]'
