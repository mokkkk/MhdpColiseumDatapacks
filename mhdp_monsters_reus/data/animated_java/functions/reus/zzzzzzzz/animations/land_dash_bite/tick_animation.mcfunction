scoreboard players add @s aj.reus.animation.land_dash_bite.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.reus.animation.land_dash_bite.local_anim_time
function animated_java:reus/zzzzzzzz/animations/land_dash_bite/apply_frame_as_root
execute if score @s aj.reus.animation.land_dash_bite.local_anim_time matches 68.. run function animated_java:reus/zzzzzzzz/animations/land_dash_bite/end