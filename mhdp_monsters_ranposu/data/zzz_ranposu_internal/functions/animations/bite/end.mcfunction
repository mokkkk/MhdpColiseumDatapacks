execute if score @s aj.ranposu.animation.bite.loop_mode = $aj.loop_mode.loop aj.i run function zzz_ranposu_internal:animations/bite/end_loop
execute if score @s aj.ranposu.animation.bite.loop_mode = $aj.loop_mode.once aj.i run function ranposu:animations/bite/stop
execute if score @s aj.ranposu.animation.bite.loop_mode = $aj.loop_mode.hold aj.i run function ranposu:animations/bite/pause