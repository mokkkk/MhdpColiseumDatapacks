scoreboard players add @s aj.reus.animation.fly_chargebreath_sweap.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.reus.animation.fly_chargebreath_sweap.local_anim_time
function animated_java:reus/zzzzzzzz/animations/fly_chargebreath_sweap/apply_frame_as_root
execute if score @s aj.reus.animation.fly_chargebreath_sweap.local_anim_time matches 81.. run function animated_java:reus/zzzzzzzz/animations/fly_chargebreath_sweap/end