scoreboard players add @s aj.reus.animation.land_idle.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.reus.animation.land_idle.local_anim_time
function animated_java:reus/zzzzzzzz/animations/land_idle/apply_frame_as_root
execute if score @s aj.reus.animation.land_idle.local_anim_time matches 87.. run function animated_java:reus/zzzzzzzz/animations/land_idle/end