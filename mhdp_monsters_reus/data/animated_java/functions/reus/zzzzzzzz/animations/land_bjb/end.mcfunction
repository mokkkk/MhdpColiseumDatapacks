execute if score @s aj.reus.animation.land_bjb.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:reus/zzzzzzzz/animations/land_bjb/end_loop
execute if score @s aj.reus.animation.land_bjb.loop_mode = $aj.loop_mode.once aj.i run function animated_java:reus/animations/land_bjb/stop
execute if score @s aj.reus.animation.land_bjb.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:reus/animations/land_bjb/pause