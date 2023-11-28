#> reus:manager/1_change/4_landing/middle
#
# 火竜 地上行動 中

# 抽選
    loot spawn ~ 0 ~ loot reus:landing/middle

# 突進
    execute if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmDashStart
# チャージ嚙みつき
    execute if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmChargeBite
# ブレス
    execute if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run function reus:manager/1_change/2_animations/breath
# 移動
    execute if entity @e[type=item,nbt={Item:{tag:{Act:4}}}] run function reus:manager/1_change/2_animations/move

# 終了
    kill @e[type=item,nbt={Item:{tag:{ActPaper:1}}}]

say land middle