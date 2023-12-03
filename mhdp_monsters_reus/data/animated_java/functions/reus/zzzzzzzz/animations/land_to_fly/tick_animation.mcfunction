scoreboard players add @s aj.reus.animation.land_to_fly.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.reus.animation.land_to_fly.local_anim_time
function animated_java:reus/zzzzzzzz/animations/land_to_fly/apply_frame_as_root
execute if score @s aj.reus.animation.land_to_fly.local_anim_time matches 22.. run function animated_java:reus/zzzzzzzz/animations/land_to_fly/end