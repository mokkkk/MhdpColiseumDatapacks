scoreboard players add @s aj.reus.animation.fly_jump.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.reus.animation.fly_jump.local_anim_time
function animated_java:reus/zzzzzzzz/animations/fly_jump/apply_frame_as_root
execute if score @s aj.reus.animation.fly_jump.local_anim_time matches 115.. run function animated_java:reus/zzzzzzzz/animations/fly_jump/end