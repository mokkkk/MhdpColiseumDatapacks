scoreboard players add @s aj.reus.animation.land_anger.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.reus.animation.land_anger.local_anim_time
function animated_java:reus/zzzzzzzz/animations/land_anger/apply_frame_as_root
execute if score @s aj.reus.animation.land_anger.local_anim_time matches 70.. run function animated_java:reus/zzzzzzzz/animations/land_anger/end