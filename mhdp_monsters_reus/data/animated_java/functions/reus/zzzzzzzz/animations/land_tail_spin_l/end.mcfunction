execute if score @s aj.reus.animation.land_tail_spin_l.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:reus/zzzzzzzz/animations/land_tail_spin_l/end_loop
execute if score @s aj.reus.animation.land_tail_spin_l.loop_mode = $aj.loop_mode.once aj.i run function animated_java:reus/animations/land_tail_spin_l/stop
execute if score @s aj.reus.animation.land_tail_spin_l.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:reus/animations/land_tail_spin_l/pause