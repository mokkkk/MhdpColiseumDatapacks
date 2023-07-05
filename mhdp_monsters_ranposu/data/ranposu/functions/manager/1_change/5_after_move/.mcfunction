#> ranposu:manager/1_change/5_after_move/
#
# 青鳥竜 地上行動 移動後

# 抽選
    loot spawn ~ 0 ~ loot ranposu:landing/after_move

# 噛みつき
    execute if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmBite
# 移動ひっかき
    execute if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmMoveClaw
# タックル
    execute if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmTackle

# 終了
    kill @e[type=item,nbt={Item:{tag:{ActPaper:1}}}]
    tag @s remove StateAfterMove

say after move