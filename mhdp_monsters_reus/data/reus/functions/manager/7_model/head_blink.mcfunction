#> reus:manager/7_model/head_blink
#
# 火竜モデル変更処理 まばたき

# 通常
    execute unless entity @s[tag=StateBreakHead] on passengers if entity @s[tag=aj.reus.bone.head_upper] run data modify entity @s item.tag.CustomModelData set value 100003
# 部位破壊時
    execute if entity @s[tag=StateBreakHead] on passengers if entity @s[tag=aj.reus.bone.head_upper] run data modify entity @s item.tag.CustomModelData set value 100005
