execute if score @s aj.ranposu.animation.damage_flying.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:ranposu/zzzzzzzz/animations/damage_flying/end_loop
execute if score @s aj.ranposu.animation.damage_flying.loop_mode = $aj.loop_mode.once aj.i run function animated_java:ranposu/animations/damage_flying/stop
execute if score @s aj.ranposu.animation.damage_flying.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:ranposu/animations/damage_flying/pause