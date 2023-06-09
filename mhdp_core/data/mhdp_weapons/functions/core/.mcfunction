#> mhdp_weapons:core/
#
# 武器の納刀・抜刀およびエラー対策処理

# 武器を2本持っている場合（インベントリクリックによる増殖対策）
    execute store result score #mhdp_temp_count MhdpCore run clear @s ender_eye{MhdpWeapon:1b} 0
    execute store result score #mhdp_temp_count_sub MhdpCore run clear @s ender_eye{MhdpWeaponSub:1b} 0
    execute if score #mhdp_temp_count MhdpCore matches 2.. run function mhdp_weapons:core/reset/count
    execute unless entity @s[tag=PlyWeaponDrawingSub] if score #mhdp_temp_count_sub MhdpCore matches 1.. run function mhdp_weapons:core/reset/count
    execute if entity @s[tag=PlyWeaponDrawingSub] if score #mhdp_temp_count_sub MhdpCore matches 2.. run function mhdp_weapons:core/reset/count
    scoreboard players reset #mhdp_temp_count
    scoreboard players reset #mhdp_temp_count_sub

# 武器を投げ捨てた
    execute if entity @s[tag=PlyDroppedEnderEye] run function mhdp_weapons:core/drop/

# 通常抜刀
    execute if entity @s[tag=!PlyWeaponDrawing,tag=AdvInventoryChangedMain] run function mhdp_weapons:core/draw/

# 通常納刀
    execute if entity @s[tag=PlyWeaponDrawing,tag=AdvInventoryChangedOff] run function mhdp_weapons:core/sheathe/

    execute if entity @s[tag=PlyWeaponDrawingSub] unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.OffHand.tag{MhdpWeaponSub:1b} unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.OffHand.tag{MhdpWeapon:1b} run say サブ武器無し強制納刀
    execute if entity @s[tag=PlyWeaponDrawing,tag=!PlyWeaponDrawingSub] if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.OffHand run say オフハンド空じゃない強制納刀

# 強制納刀（武器がメインハンドにない）
    execute if entity @s[tag=PlyWeaponDrawing] unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainHand.tag{MhdpWeapon:1b} unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.OffHand.tag{MhdpWeapon:1b} run function mhdp_weapons:core/sheathe/force
# 強制納刀（サブ武器がオフハンドにない）
    execute if entity @s[tag=PlyWeaponDrawingSub] unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.OffHand.tag{MhdpWeaponSub:1b} unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.OffHand.tag{MhdpWeapon:1b} run function mhdp_weapons:core/sheathe/force
# 強制納刀（オフハンドが空じゃない）
    execute if entity @s[tag=PlyWeaponDrawing,tag=!PlyWeaponDrawingSub] if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.OffHand run function mhdp_weapons:core/sheathe/force

# 非抜刀中，オフハンド監視
    execute if entity @s[tag=!PlyWeaponDrawing] run function mhdp_weapons:core/check/

# エンダーアイ使用
    # execute if entity @s[tag=PlyUsingEyeStart] run say エンダーアイ使用開始
    # execute if entity @s[tag=PlyUsingEyeEnd] run say エンダーアイ使用終了

# 終了
    execute if entity @s[tag=AdvInventoryChangedMain] run tag @s remove AdvInventoryChangedMain
    execute if entity @s[tag=AdvInventoryChangedOff] run tag @s remove AdvInventoryChangedOff
    execute if entity @s[tag=AdvInventoryChangedOther] run tag @s remove AdvInventoryChangedOther
