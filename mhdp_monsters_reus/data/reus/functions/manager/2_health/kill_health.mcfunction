#> reus:manager/2_health/kill_health
#
# 火竜 消去処理 当たり判定消去

execute as @e[type=slime,tag=ReusHealth] run data modify entity @s {} merge value {Size:0,Tags:["ReusHealth","Death"]}
execute as @e[type=slime,tag=ReusHealth] run tp @s ~ 0 ~
tag @e[type=slime,tag=ReusHealth] add Death
kill @e[type=slime,tag=ReusHealth]
