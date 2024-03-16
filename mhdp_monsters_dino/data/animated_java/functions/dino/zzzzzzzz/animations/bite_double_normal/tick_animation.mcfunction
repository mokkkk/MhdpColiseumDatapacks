scoreboard players add @s aj.dino.animation.bite_double_normal.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.dino.animation.bite_double_normal.local_anim_time
function animated_java:dino/zzzzzzzz/animations/bite_double_normal/apply_frame_as_root
execute if score @s aj.dino.animation.bite_double_normal.local_anim_time matches 79.. run function animated_java:dino/zzzzzzzz/animations/bite_double_normal/end