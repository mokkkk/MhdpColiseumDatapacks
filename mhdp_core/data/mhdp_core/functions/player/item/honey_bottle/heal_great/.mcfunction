#> mhdp_core:player/item/honey_bottle/heal_great/
#
# アイテム用メイン処理 
# ２：回復薬グレート

# アイテム消去
    item modify entity @s weapon.mainhand mhdp_core:item/food_dec
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainHand set value {}

# 効果発動
    # HPを8回復
        summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:10,Amplifier:5b,Duration:16,ShowParticles:0b}]}

# 演出
    playsound entity.player.levelup master @s ~ ~ ~ 1 1.5

say 使用