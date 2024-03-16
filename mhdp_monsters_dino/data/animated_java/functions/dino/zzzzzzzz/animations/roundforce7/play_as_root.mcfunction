scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.dino.animation.roundforce7.local_anim_time 0
scoreboard players set @s aj.dino.animation.roundforce7.loop_mode 2
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:dino/zzzzzzzz/animations/roundforce7/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.dino.animation.roundforce7