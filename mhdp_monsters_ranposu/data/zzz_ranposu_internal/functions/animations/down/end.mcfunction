execute if score @s aj.ranposu.animation.down.loop_mode = $aj.loop_mode.loop aj.i run function zzz_ranposu_internal:animations/down/end_loop
execute if score @s aj.ranposu.animation.down.loop_mode = $aj.loop_mode.once aj.i run function animated_java:ranposu/animations/down/stop
execute if score @s aj.ranposu.animation.down.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:ranposu/animations/down/pause