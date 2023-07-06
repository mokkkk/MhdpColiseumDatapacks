#> mhdp_core:phase/2_quest_wait/start_quest/setup/consumable_items/
#
# Phase1_クエスト受注 出発処理 プレイヤー消費アイテムリセット

# 回復薬
    execute store result score #mhdp_temp_item_count MhdpCore run clear @s paper{MhdpItem:1b,MhdpItemId:1}
    execute if score #mhdp_temp_item_count MhdpCore matches 1.. run function mhdp_core:phase/2_quest_wait/start_quest/setup/consumable_items/1_heal

# 回復薬グレート
    execute store result score #mhdp_temp_item_count MhdpCore run clear @s paper{MhdpItem:1b,MhdpItemId:2}
    execute if score #mhdp_temp_item_count MhdpCore matches 1.. run function mhdp_core:phase/2_quest_wait/start_quest/setup/consumable_items/2_heal_great

# 鬼人薬
    execute store result score #mhdp_temp_item_count MhdpCore run clear @s paper{MhdpItem:1b,MhdpItemId:3}
    execute if score #mhdp_temp_item_count MhdpCore matches 1.. run function mhdp_core:phase/2_quest_wait/start_quest/setup/consumable_items/3_demondrug

# 硬化薬
    execute store result score #mhdp_temp_item_count MhdpCore run clear @s paper{MhdpItem:1b,MhdpItemId:4}
    execute if score #mhdp_temp_item_count MhdpCore matches 1.. run function mhdp_core:phase/2_quest_wait/start_quest/setup/consumable_items/4_armorskin
