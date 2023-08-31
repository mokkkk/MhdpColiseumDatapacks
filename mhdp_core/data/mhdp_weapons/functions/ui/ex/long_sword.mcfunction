#> mhdp_weapons:ui/ex/long_sword
#
# UI表示処理等 武器ごとの特殊ゲージ 太刀
#

# 練気ゲージ色下地
    data modify storage mhdp_core:temp Temp.UI.ExArray append value '[{"text":"f","font":"ex/long_sword_color"}]'

# 練気ゲージ色
    execute if score @s MhdpWeaponSpiritGaugeColorLsword matches ..10 run data modify storage mhdp_core:temp Temp.UI.ExArray append value '[{"text":"0","font":"ex/long_sword_color"}]'
    execute if score @s MhdpWeaponSpiritGaugeColorLsword matches 11..6000 run function mhdp_weapons:ui/ex/long_sword_color_0
    execute if score @s MhdpWeaponSpiritGaugeColorLsword matches 6001..12000 run function mhdp_weapons:ui/ex/long_sword_color_1
    execute if score @s MhdpWeaponSpiritGaugeColorLsword matches 12001.. run function mhdp_weapons:ui/ex/long_sword_color_2

# 練気ゲージ
    execute if score @s MhdpWeaponSpiritGaugeLsword matches ..10 run data modify storage mhdp_core:temp Temp.UI.ExArray append value '[{"text":"0","font":"ex/long_sword_spirit"}]'
    execute if score @s MhdpWeaponSpiritGaugeLsword matches 11..20 run data modify storage mhdp_core:temp Temp.UI.ExArray append value '[{"text":"1","font":"ex/long_sword_spirit"}]'
    execute if score @s MhdpWeaponSpiritGaugeLsword matches 21..30 run data modify storage mhdp_core:temp Temp.UI.ExArray append value '[{"text":"2","font":"ex/long_sword_spirit"}]'
    execute if score @s MhdpWeaponSpiritGaugeLsword matches 31..40 run data modify storage mhdp_core:temp Temp.UI.ExArray append value '[{"text":"3","font":"ex/long_sword_spirit"}]'
    execute if score @s MhdpWeaponSpiritGaugeLsword matches 41..50 run data modify storage mhdp_core:temp Temp.UI.ExArray append value '[{"text":"4","font":"ex/long_sword_spirit"}]'
    execute if score @s MhdpWeaponSpiritGaugeLsword matches 51..60 run data modify storage mhdp_core:temp Temp.UI.ExArray append value '[{"text":"5","font":"ex/long_sword_spirit"}]'
    execute if score @s MhdpWeaponSpiritGaugeLsword matches 61..70 run data modify storage mhdp_core:temp Temp.UI.ExArray append value '[{"text":"6","font":"ex/long_sword_spirit"}]'
    execute if score @s MhdpWeaponSpiritGaugeLsword matches 71..80 run data modify storage mhdp_core:temp Temp.UI.ExArray append value '[{"text":"7","font":"ex/long_sword_spirit"}]'
    execute if score @s MhdpWeaponSpiritGaugeLsword matches 81..90 run data modify storage mhdp_core:temp Temp.UI.ExArray append value '[{"text":"8","font":"ex/long_sword_spirit"}]'
    execute if score @s MhdpWeaponSpiritGaugeLsword matches 91..99 run data modify storage mhdp_core:temp Temp.UI.ExArray append value '[{"text":"9","font":"ex/long_sword_spirit"}]'
    execute if score @s MhdpWeaponSpiritGaugeLsword matches 100.. run data modify storage mhdp_core:temp Temp.UI.ExArray append value '[{"text":"#","font":"ex/long_sword_spirit"}]'

# フレーム
    data modify storage mhdp_core:temp Temp.UI.ExArray append value '[{"text":"f","font":"ex/long_sword_spirit"}]'

# 適用
    data modify storage mhdp_core:temp Temp.UI.Ex set value '["",{"interpret":true,"nbt":"Temp.UI.ExArray[0]","storage":"mhdp_core:temp"},{"text":"\\uF814\\uF801"},{"interpret":true,"nbt":"Temp.UI.ExArray[1]","storage":"mhdp_core:temp"},{"text":"\\uF814\\uF801"},{"interpret":true,"nbt":"Temp.UI.ExArray[2]","storage":"mhdp_core:temp"},{"text":"\\uF814\\uF801"},{"interpret":true,"nbt":"Temp.UI.ExArray[3]","storage":"mhdp_core:temp"}]'
