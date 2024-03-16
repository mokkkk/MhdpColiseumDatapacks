scoreboard players add @s aj.dino.animation.bite_double_anger.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.dino.animation.bite_double_anger.local_anim_time
function animated_java:dino/zzzzzzzz/animations/bite_double_anger/apply_frame_as_root
execute if score @s aj.dino.animation.bite_double_anger.local_anim_time matches 65.. run function animated_java:dino/zzzzzzzz/animations/bite_double_anger/end