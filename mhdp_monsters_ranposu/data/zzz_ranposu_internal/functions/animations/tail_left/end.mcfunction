execute if score @s aj.ranposu.animation.tail_left.loop_mode = $aj.loop_mode.loop aj.i run function zzz_ranposu_internal:animations/tail_left/end_loop
execute if score @s aj.ranposu.animation.tail_left.loop_mode = $aj.loop_mode.once aj.i run function ranposu:animations/tail_left/stop
execute if score @s aj.ranposu.animation.tail_left.loop_mode = $aj.loop_mode.hold aj.i run function ranposu:animations/tail_left/pause