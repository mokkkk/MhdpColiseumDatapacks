scoreboard players set @s aj.ranposu.animation.down_end.local_anim_time 0
tag @s remove aj.ranposu.animation.down_end
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.ranposu.disable_command_keyframes
function animated_java:ranposu/zzzzzzzz/animations/down_end/tree/leaf_0
tag @s remove aj.ranposu.disable_command_keyframes