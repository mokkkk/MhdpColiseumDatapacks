#> mhdp_core:phase/2_quest_wait/start_quest/setup/consumable_items/0_calc_stack
#
# Phase4_クエストクリア 帰還処理 プレイヤー消費アイテムリセット 共通処理

# スタック数に分割
    scoreboard players operation #mhdp_temp_item_count_stack MhdpCore = #mhdp_temp_item_count MhdpCore
    scoreboard players operation #mhdp_temp_item_count MhdpCore %= $64 Const
    scoreboard players operation #mhdp_temp_item_count_stack MhdpCore /= $64 Const
