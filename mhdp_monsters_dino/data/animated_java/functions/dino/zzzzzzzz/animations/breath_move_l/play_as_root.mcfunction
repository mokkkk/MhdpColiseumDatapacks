scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.dino.animation.breath_move_l.local_anim_time 0
scoreboard players set @s aj.dino.animation.breath_move_l.loop_mode 2
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:dino/zzzzzzzz/animations/breath_move_l/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.dino.animation.breath_move_l