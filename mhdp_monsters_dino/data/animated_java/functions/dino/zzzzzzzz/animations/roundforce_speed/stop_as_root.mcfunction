scoreboard players set @s aj.dino.animation.roundforce_speed.local_anim_time 0
tag @s remove aj.dino.animation.roundforce_speed
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.dino.disable_command_keyframes
function animated_java:dino/zzzzzzzz/animations/roundforce_speed/tree/leaf_0
tag @s remove aj.dino.disable_command_keyframes