execute unless score @s aj.reus.rig_loaded = @s aj.reus.rig_loaded run function animated_java:reus/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:reus/zzzzzzzz/animations/tick
function #animated_java:reus/on_tick/as_root