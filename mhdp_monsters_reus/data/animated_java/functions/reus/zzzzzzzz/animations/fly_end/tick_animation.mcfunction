scoreboard players add @s aj.reus.animation.fly_end.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.reus.animation.fly_end.local_anim_time
function animated_java:reus/zzzzzzzz/animations/fly_end/apply_frame_as_root
execute if score @s aj.reus.animation.fly_end.local_anim_time matches 40.. run function animated_java:reus/zzzzzzzz/animations/fly_end/end