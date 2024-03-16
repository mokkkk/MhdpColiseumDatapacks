#> reus:manager/1_change/5_flying/near
#
# 火竜 地上行動 近

# 抽選
    loot spawn ~ 0 ~ loot reus:flying/near

# 回り込み
    execute if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run function reus:manager/1_change/2_animations/fly_move
# 移動噛みつき
    execute if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmFlyBite
# 尻尾薙ぎ払い
    execute if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmFlyTail
# 爪攻撃
    execute if entity @e[type=item,nbt={Item:{tag:{Act:4}}}] run tag @s add AnmFlyAttack
# 強襲
    execute if entity @e[type=item,nbt={Item:{tag:{Act:5}}}] run tag @s add AnmFlyAssault
# なぎ払い火炎放射
    execute if entity @e[type=item,nbt={Item:{tag:{Act:6}}}] run tag @s add AnmFlyFlameSweep

# 終了
    kill @e[type=item,nbt={Item:{tag:{ActPaper:1}}}]

say fly near