execute if score @s aj.reus.animation.land_damage_head.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:reus/zzzzzzzz/animations/land_damage_head/end_loop
execute if score @s aj.reus.animation.land_damage_head.loop_mode = $aj.loop_mode.once aj.i run function animated_java:reus/animations/land_damage_head/stop
execute if score @s aj.reus.animation.land_damage_head.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:reus/animations/land_damage_head/pause