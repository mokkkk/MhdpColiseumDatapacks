scoreboard players set @s aj.reus.animation.land_anger.local_anim_time 0
tag @s remove aj.reus.animation.land_anger
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.reus.disable_command_keyframes
function animated_java:reus/zzzzzzzz/animations/land_anger/tree/leaf_0
tag @s remove aj.reus.disable_command_keyframes