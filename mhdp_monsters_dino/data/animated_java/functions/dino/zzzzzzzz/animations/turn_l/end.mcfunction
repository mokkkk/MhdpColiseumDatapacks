execute if score @s aj.dino.animation.turn_l.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:dino/zzzzzzzz/animations/turn_l/end_loop
execute if score @s aj.dino.animation.turn_l.loop_mode = $aj.loop_mode.once aj.i run function animated_java:dino/animations/turn_l/stop
execute if score @s aj.dino.animation.turn_l.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:dino/animations/turn_l/pause