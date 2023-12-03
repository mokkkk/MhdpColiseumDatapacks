scoreboard players add @s aj.reus.animation.land_down_end_l.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.reus.animation.land_down_end_l.local_anim_time
function animated_java:reus/zzzzzzzz/animations/land_down_end_l/apply_frame_as_root
execute if score @s aj.reus.animation.land_down_end_l.local_anim_time matches 36.. run function animated_java:reus/zzzzzzzz/animations/land_down_end_l/end