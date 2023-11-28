#> reus:manager/1_change/4_landing/near
#
# 火竜 地上行動 近

# 抽選
    loot spawn ~ 0 ~ loot reus:landing/near

# 突進
    execute if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmDashStart
# 嚙みつき
    execute if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run function reus:manager/1_change/2_animations/bite
# チャージ嚙みつき
    execute if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmChargeBite
# 尻尾回転
    execute if entity @e[type=item,nbt={Item:{tag:{Act:4}}}] run function reus:manager/1_change/2_animations/tail
# ブレス
    execute if entity @e[type=item,nbt={Item:{tag:{Act:5}}}] run function reus:manager/1_change/2_animations/breath
# 床ドン
    execute if entity @e[type=item,nbt={Item:{tag:{Act:6}}}] run tag @s add AnmJump
# 終了
    kill @e[type=item,nbt={Item:{tag:{ActPaper:1}}}]

say land near