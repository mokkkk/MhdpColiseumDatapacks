scoreboard players add @s aj.dino.animation.tail_flame_l.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.dino.animation.tail_flame_l.local_anim_time
function animated_java:dino/zzzzzzzz/animations/tail_flame_l/apply_frame_as_root
execute if score @s aj.dino.animation.tail_flame_l.local_anim_time matches 97.. run function animated_java:dino/zzzzzzzz/animations/tail_flame_l/end