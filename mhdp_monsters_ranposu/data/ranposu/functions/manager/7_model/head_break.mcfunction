#> ranposu:manager/7_model/head_break
#
# 青鳥竜モデル変更処理 頭破壊

# 部位破壊タグ追加
    tag @s add StateBreakHead
# 通常
    execute on passengers if entity @s[tag=aj.ranposu.bone.head_upper] run data modify entity @s item.tag.CustomModelData set value 25
