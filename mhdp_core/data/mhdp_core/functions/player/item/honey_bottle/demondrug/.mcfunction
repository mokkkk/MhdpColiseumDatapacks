#> mhdp_core:player/item/honey_bottle/demondrug/
#
# アイテム用メイン処理 
# ３：鬼人薬
#declare tag ItmDemondrug 鬼人薬使用中

# アイテム消去
    item modify entity @s weapon.mainhand mhdp_core:item/food_dec
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainHand set value {}

# 効果発動
    # 攻撃力上昇タグ付与
        tag @s add ItmDemondrug

# 演出
    playsound entity.player.levelup master @s ~ ~ ~ 1 1.5

say 使用