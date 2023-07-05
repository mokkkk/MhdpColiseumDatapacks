scoreboard players add @s aj.ranposu.animation.turn_right.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.ranposu.animation.turn_right.local_anim_time
function zzz_ranposu_internal:animations/turn_right/apply_frame_as_root
execute if score @s aj.ranposu.animation.turn_right.local_anim_time matches 30.. run function zzz_ranposu_internal:animations/turn_right/end