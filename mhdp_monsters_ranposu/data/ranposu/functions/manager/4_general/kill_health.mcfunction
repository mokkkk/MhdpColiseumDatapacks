#> ranposu:manager/4_general/kill_health
#
# 青鳥竜 消去処理 当たり判定消去

execute as @e[type=slime,tag=RanposuHealth] run data modify entity @s Size set value 0
execute as @e[type=slime,tag=RanposuHealth] run tp @s ~ 0 ~
tag @e[type=slime,tag=RanposuHealth] add Death
kill @e[type=slime,tag=RanposuHealth]
