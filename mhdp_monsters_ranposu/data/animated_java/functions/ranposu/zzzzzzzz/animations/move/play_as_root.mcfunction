scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.ranposu.animation.move.local_anim_time 0
scoreboard players set @s aj.ranposu.animation.move.loop_mode 0
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:ranposu/zzzzzzzz/animations/move/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.ranposu.animation.move