scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.reus.animation.fly_idle.local_anim_time 0
scoreboard players set @s aj.reus.animation.fly_idle.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:reus/zzzzzzzz/animations/fly_idle/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.reus.animation.fly_idle