#> ranposu:manager/7_model/head_blink_end
#
# 青鳥竜モデル変更処理 開眼

# 通常
    execute unless entity @s[tag=StateBreakHead] on passengers if entity @s[tag=aj.ranposu.bone.head_upper] run data modify entity @s item.tag.CustomModelData set value 9
# 部位破壊時
    execute if entity @s[tag=StateBreakHead] on passengers if entity @s[tag=aj.ranposu.bone.head_upper] run data modify entity @s item.tag.CustomModelData set value 25
