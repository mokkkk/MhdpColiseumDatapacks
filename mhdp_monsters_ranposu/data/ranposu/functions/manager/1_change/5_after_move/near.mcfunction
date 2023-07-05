#> ranposu:manager/1_change/4_landing/near
#
# 青鳥竜 地上行動 近

# 抽選
    loot spawn ~ 0 ~ loot ranposu:landing/near

# 噛みつき
    execute if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmBite
# 尻尾なぎはらい
    execute if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run function ranposu:manager/1_change/2_animations/tail
# ひっかき
    execute if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmClaw
# 移動ひっかき
    execute if entity @e[type=item,nbt={Item:{tag:{Act:4}}}] run tag @s add AnmMoveClaw
# タックル
    execute if entity @e[type=item,nbt={Item:{tag:{Act:5}}}] run tag @s add AnmTackle
# バックステップ
    execute if entity @e[type=item,nbt={Item:{tag:{Act:6}}}] run tag @s add AnmStepBack
# ステップ飛び掛かり（怒り中のみ）
    execute if entity @e[type=item,nbt={Item:{tag:{Act:7}}}] run function ranposu:manager/1_change/2_animations/step_jump

# 終了
    kill @e[type=item,nbt={Item:{tag:{ActPaper:1}}}]

say land near