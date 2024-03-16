scoreboard players add @s aj.dino.animation.polish.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.dino.animation.polish.local_anim_time
function animated_java:dino/zzzzzzzz/animations/polish/apply_frame_as_root
execute if score @s aj.dino.animation.polish.local_anim_time matches 128.. run function animated_java:dino/zzzzzzzz/animations/polish/end