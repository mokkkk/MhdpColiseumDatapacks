#> mhdp_core:player/item/food/switch
#
# アイテム用メイン処理 薬 分岐

# ID取得
    execute store result score #mhdp_temp_id MhdpCore run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainHand.tag.MhdpItemId

# ５１：怪力の種
    execute if score #mhdp_temp_id MhdpCore matches 51 run function mhdp_core:player/item/food/might_seed/
# ５２：硬化の種
    execute if score #mhdp_temp_id MhdpCore matches 52 run function mhdp_core:player/item/food/adamant_seed/
# ５３：秘薬
    execute if score #mhdp_temp_id MhdpCore matches 53 run function mhdp_core:player/item/food/max_potion/


# 終了
    scoreboard players reset #mhdp_temp_id MhdpCore
    scoreboard players set @s MhdpTUsingItem 0
