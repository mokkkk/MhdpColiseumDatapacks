scoreboard players add @s aj.dino.animation.step_side_l.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.dino.animation.step_side_l.local_anim_time
function animated_java:dino/zzzzzzzz/animations/step_side_l/apply_frame_as_root
execute if score @s aj.dino.animation.step_side_l.local_anim_time matches 28.. run function animated_java:dino/zzzzzzzz/animations/step_side_l/end