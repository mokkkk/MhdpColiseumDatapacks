scoreboard players add @s aj.dino.animation.jump_tail_r_less_frame_2.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.dino.animation.jump_tail_r_less_frame_2.local_anim_time
function animated_java:dino/zzzzzzzz/animations/jump_tail_r_less_frame_2/apply_frame_as_root
execute if score @s aj.dino.animation.jump_tail_r_less_frame_2.local_anim_time matches 40.. run function animated_java:dino/zzzzzzzz/animations/jump_tail_r_less_frame_2/end