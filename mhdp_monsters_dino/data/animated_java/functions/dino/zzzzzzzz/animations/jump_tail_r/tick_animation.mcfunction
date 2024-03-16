scoreboard players add @s aj.dino.animation.jump_tail_r.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.dino.animation.jump_tail_r.local_anim_time
function animated_java:dino/zzzzzzzz/animations/jump_tail_r/apply_frame_as_root
execute if score @s aj.dino.animation.jump_tail_r.local_anim_time matches 120.. run function animated_java:dino/zzzzzzzz/animations/jump_tail_r/end