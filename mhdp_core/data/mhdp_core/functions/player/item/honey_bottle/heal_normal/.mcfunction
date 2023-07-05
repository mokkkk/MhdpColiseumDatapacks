#> mhdp_core:player/item/honey_bottle/heal_normal/
#
# アイテム用メイン処理 
# １：回復薬

# アイテム消去
    item modify entity @s weapon.mainhand mhdp_core:item/food_dec
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainHand set value {}

# 効果発動
    # HPを5回復
        summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:10,Amplifier:5b,Duration:10,ShowParticles:0b}]}

# 演出
    playsound entity.player.levelup master @s ~ ~ ~ 1 1.5

say 使用