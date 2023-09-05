#> mhdp_core:player/item/carrot_on_a_stick/hidensyo/check
#
# アイテム用メイン処理

# アイテム使用検知・ID取得
    execute if data entity @s SelectedItem.tag{MhdpItem:1b} store result score #mhdp_temp_id MhdpCore run data get entity @s SelectedItem.tag.MhdpItemId

# 102：天ノ型の秘伝書
    execute if score #mhdp_temp_id MhdpCore matches 102 run function mhdp_core:player/item/carrot_on_a_stick/hidensyo/start

# 終了
    scoreboard players reset #mhdp_temp_id
