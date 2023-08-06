execute unless score @s aj.ranposu.rig_loaded = @s aj.ranposu.rig_loaded run function animated_java:ranposu/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:ranposu/zzzzzzzz/animations/tick
function #animated_java:ranposu/on_tick/as_root