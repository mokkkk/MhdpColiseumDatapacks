scoreboard players add @s aj.reus.animation.land_damage_down_l.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.reus.animation.land_damage_down_l.local_anim_time
function animated_java:reus/zzzzzzzz/animations/land_damage_down_l/apply_frame_as_root
execute if score @s aj.reus.animation.land_damage_down_l.local_anim_time matches 30.. run function animated_java:reus/zzzzzzzz/animations/land_damage_down_l/end