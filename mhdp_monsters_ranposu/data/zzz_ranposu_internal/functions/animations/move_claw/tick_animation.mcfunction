scoreboard players add @s aj.ranposu.animation.move_claw.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.ranposu.animation.move_claw.local_anim_time
function zzz_ranposu_internal:animations/move_claw/apply_frame_as_root
execute if score @s aj.ranposu.animation.move_claw.local_anim_time matches 55.. run function zzz_ranposu_internal:animations/move_claw/end