scoreboard players add @s aj.ranposu.animation.damage.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.ranposu.animation.damage.local_anim_time
function animated_java:ranposu/zzzzzzzz/animations/damage/apply_frame_as_root
execute if score @s aj.ranposu.animation.damage.local_anim_time matches 65.. run function animated_java:ranposu/zzzzzzzz/animations/damage/end