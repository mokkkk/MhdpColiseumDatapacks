execute if score @s aj.ranposu.animation.move_claw.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:ranposu/zzzzzzzz/animations/move_claw/end_loop
execute if score @s aj.ranposu.animation.move_claw.loop_mode = $aj.loop_mode.once aj.i run function animated_java:ranposu/animations/move_claw/stop
execute if score @s aj.ranposu.animation.move_claw.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:ranposu/animations/move_claw/pause