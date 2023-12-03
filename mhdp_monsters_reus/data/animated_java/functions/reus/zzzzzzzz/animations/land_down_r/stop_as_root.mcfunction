scoreboard players set @s aj.reus.animation.land_down_r.local_anim_time 0
tag @s remove aj.reus.animation.land_down_r
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.reus.disable_command_keyframes
function animated_java:reus/zzzzzzzz/animations/land_down_r/tree/leaf_0
tag @s remove aj.reus.disable_command_keyframes