scoreboard players set @s aj.ranposu.animation.tail_right.local_anim_time 0
tag @s remove aj.ranposu.animation.tail_right
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.ranposu.disable_command_keyframes
function zzz_ranposu_internal:animations/tail_right/tree/leaf_0
tag @s remove aj.ranposu.disable_command_keyframes