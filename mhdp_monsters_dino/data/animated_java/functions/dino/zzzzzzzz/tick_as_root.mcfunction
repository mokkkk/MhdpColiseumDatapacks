execute unless score @s aj.dino.rig_loaded = @s aj.dino.rig_loaded run function animated_java:dino/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:dino/zzzzzzzz/animations/tick
function #animated_java:dino/on_tick/as_root