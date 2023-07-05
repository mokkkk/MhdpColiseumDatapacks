scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.ranposu.animation.turn_left.local_anim_time 0
scoreboard players set @s aj.ranposu.animation.turn_left.loop_mode 2
execute on passengers run data modify entity @s interpolation_duration set value 0
function zzz_ranposu_internal:animations/turn_left/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.ranposu.animation.turn_left