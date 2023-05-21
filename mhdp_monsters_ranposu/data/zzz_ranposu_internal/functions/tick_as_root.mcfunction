execute unless score @s aj.ranposu.rig_loaded matches 1 run function zzz_ranposu_internal:on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function #ranposu:on_tick
function zzz_ranposu_internal:animations/tick