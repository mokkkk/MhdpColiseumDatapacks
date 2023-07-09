#> mhdp_core:phase/2_quest_wait/start_quest/setup/consumable_items/53_maxpotion
#
# Phase4_クエストクリア 帰還処理 プレイヤー消費アイテムリセット 秘薬

# 所持個数確認
    execute if score #mhdp_temp_item_count MhdpCore matches 6.. run tag @s add TmpLimitItemCount
    execute if score #mhdp_temp_item_count MhdpCore matches 6.. run scoreboard players remove #mhdp_temp_item_count MhdpCore 5

# 余ったアイテムはチェストに送還(252 66 222)
    execute if entity @s[tag=TmpLimitItemCount] run function mhdp_core:phase/2_quest_wait/start_quest/setup/consumable_items/0_calc_stack
    execute if entity @s[tag=TmpLimitItemCount] run loot insert 252 66 222 loot mhdp_core:consumable_items/reset/53_maxpotion

# アイテム変換
    execute if entity @s[tag=TmpLimitItemCount] run scoreboard players set #mhdp_temp_item_count MhdpCore 5
    loot give @s loot mhdp_core:consumable_items/replace/53_maxpotion
    
# 終了
    tag @s remove TmpLimitItemCount
    scoreboard players set #mhdp_temp_item_count_stack MhdpCore 0
    scoreboard players set #mhdp_temp_item_count MhdpCore 0
