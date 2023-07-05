execute if score @s aj.ranposu.animation.death.loop_mode = $aj.loop_mode.loop aj.i run function zzz_ranposu_internal:animations/death/end_loop
execute if score @s aj.ranposu.animation.death.loop_mode = $aj.loop_mode.once aj.i run function ranposu:animations/death/stop
execute if score @s aj.ranposu.animation.death.loop_mode = $aj.loop_mode.hold aj.i run function ranposu:animations/death/pause