#> reus:manager/1_change/4_landing/far
#
# 火竜 地上行動 遠

# 抽選
    loot spawn ~ 0 ~ loot reus:landing/far

# ブレス
    execute if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run function reus:manager/1_change/2_animations/breath
# 移動
    execute if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run function reus:manager/1_change/2_animations/move
# 飛行開始
    execute if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run function reus:manager/1_change/2_animations/start_fly

# 終了
    kill @e[type=item,nbt={Item:{tag:{ActPaper:1}}}]

say land far