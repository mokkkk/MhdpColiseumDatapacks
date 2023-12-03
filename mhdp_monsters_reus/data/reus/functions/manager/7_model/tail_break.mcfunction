#> reus:manager/7_model/tail_break
#
# 火竜モデル変更処理 尻尾破壊

# 通常
    execute on passengers if entity @s[tag=aj.reus.bone.tail_2] run data modify entity @s item.tag.CustomModelData set value 100008
    execute on passengers if entity @s[tag=aj.reus.bone.tail_3] run data modify entity @s item.tag.CustomModelData set value 1
# 尻尾の当たり判定縮小
    execute as @e[type=slime,tag=ReusHealth,tag=Tail2] run data modify entity @s {} merge value {Size:0,Tags:["ReusHealth","Death"]}
    execute as @e[type=slime,tag=ReusHealth,tag=Death] run tp @s ~ 0 ~
    kill @e[type=slime,tag=ReusHealth,tag=Death]
