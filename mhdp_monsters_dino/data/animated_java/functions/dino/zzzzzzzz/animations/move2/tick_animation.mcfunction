scoreboard players add @s aj.dino.animation.move2.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.dino.animation.move2.local_anim_time
function animated_java:dino/zzzzzzzz/animations/move2/apply_frame_as_root
execute if score @s aj.dino.animation.move2.local_anim_time matches 124.. run function animated_java:dino/zzzzzzzz/animations/move2/end