scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.dino.animation.tail_side_r.local_anim_time 0
scoreboard players set @s aj.dino.animation.tail_side_r.loop_mode 2
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:dino/zzzzzzzz/animations/tail_side_r/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.dino.animation.tail_side_r