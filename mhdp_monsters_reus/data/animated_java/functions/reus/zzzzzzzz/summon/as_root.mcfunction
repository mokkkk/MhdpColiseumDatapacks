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
execute if score #animation aj.i = $aj.reus.animation.land_anger aj.id run function animated_java:reus/zzzzzzzz/animations/land_anger/apply_frame_as_root
execute if score #animation aj.i = $aj.reus.animation.land_anger aj.id run scoreboard players operation @s aj.reus.animation.land_anger.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.reus.animation.land_turn_r aj.id run function animated_java:reus/zzzzzzzz/animations/land_turn_r/apply_frame_as_root
execute if score #animation aj.i = $aj.reus.animation.land_turn_r aj.id run scoreboard players operation @s aj.reus.animation.land_turn_r.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.reus.animation.land_turn_l aj.id run function animated_java:reus/zzzzzzzz/animations/land_turn_l/apply_frame_as_root
execute if score #animation aj.i = $aj.reus.animation.land_turn_l aj.id run scoreboard players operation @s aj.reus.animation.land_turn_l.local_anim_time = #frame aj.i
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
execute if score #animation aj.i = $aj.reus.animation.land_to_fly aj.id run function animated_java:reus/zzzzzzzz/animations/land_to_fly/apply_frame_as_root
execute if score #animation aj.i = $aj.reus.animation.land_to_fly aj.id run scoreboard players operation @s aj.reus.animation.land_to_fly.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.reus.animation.land_bjb aj.id run function animated_java:reus/zzzzzzzz/animations/land_bjb/apply_frame_as_root
execute if score #animation aj.i = $aj.reus.animation.land_bjb aj.id run scoreboard players operation @s aj.reus.animation.land_bjb.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.reus.animation.land_move aj.id run function animated_java:reus/zzzzzzzz/animations/land_move/apply_frame_as_root
execute if score #animation aj.i = $aj.reus.animation.land_move aj.id run scoreboard players operation @s aj.reus.animation.land_move.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.reus.animation.land_damage_head aj.id run function animated_java:reus/zzzzzzzz/animations/land_damage_head/apply_frame_as_root
execute if score #animation aj.i = $aj.reus.animation.land_damage_head aj.id run scoreboard players operation @s aj.reus.animation.land_damage_head.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.reus.animation.land_damage_body aj.id run function animated_java:reus/zzzzzzzz/animations/land_damage_body/apply_frame_as_root
execute if score #animation aj.i = $aj.reus.animation.land_damage_body aj.id run scoreboard players operation @s aj.reus.animation.land_damage_body.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.reus.animation.land_damage_tail aj.id run function animated_java:reus/zzzzzzzz/animations/land_damage_tail/apply_frame_as_root
execute if score #animation aj.i = $aj.reus.animation.land_damage_tail aj.id run scoreboard players operation @s aj.reus.animation.land_damage_tail.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.reus.animation.land_damage_down_r aj.id run function animated_java:reus/zzzzzzzz/animations/land_damage_down_r/apply_frame_as_root
execute if score #animation aj.i = $aj.reus.animation.land_damage_down_r aj.id run scoreboard players operation @s aj.reus.animation.land_damage_down_r.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.reus.animation.land_damage_down_l aj.id run function animated_java:reus/zzzzzzzz/animations/land_damage_down_l/apply_frame_as_root
execute if score #animation aj.i = $aj.reus.animation.land_damage_down_l aj.id run scoreboard players operation @s aj.reus.animation.land_damage_down_l.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.reus.animation.land_down_r aj.id run function animated_java:reus/zzzzzzzz/animations/land_down_r/apply_frame_as_root
execute if score #animation aj.i = $aj.reus.animation.land_down_r aj.id run scoreboard players operation @s aj.reus.animation.land_down_r.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.reus.animation.land_down_l aj.id run function animated_java:reus/zzzzzzzz/animations/land_down_l/apply_frame_as_root
execute if score #animation aj.i = $aj.reus.animation.land_down_l aj.id run scoreboard players operation @s aj.reus.animation.land_down_l.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.reus.animation.land_down_end_r aj.id run function animated_java:reus/zzzzzzzz/animations/land_down_end_r/apply_frame_as_root
execute if score #animation aj.i = $aj.reus.animation.land_down_end_r aj.id run scoreboard players operation @s aj.reus.animation.land_down_end_r.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.reus.animation.land_down_end_l aj.id run function animated_java:reus/zzzzzzzz/animations/land_down_end_l/apply_frame_as_root
execute if score #animation aj.i = $aj.reus.animation.land_down_end_l aj.id run scoreboard players operation @s aj.reus.animation.land_down_end_l.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.reus.animation.land_death aj.id run function animated_java:reus/zzzzzzzz/animations/land_death/apply_frame_as_root
execute if score #animation aj.i = $aj.reus.animation.land_death aj.id run scoreboard players operation @s aj.reus.animation.land_death.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.reus.animation.fly_idle aj.id run function animated_java:reus/zzzzzzzz/animations/fly_idle/apply_frame_as_root
execute if score #animation aj.i = $aj.reus.animation.fly_idle aj.id run scoreboard players operation @s aj.reus.animation.fly_idle.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.reus.animation.fly_anger aj.id run function animated_java:reus/zzzzzzzz/animations/fly_anger/apply_frame_as_root
execute if score #animation aj.i = $aj.reus.animation.fly_anger aj.id run scoreboard players operation @s aj.reus.animation.fly_anger.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.reus.animation.fly_turn aj.id run function animated_java:reus/zzzzzzzz/animations/fly_turn/apply_frame_as_root
execute if score #animation aj.i = $aj.reus.animation.fly_turn aj.id run scoreboard players operation @s aj.reus.animation.fly_turn.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.reus.animation.fly_move_right aj.id run function animated_java:reus/zzzzzzzz/animations/fly_move_right/apply_frame_as_root
execute if score #animation aj.i = $aj.reus.animation.fly_move_right aj.id run scoreboard players operation @s aj.reus.animation.fly_move_right.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.reus.animation.fly_move_left aj.id run function animated_java:reus/zzzzzzzz/animations/fly_move_left/apply_frame_as_root
execute if score #animation aj.i = $aj.reus.animation.fly_move_left aj.id run scoreboard players operation @s aj.reus.animation.fly_move_left.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.reus.animation.fly_attack aj.id run function animated_java:reus/zzzzzzzz/animations/fly_attack/apply_frame_as_root
execute if score #animation aj.i = $aj.reus.animation.fly_attack aj.id run scoreboard players operation @s aj.reus.animation.fly_attack.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.reus.animation.fly_tail aj.id run function animated_java:reus/zzzzzzzz/animations/fly_tail/apply_frame_as_root
execute if score #animation aj.i = $aj.reus.animation.fly_tail aj.id run scoreboard players operation @s aj.reus.animation.fly_tail.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.reus.animation.fly_bite aj.id run function animated_java:reus/zzzzzzzz/animations/fly_bite/apply_frame_as_root
execute if score #animation aj.i = $aj.reus.animation.fly_bite aj.id run scoreboard players operation @s aj.reus.animation.fly_bite.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.reus.animation.fly_assault aj.id run function animated_java:reus/zzzzzzzz/animations/fly_assault/apply_frame_as_root
execute if score #animation aj.i = $aj.reus.animation.fly_assault aj.id run scoreboard players operation @s aj.reus.animation.fly_assault.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.reus.animation.fly_movebreath_r aj.id run function animated_java:reus/zzzzzzzz/animations/fly_movebreath_r/apply_frame_as_root
execute if score #animation aj.i = $aj.reus.animation.fly_movebreath_r aj.id run scoreboard players operation @s aj.reus.animation.fly_movebreath_r.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.reus.animation.fly_movebreath_l aj.id run function animated_java:reus/zzzzzzzz/animations/fly_movebreath_l/apply_frame_as_root
execute if score #animation aj.i = $aj.reus.animation.fly_movebreath_l aj.id run scoreboard players operation @s aj.reus.animation.fly_movebreath_l.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.reus.animation.fly_flame_sweep aj.id run function animated_java:reus/zzzzzzzz/animations/fly_flame_sweep/apply_frame_as_root
execute if score #animation aj.i = $aj.reus.animation.fly_flame_sweep aj.id run scoreboard players operation @s aj.reus.animation.fly_flame_sweep.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.reus.animation.fly_breath_triple aj.id run function animated_java:reus/zzzzzzzz/animations/fly_breath_triple/apply_frame_as_root
execute if score #animation aj.i = $aj.reus.animation.fly_breath_triple aj.id run scoreboard players operation @s aj.reus.animation.fly_breath_triple.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.reus.animation.fly_jump aj.id run function animated_java:reus/zzzzzzzz/animations/fly_jump/apply_frame_as_root
execute if score #animation aj.i = $aj.reus.animation.fly_jump aj.id run scoreboard players operation @s aj.reus.animation.fly_jump.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.reus.animation.fly_flame_vertical aj.id run function animated_java:reus/zzzzzzzz/animations/fly_flame_vertical/apply_frame_as_root
execute if score #animation aj.i = $aj.reus.animation.fly_flame_vertical aj.id run scoreboard players operation @s aj.reus.animation.fly_flame_vertical.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.reus.animation.fly_end aj.id run function animated_java:reus/zzzzzzzz/animations/fly_end/apply_frame_as_root
execute if score #animation aj.i = $aj.reus.animation.fly_end aj.id run scoreboard players operation @s aj.reus.animation.fly_end.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.reus.animation.fly_damage aj.id run function animated_java:reus/zzzzzzzz/animations/fly_damage/apply_frame_as_root
execute if score #animation aj.i = $aj.reus.animation.fly_damage aj.id run scoreboard players operation @s aj.reus.animation.fly_damage.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.reus.animation.fly_death aj.id run function animated_java:reus/zzzzzzzz/animations/fly_death/apply_frame_as_root
execute if score #animation aj.i = $aj.reus.animation.fly_death aj.id run scoreboard players operation @s aj.reus.animation.fly_death.local_anim_time = #frame aj.i
execute at @s run function #animated_java:reus/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i