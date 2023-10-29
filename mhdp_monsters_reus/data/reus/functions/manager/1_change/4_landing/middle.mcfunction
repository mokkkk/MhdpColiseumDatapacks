#> ranposu:manager/1_change/4_landing/middle
#
# 青鳥竜 地上行動 中

# 抽選
    loot spawn ~ 0 ~ loot ranposu:landing/middle

# 移動
    execute if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmMove
# 移動ひっかき
    execute if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmMoveClaw
# 飛び掛かり
    execute if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmJump
# ステップ飛び掛かり（怒り中のみ）
    execute if entity @e[type=item,nbt={Item:{tag:{Act:4}}}] run function ranposu:manager/1_change/2_animations/step_jump

# 終了
    kill @e[type=item,nbt={Item:{tag:{ActPaper:1}}}]

say land middle