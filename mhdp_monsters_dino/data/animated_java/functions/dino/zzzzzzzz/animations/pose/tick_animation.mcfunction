scoreboard players add @s aj.dino.animation.pose.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.dino.animation.pose.local_anim_time
function animated_java:dino/zzzzzzzz/animations/pose/apply_frame_as_root
execute if score @s aj.dino.animation.pose.local_anim_time matches 1.. run function animated_java:dino/zzzzzzzz/animations/pose/end