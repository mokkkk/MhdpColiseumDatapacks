scoreboard players set @s aj.dino.animation.tail_side_r.local_anim_time 0
tag @s remove aj.dino.animation.tail_side_r
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.dino.disable_command_keyframes
function animated_java:dino/zzzzzzzz/animations/tail_side_r/tree/leaf_0
tag @s remove aj.dino.disable_command_keyframes