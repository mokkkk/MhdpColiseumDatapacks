#> mhdp_core:phase/4_quest_cleared/back_home/setup/consumable_items/53_maxpotion
#
# Phase4_クエストクリア 帰還処理 プレイヤー消費アイテムリセット 怪力の種

# アイテム変換
    loot give @s loot mhdp_core:consumable_items/reset/53_maxpotion
    
# 終了
    scoreboard players set #mhdp_temp_item_count MhdpCore 0