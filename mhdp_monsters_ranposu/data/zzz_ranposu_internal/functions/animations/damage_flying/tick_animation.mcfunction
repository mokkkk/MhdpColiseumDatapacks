scoreboard players add @s aj.ranposu.animation.damage_flying.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.ranposu.animation.damage_flying.local_anim_time
function zzz_ranposu_internal:animations/damage_flying/apply_frame_as_root
execute if score @s aj.ranposu.animation.damage_flying.local_anim_time matches 20.. run function zzz_ranposu_internal:animations/damage_flying/end