#> reus:manager/1_change/5_flying/far
#
# 火竜 地上行動 遠

# 抽選
    loot spawn ~ 0 ~ loot reus:flying/far

# 回り込み
    execute if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run function reus:manager/1_change/2_animations/fly_move
# 強襲
    execute if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmFlyAssault
# 滑空ブレス
    execute if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run function reus:manager/1_change/2_animations/fly_movebreath

# 終了
    kill @e[type=item,nbt={Item:{tag:{ActPaper:1}}}]

say fly far