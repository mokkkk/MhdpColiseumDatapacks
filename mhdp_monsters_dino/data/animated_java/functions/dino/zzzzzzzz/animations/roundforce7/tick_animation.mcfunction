scoreboard players add @s aj.dino.animation.roundforce7.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.dino.animation.roundforce7.local_anim_time
function animated_java:dino/zzzzzzzz/animations/roundforce7/apply_frame_as_root
execute if score @s aj.dino.animation.roundforce7.local_anim_time matches 160.. run function animated_java:dino/zzzzzzzz/animations/roundforce7/end