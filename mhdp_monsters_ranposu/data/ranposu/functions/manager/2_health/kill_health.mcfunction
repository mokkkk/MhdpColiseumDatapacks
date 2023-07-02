#> ranposu:manager/2_health/kill_health
#
# 青鳥竜 消去処理 当たり判定消去

execute as @e[type=slime,tag=RanposuHealth] run data modify entity @s {} merge value {Size:0,Tags:["RanposuHealth","Death"]}
execute as @e[type=slime,tag=RanposuHealth] run tp @s ~ 0 ~
tag @e[type=slime,tag=RanposuHealth] add Death
kill @e[type=slime,tag=RanposuHealth]
