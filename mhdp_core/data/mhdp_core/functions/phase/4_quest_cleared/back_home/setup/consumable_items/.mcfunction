#> mhdp_core:phase/4_quest_cleared/back_home/setup/consumable_items/
#
# Phase4_クエストクリア 帰還処理 プレイヤー消費アイテムリセット

# 回復薬
    execute store result score #mhdp_temp_item_count MhdpCore run clear @s honey_bottle{MhdpItem:1b,MhdpItemId:1}
    execute if score #mhdp_temp_item_count MhdpCore matches 1.. run function mhdp_core:phase/4_quest_cleared/back_home/setup/consumable_items/1_heal

# 終了
    clear @s glass_bottle
