execute if score @s aj.dino.animation.bite_double_normal.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:dino/zzzzzzzz/animations/bite_double_normal/end_loop
execute if score @s aj.dino.animation.bite_double_normal.loop_mode = $aj.loop_mode.once aj.i run function animated_java:dino/animations/bite_double_normal/stop
execute if score @s aj.dino.animation.bite_double_normal.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:dino/animations/bite_double_normal/pause