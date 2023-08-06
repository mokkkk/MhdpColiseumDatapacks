#> mhdp_core:player/item/potion/armorskin/move_sc
#
# アイテム用メイン処理 
# ４：硬化薬 補充

# プレイヤー特定
    scoreboard players operation #mhdp_temp_uid MhdpCore = @e[type=marker,tag=ItmSchArmor,limit=1,sort=arbitrary] MhdpPlayerUid
    kill @e[type=marker,tag=ItmSchArmor,limit=1,sort=arbitrary]
    execute as @a if score @s MhdpPlayerUid = #mhdp_temp_uid MhdpCore run tag @s add Target

# メインハンド置き換え
    execute as @a[tag=Target] run function mhdp_core:player/item/potion/armorskin/move_pl

# 終了
    tag @a[tag=Target] remove Target
    scoreboard players reset #mhdp_temp_uid MhdpCore
