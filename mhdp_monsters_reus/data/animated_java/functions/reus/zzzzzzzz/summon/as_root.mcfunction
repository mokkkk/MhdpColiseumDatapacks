execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.reus.rig_loaded 1
scoreboard players operation @s aj.reus.export_version = aj.reus.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:reus/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.reus.variant.default aj.id run function animated_java:reus/zzzzzzzz/apply_variant/default/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.reus.animation.land_idle aj.id run function animated_java:reus/zzzzzzzz/animations/land_idle/apply_frame_as_root
execute if score #animation aj.i = $aj.reus.animation.land_idle aj.id run scoreboard players operation @s aj.reus.animation.land_idle.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.reus.animation.land_voice aj.id run function animated_java:reus/zzzzzzzz/animations/land_voice/apply_frame_as_root
execute if score #animation aj.i = $aj.reus.animation.land_voice aj.id run scoreboard players operation @s aj.reus.animation.land_voice.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.reus.animation.land_dash_start aj.id run function animated_java:reus/zzzzzzzz/animations/land_dash_start/apply_frame_as_root
execute if score #animation aj.i = $aj.reus.animation.land_dash_start aj.id run scoreboard players operation @s aj.reus.animation.land_dash_start.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.reus.animation.land_dash aj.id run function animated_java:reus/zzzzzzzz/animations/land_dash/apply_frame_as_root
execute if score #animation aj.i = $aj.reus.animation.land_dash aj.id run scoreboard players operation @s aj.reus.animation.land_dash.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.reus.animation.land_dash_bite aj.id run function animated_java:reus/zzzzzzzz/animations/land_dash_bite/apply_frame_as_root
execute if score #animation aj.i = $aj.reus.animation.land_dash_bite aj.id run scoreboard players operation @s aj.reus.animation.land_dash_bite.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.reus.animation.land_tail_spin_r aj.id run function animated_java:reus/zzzzzzzz/animations/land_tail_spin_r/apply_frame_as_root
execute if score #animation aj.i = $aj.reus.animation.land_tail_spin_r aj.id run scoreboard players operation @s aj.reus.animation.land_tail_spin_r.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.reus.animation.land_tail_spin_l aj.id run function animated_java:reus/zzzzzzzz/animations/land_tail_spin_l/apply_frame_as_root
execute if score #animation aj.i = $aj.reus.animation.land_tail_spin_l aj.id run scoreboard players operation @s aj.reus.animation.land_tail_spin_l.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.reus.animation.land_bite_r aj.id run function animated_java:reus/zzzzzzzz/animations/land_bite_r/apply_frame_as_root
execute if score #animation aj.i = $aj.reus.animation.land_bite_r aj.id run scoreboard players operation @s aj.reus.animation.land_bite_r.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.reus.animation.land_bite_l aj.id run function animated_java:reus/zzzzzzzz/animations/land_bite_l/apply_frame_as_root
execute if score #animation aj.i = $aj.reus.animation.land_bite_l aj.id run scoreboard players operation @s aj.reus.animation.land_bite_l.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.reus.animation.land_chargebite aj.id run function animated_java:reus/zzzzzzzz/animations/land_chargebite/apply_frame_as_root
execute if score #animation aj.i = $aj.reus.animation.land_chargebite aj.id run scoreboard players operation @s aj.reus.animation.land_chargebite.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.reus.animation.land_after_attack aj.id run function animated_java:reus/zzzzzzzz/animations/land_after_attack/apply_frame_as_root
execute if score #animation aj.i = $aj.reus.animation.land_after_attack aj.id run scoreboard players operation @s aj.reus.animation.land_after_attack.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.reus.animation.land_backstep aj.id run function animated_java:reus/zzzzzzzz/animations/land_backstep/apply_frame_as_root
execute if score #animation aj.i = $aj.reus.animation.land_backstep aj.id run scoreboard players operation @s aj.reus.animation.land_backstep.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.reus.animation.land_breath aj.id run function animated_java:reus/zzzzzzzz/animations/land_breath/apply_frame_as_root
execute if score #animation aj.i = $aj.reus.animation.land_breath aj.id run scoreboard players operation @s aj.reus.animation.land_breath.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.reus.animation.land_jump aj.id run function animated_java:reus/zzzzzzzz/animations/land_jump/apply_frame_as_root
execute if score #animation aj.i = $aj.reus.animation.land_jump aj.id run scoreboard players operation @s aj.reus.animation.land_jump.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.reus.animation.fly_idle aj.id run function animated_java:reus/zzzzzzzz/animations/fly_idle/apply_frame_as_root
execute if score #animation aj.i = $aj.reus.animation.fly_idle aj.id run scoreboard players operation @s aj.reus.animation.fly_idle.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.reus.animation.fly_attack aj.id run function animated_java:reus/zzzzzzzz/animations/fly_attack/apply_frame_as_root
execute if score #animation aj.i = $aj.reus.animation.fly_attack aj.id run scoreboard players operation @s aj.reus.animation.fly_attack.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.reus.animation.fly_tail aj.id run function animated_java:reus/zzzzzzzz/animations/fly_tail/apply_frame_as_root
execute if score #animation aj.i = $aj.reus.animation.fly_tail aj.id run scoreboard players operation @s aj.reus.animation.fly_tail.local_anim_time = #frame aj.i
execute at @s run function #animated_java:reus/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i