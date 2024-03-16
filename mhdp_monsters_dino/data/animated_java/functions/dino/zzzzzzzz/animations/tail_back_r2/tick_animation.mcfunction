scoreboard players add @s aj.dino.animation.tail_back_r2.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.dino.animation.tail_back_r2.local_anim_time
function animated_java:dino/zzzzzzzz/animations/tail_back_r2/apply_frame_as_root
execute if score @s aj.dino.animation.tail_back_r2.local_anim_time matches 80.. run function animated_java:dino/zzzzzzzz/animations/tail_back_r2/end