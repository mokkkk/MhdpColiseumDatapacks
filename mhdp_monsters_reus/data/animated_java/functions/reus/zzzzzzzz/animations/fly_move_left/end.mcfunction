execute if score @s aj.reus.animation.fly_move_left.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:reus/zzzzzzzz/animations/fly_move_left/end_loop
execute if score @s aj.reus.animation.fly_move_left.loop_mode = $aj.loop_mode.once aj.i run function animated_java:reus/animations/fly_move_left/stop
execute if score @s aj.reus.animation.fly_move_left.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:reus/animations/fly_move_left/pause