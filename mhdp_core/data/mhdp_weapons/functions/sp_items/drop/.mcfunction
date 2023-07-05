#> mhdp_weapons:sp_items/drop/
#
# 特殊装具投げ捨て時

# 投げられた特殊装具を対象に，所持者の元に戻るファンクションを実行
    execute as @e[type=item] if entity @s[nbt={Item:{tag:{MhdpSpItem:1b}}}] run tag @s add TargetItem
    execute as @e[type=item,tag=TargetItem] run function mhdp_weapons:sp_items/drop/give

# 終了
    kill @e[type=item,tag=TargetItem]
    data remove storage mhdp_core:temp Temp
