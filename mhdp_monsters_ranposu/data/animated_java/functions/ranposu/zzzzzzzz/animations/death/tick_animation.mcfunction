scoreboard players add @s aj.ranposu.animation.death.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.ranposu.animation.death.local_anim_time
function animated_java:ranposu/zzzzzzzz/animations/death/apply_frame_as_root
execute if score @s aj.ranposu.animation.death.local_anim_time matches 140.. run function animated_java:ranposu/zzzzzzzz/animations/death/end