execute if score @s aj.ranposu.animation.move.loop_mode = $aj.loop_mode.loop aj.i run function zzz_ranposu_internal:animations/move/end_loop
execute if score @s aj.ranposu.animation.move.loop_mode = $aj.loop_mode.once aj.i run function ranposu:animations/move/stop
execute if score @s aj.ranposu.animation.move.loop_mode = $aj.loop_mode.hold aj.i run function ranposu:animations/move/pause