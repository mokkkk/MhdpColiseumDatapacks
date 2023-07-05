#> asa_animator:general/check_ground
#
# モンスターの共通処理
# 接地用function

summon marker ~ ~ ~ {Tags:["GroundPos"]}
execute as @e[type=marker,tag=GroundPos] at @s align y run tp @s ~ ~ ~
execute as @e[type=marker,tag=GroundPos] at @s run function asa_animator:general/check_ground_
execute positioned as @e[type=marker,tag=GroundPos,limit=1] align y run tp @s ~ ~-0.4 ~
kill @e[type=marker,tag=GroundPos]