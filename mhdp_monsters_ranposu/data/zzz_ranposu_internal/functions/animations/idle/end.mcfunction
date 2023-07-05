execute if score @s aj.ranposu.animation.idle.loop_mode = $aj.loop_mode.loop aj.i run function zzz_ranposu_internal:animations/idle/end_loop
execute if score @s aj.ranposu.animation.idle.loop_mode = $aj.loop_mode.once aj.i run function ranposu:animations/idle/stop
execute if score @s aj.ranposu.animation.idle.loop_mode = $aj.loop_mode.hold aj.i run function ranposu:animations/idle/pause