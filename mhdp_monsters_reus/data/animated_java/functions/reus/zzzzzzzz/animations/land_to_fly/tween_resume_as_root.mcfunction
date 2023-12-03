function animated_java:reus/zzzzzzzz/animations/land_to_fly/resume_as_root
function animated_java:reus/zzzzzzzz/animations/land_to_fly/tween_as_root
function animated_java:reus/zzzzzzzz/animations/land_to_fly/apply_frame_as_root
execute if score #tween_duration aj.i matches ..0 on passengers run data modify entity @s interpolation_duration set value 1
scoreboard players reset #tween_duration aj.i