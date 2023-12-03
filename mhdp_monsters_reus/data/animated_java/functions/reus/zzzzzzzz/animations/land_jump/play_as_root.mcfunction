scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.reus.animation.land_jump.local_anim_time 0
scoreboard players set @s aj.reus.animation.land_jump.loop_mode 2
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:reus/zzzzzzzz/animations/land_jump/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.reus.animation.land_jump