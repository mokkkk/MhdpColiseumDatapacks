scoreboard players set @s aj.dino.animation.breath_move_l.local_anim_time 0
tag @s remove aj.dino.animation.breath_move_l
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.dino.disable_command_keyframes
function animated_java:dino/zzzzzzzz/animations/breath_move_l/tree/leaf_0
tag @s remove aj.dino.disable_command_keyframes