scoreboard players set @s aj.ranposu.animation.move_claw.local_anim_time 0
tag @s remove aj.ranposu.animation.move_claw
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.ranposu.disable_command_keyframes
function zzz_ranposu_internal:animations/move_claw/tree/leaf_0
tag @s remove aj.ranposu.disable_command_keyframes