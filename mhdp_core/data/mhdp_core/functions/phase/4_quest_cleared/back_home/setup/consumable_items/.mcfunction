#> mhdp_core:phase/4_quest_cleared/back_home/setup/consumable_items/
#
# Phase4_クエストクリア 帰還処理 プレイヤー消費アイテムリセット

## ポーション系統
# 回復薬
    execute store result score #mhdp_temp_item_count MhdpCore run clear @s honey_bottle{MhdpItem:1b,MhdpItemId:1}
    execute if score #mhdp_temp_item_count MhdpCore matches 1.. run function mhdp_core:phase/4_quest_cleared/back_home/setup/consumable_items/1_heal
# 回復薬グレート
    execute store result score #mhdp_temp_item_count MhdpCore run clear @s honey_bottle{MhdpItem:1b,MhdpItemId:2}
    execute if score #mhdp_temp_item_count MhdpCore matches 1.. run function mhdp_core:phase/4_quest_cleared/back_home/setup/consumable_items/2_head_great
# 鬼人薬
    execute store result score #mhdp_temp_item_count MhdpCore run clear @s honey_bottle{MhdpItem:1b,MhdpItemId:3}
    execute if score #mhdp_temp_item_count MhdpCore matches 1.. run function mhdp_core:phase/4_quest_cleared/back_home/setup/consumable_items/3_demondrug
# 硬化薬
    execute store result score #mhdp_temp_item_count MhdpCore run clear @s honey_bottle{MhdpItem:1b,MhdpItemId:4}
    execute if score #mhdp_temp_item_count MhdpCore matches 1.. run function mhdp_core:phase/4_quest_cleared/back_home/setup/consumable_items/4_armorskin

## クッキー系統
# 怪力の種
    execute store result score #mhdp_temp_item_count MhdpCore run clear @s paper{MhdpItem:1b,MhdpItemId:51}
    execute if score #mhdp_temp_item_count MhdpCore matches 1.. run function mhdp_core:phase/4_quest_cleared/back_home/setup/consumable_items/51_might_seed
# 硬化の種
    execute store result score #mhdp_temp_item_count MhdpCore run clear @s paper{MhdpItem:1b,MhdpItemId:52}
    execute if score #mhdp_temp_item_count MhdpCore matches 1.. run function mhdp_core:phase/4_quest_cleared/back_home/setup/consumable_items/52_adamant_seed
# 秘薬
    execute store result score #mhdp_temp_item_count MhdpCore run clear @s paper{MhdpItem:1b,MhdpItemId:53}
    execute if score #mhdp_temp_item_count MhdpCore matches 1.. run function mhdp_core:phase/4_quest_cleared/back_home/setup/consumable_items/53_maxpotion

# 終了
    clear @s glass_bottle
