scoreboard players set @s aj.dino.animation.jump_tail_r_less_frame_2.local_anim_time 0
tag @s remove aj.dino.animation.jump_tail_r_less_frame_2
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.dino.disable_command_keyframes
function animated_java:dino/zzzzzzzz/animations/jump_tail_r_less_frame_2/tree/leaf_0
tag @s remove aj.dino.disable_command_keyframes