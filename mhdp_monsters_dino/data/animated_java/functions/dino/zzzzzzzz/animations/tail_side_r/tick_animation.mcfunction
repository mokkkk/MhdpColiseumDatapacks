scoreboard players add @s aj.dino.animation.tail_side_r.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.dino.animation.tail_side_r.local_anim_time
function animated_java:dino/zzzzzzzz/animations/tail_side_r/apply_frame_as_root
execute if score @s aj.dino.animation.tail_side_r.local_anim_time matches 92.. run function animated_java:dino/zzzzzzzz/animations/tail_side_r/end