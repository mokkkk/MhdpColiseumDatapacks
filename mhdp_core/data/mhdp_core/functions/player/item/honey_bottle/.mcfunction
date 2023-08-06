#> mhdp_core:player/item/honey_bottle/
#
# アイテム用メイン処理 薬

# アイテム使用検知
    # 未使用→使用
        execute if entity @s[tag=!PlyUsingHoneyBottleCurrent,tag=AdvUsingItemHoneyBottle] if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainHand.tag{MhdpItem:1b} run tag @s add PlyUsingHoneyBottleCurrent
    # 使用→未使用
        execute if entity @s[tag=PlyUsingHoneyBottleCurrent,tag=!AdvUsingItemHoneyBottle] run tag @s add PlyUsingHoneyBottleEnd
        execute if entity @s[tag=PlyUsingHoneyBottleEnd] run tag @s remove PlyUsingHoneyBottleCurrent

# 使用中はスコアを増やす
    execute if entity @s[tag=PlyUsingHoneyBottleCurrent] run scoreboard players add @s MhdpTUsingItem 1
    # スコア一定以上になったらコマンド実行
        # 通常
            execute if entity @s[tag=PlyUsingHoneyBottleCurrent,scores={MhdpTUsingItem=30..}] run function mhdp_core:player/item/honey_bottle/switch
        # スキル：早食い
            execute if entity @s[tag=PlyUsingHoneyBottleCurrent,tag=SklFastEating,scores={MhdpTUsingItem=15..}] run function mhdp_core:player/item/honey_bottle/switch

# 未使用時はスコアをリセットする
    execute if entity @s[tag=PlyUsingHoneyBottleEnd] run scoreboard players set @s MhdpTUsingItem 0

# 終了
    execute if entity @s[tag=PlyUsingHoneyBottleEnd] run tag @s remove PlyUsingHoneyBottleEnd
