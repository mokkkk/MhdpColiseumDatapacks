#> ranposu:manager/7_model/head_blink
#
# 青鳥竜モデル変更処理 まばたき

# 通常
    execute unless entity @s[tag=StateBreakHead] on passengers if entity @s[tag=aj.ranposu.bone.head_upper] run data modify entity @s item.tag.CustomModelData set value 100000
# 部位破壊時
    execute if entity @s[tag=StateBreakHead] on passengers if entity @s[tag=aj.ranposu.bone.head_upper] run data modify entity @s item.tag.CustomModelData set value 100002
