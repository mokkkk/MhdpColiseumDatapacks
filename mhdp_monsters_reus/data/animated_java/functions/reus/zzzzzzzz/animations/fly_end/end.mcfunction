execute if score @s aj.reus.animation.fly_end.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:reus/zzzzzzzz/animations/fly_end/end_loop
execute if score @s aj.reus.animation.fly_end.loop_mode = $aj.loop_mode.once aj.i run function animated_java:reus/animations/fly_end/stop
execute if score @s aj.reus.animation.fly_end.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:reus/animations/fly_end/pause