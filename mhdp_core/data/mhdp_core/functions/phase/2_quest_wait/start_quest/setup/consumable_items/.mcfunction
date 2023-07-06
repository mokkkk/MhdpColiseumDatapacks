#> mhdp_core:phase/2_quest_wait/start_quest/setup/consumable_items/
#
# Phase1_クエスト受注 出発処理 プレイヤー消費アイテムリセット

# 回復薬
    execute store result score #mhdp_temp_item_count MhdpCore run clear @s paper{MhdpItem:1b,MhdpItemId:1}
    execute if score #mhdp_temp_item_count MhdpCore matches 1.. run function mhdp_core:phase/2_quest_wait/start_quest/setup/consumable_items/1_heal

