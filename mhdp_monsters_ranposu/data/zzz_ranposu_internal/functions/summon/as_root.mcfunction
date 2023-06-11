execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.ranposu.rig_loaded 1
scoreboard players operation @s aj.ranposu.export_version = aj.ranposu.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function zzz_ranposu_internal:summon/as_rig_entities
execute if score #variant aj.i = $aj.ranposu.variant.default aj.id run function zzz_ranposu_internal:apply_variant/default_as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.ranposu.animation.idle aj.id run function zzz_ranposu_internal:animations/idle/apply_frame_as_root
execute if score #animation aj.i = $aj.ranposu.animation.idle aj.id run scoreboard players operation @s aj.ranposu.animation.idle.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.ranposu.animation.bite aj.id run function zzz_ranposu_internal:animations/bite/apply_frame_as_root
execute if score #animation aj.i = $aj.ranposu.animation.bite aj.id run scoreboard players operation @s aj.ranposu.animation.bite.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.ranposu.animation.claw aj.id run function zzz_ranposu_internal:animations/claw/apply_frame_as_root
execute if score #animation aj.i = $aj.ranposu.animation.claw aj.id run scoreboard players operation @s aj.ranposu.animation.claw.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.ranposu.animation.tail_right aj.id run function zzz_ranposu_internal:animations/tail_right/apply_frame_as_root
execute if score #animation aj.i = $aj.ranposu.animation.tail_right aj.id run scoreboard players operation @s aj.ranposu.animation.tail_right.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.ranposu.animation.tail_left aj.id run function zzz_ranposu_internal:animations/tail_left/apply_frame_as_root
execute if score #animation aj.i = $aj.ranposu.animation.tail_left aj.id run scoreboard players operation @s aj.ranposu.animation.tail_left.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.ranposu.animation.move_claw aj.id run function zzz_ranposu_internal:animations/move_claw/apply_frame_as_root
execute if score #animation aj.i = $aj.ranposu.animation.move_claw aj.id run scoreboard players operation @s aj.ranposu.animation.move_claw.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.ranposu.animation.jump aj.id run function zzz_ranposu_internal:animations/jump/apply_frame_as_root
execute if score #animation aj.i = $aj.ranposu.animation.jump aj.id run scoreboard players operation @s aj.ranposu.animation.jump.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.ranposu.animation.tackle aj.id run function zzz_ranposu_internal:animations/tackle/apply_frame_as_root
execute if score #animation aj.i = $aj.ranposu.animation.tackle aj.id run scoreboard players operation @s aj.ranposu.animation.tackle.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.ranposu.animation.step_jump_right aj.id run function zzz_ranposu_internal:animations/step_jump_right/apply_frame_as_root
execute if score #animation aj.i = $aj.ranposu.animation.step_jump_right aj.id run scoreboard players operation @s aj.ranposu.animation.step_jump_right.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.ranposu.animation.step_jump_left aj.id run function zzz_ranposu_internal:animations/step_jump_left/apply_frame_as_root
execute if score #animation aj.i = $aj.ranposu.animation.step_jump_left aj.id run scoreboard players operation @s aj.ranposu.animation.step_jump_left.local_anim_time = #frame aj.i
execute at @s run function #ranposu:on_summon_as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i