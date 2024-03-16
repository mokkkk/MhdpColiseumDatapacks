scoreboard players add @s aj.dino.animation.breath.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.dino.animation.breath.local_anim_time
function animated_java:dino/zzzzzzzz/animations/breath/apply_frame_as_root
execute if score @s aj.dino.animation.breath.local_anim_time matches 62.. run function animated_java:dino/zzzzzzzz/animations/breath/end