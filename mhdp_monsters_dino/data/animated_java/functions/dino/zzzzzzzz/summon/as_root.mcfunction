execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.dino.rig_loaded 1
scoreboard players operation @s aj.dino.export_version = aj.dino.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:dino/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.dino.variant.default aj.id run function animated_java:dino/zzzzzzzz/apply_variant/default/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.dino.animation.pose aj.id run function animated_java:dino/zzzzzzzz/animations/pose/apply_frame_as_root
execute if score #animation aj.i = $aj.dino.animation.pose aj.id run scoreboard players operation @s aj.dino.animation.pose.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.dino.animation.move aj.id run function animated_java:dino/zzzzzzzz/animations/move/apply_frame_as_root
execute if score #animation aj.i = $aj.dino.animation.move aj.id run scoreboard players operation @s aj.dino.animation.move.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.dino.animation.move_stop aj.id run function animated_java:dino/zzzzzzzz/animations/move_stop/apply_frame_as_root
execute if score #animation aj.i = $aj.dino.animation.move_stop aj.id run scoreboard players operation @s aj.dino.animation.move_stop.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.dino.animation.turn_l aj.id run function animated_java:dino/zzzzzzzz/animations/turn_l/apply_frame_as_root
execute if score #animation aj.i = $aj.dino.animation.turn_l aj.id run scoreboard players operation @s aj.dino.animation.turn_l.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.dino.animation.step_side_l aj.id run function animated_java:dino/zzzzzzzz/animations/step_side_l/apply_frame_as_root
execute if score #animation aj.i = $aj.dino.animation.step_side_l aj.id run scoreboard players operation @s aj.dino.animation.step_side_l.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.dino.animation.voice aj.id run function animated_java:dino/zzzzzzzz/animations/voice/apply_frame_as_root
execute if score #animation aj.i = $aj.dino.animation.voice aj.id run scoreboard players operation @s aj.dino.animation.voice.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.dino.animation.anger aj.id run function animated_java:dino/zzzzzzzz/animations/anger/apply_frame_as_root
execute if score #animation aj.i = $aj.dino.animation.anger aj.id run scoreboard players operation @s aj.dino.animation.anger.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.dino.animation.bite aj.id run function animated_java:dino/zzzzzzzz/animations/bite/apply_frame_as_root
execute if score #animation aj.i = $aj.dino.animation.bite aj.id run scoreboard players operation @s aj.dino.animation.bite.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.dino.animation.bite_double_normal aj.id run function animated_java:dino/zzzzzzzz/animations/bite_double_normal/apply_frame_as_root
execute if score #animation aj.i = $aj.dino.animation.bite_double_normal aj.id run scoreboard players operation @s aj.dino.animation.bite_double_normal.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.dino.animation.bite_double_anger aj.id run function animated_java:dino/zzzzzzzz/animations/bite_double_anger/apply_frame_as_root
execute if score #animation aj.i = $aj.dino.animation.bite_double_anger aj.id run scoreboard players operation @s aj.dino.animation.bite_double_anger.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.dino.animation.breath aj.id run function animated_java:dino/zzzzzzzz/animations/breath/apply_frame_as_root
execute if score #animation aj.i = $aj.dino.animation.breath aj.id run scoreboard players operation @s aj.dino.animation.breath.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.dino.animation.breath_triple aj.id run function animated_java:dino/zzzzzzzz/animations/breath_triple/apply_frame_as_root
execute if score #animation aj.i = $aj.dino.animation.breath_triple aj.id run scoreboard players operation @s aj.dino.animation.breath_triple.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.dino.animation.breath_backstep aj.id run function animated_java:dino/zzzzzzzz/animations/breath_backstep/apply_frame_as_root
execute if score #animation aj.i = $aj.dino.animation.breath_backstep aj.id run scoreboard players operation @s aj.dino.animation.breath_backstep.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.dino.animation.breath_move_l aj.id run function animated_java:dino/zzzzzzzz/animations/breath_move_l/apply_frame_as_root
execute if score #animation aj.i = $aj.dino.animation.breath_move_l aj.id run scoreboard players operation @s aj.dino.animation.breath_move_l.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.dino.animation.tail_back_r aj.id run function animated_java:dino/zzzzzzzz/animations/tail_back_r/apply_frame_as_root
execute if score #animation aj.i = $aj.dino.animation.tail_back_r aj.id run scoreboard players operation @s aj.dino.animation.tail_back_r.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.dino.animation.tail_side_r aj.id run function animated_java:dino/zzzzzzzz/animations/tail_side_r/apply_frame_as_root
execute if score #animation aj.i = $aj.dino.animation.tail_side_r aj.id run scoreboard players operation @s aj.dino.animation.tail_side_r.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.dino.animation.tail_attack_l aj.id run function animated_java:dino/zzzzzzzz/animations/tail_attack_l/apply_frame_as_root
execute if score #animation aj.i = $aj.dino.animation.tail_attack_l aj.id run scoreboard players operation @s aj.dino.animation.tail_attack_l.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.dino.animation.tail_attack_anger_l aj.id run function animated_java:dino/zzzzzzzz/animations/tail_attack_anger_l/apply_frame_as_root
execute if score #animation aj.i = $aj.dino.animation.tail_attack_anger_l aj.id run scoreboard players operation @s aj.dino.animation.tail_attack_anger_l.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.dino.animation.jump_tail_r aj.id run function animated_java:dino/zzzzzzzz/animations/jump_tail_r/apply_frame_as_root
execute if score #animation aj.i = $aj.dino.animation.jump_tail_r aj.id run scoreboard players operation @s aj.dino.animation.jump_tail_r.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.dino.animation.jump_tail_anger_r aj.id run function animated_java:dino/zzzzzzzz/animations/jump_tail_anger_r/apply_frame_as_root
execute if score #animation aj.i = $aj.dino.animation.jump_tail_anger_r aj.id run scoreboard players operation @s aj.dino.animation.jump_tail_anger_r.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.dino.animation.tail_flame_l aj.id run function animated_java:dino/zzzzzzzz/animations/tail_flame_l/apply_frame_as_root
execute if score #animation aj.i = $aj.dino.animation.tail_flame_l aj.id run scoreboard players operation @s aj.dino.animation.tail_flame_l.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.dino.animation.roundforce aj.id run function animated_java:dino/zzzzzzzz/animations/roundforce/apply_frame_as_root
execute if score #animation aj.i = $aj.dino.animation.roundforce aj.id run scoreboard players operation @s aj.dino.animation.roundforce.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.dino.animation.polish aj.id run function animated_java:dino/zzzzzzzz/animations/polish/apply_frame_as_root
execute if score #animation aj.i = $aj.dino.animation.polish aj.id run scoreboard players operation @s aj.dino.animation.polish.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.dino.animation.tail_flame_l2 aj.id run function animated_java:dino/zzzzzzzz/animations/tail_flame_l2/apply_frame_as_root
execute if score #animation aj.i = $aj.dino.animation.tail_flame_l2 aj.id run scoreboard players operation @s aj.dino.animation.tail_flame_l2.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.dino.animation.tail_attack_l2 aj.id run function animated_java:dino/zzzzzzzz/animations/tail_attack_l2/apply_frame_as_root
execute if score #animation aj.i = $aj.dino.animation.tail_attack_l2 aj.id run scoreboard players operation @s aj.dino.animation.tail_attack_l2.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.dino.animation.tail_attack_l3 aj.id run function animated_java:dino/zzzzzzzz/animations/tail_attack_l3/apply_frame_as_root
execute if score #animation aj.i = $aj.dino.animation.tail_attack_l3 aj.id run scoreboard players operation @s aj.dino.animation.tail_attack_l3.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.dino.animation.tail_attack_l4 aj.id run function animated_java:dino/zzzzzzzz/animations/tail_attack_l4/apply_frame_as_root
execute if score #animation aj.i = $aj.dino.animation.tail_attack_l4 aj.id run scoreboard players operation @s aj.dino.animation.tail_attack_l4.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.dino.animation.jump_tail_r_less_frame_1 aj.id run function animated_java:dino/zzzzzzzz/animations/jump_tail_r_less_frame_1/apply_frame_as_root
execute if score #animation aj.i = $aj.dino.animation.jump_tail_r_less_frame_1 aj.id run scoreboard players operation @s aj.dino.animation.jump_tail_r_less_frame_1.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.dino.animation.jump_tail_r_less_frame_2 aj.id run function animated_java:dino/zzzzzzzz/animations/jump_tail_r_less_frame_2/apply_frame_as_root
execute if score #animation aj.i = $aj.dino.animation.jump_tail_r_less_frame_2 aj.id run scoreboard players operation @s aj.dino.animation.jump_tail_r_less_frame_2.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.dino.animation.tail_back_r2 aj.id run function animated_java:dino/zzzzzzzz/animations/tail_back_r2/apply_frame_as_root
execute if score #animation aj.i = $aj.dino.animation.tail_back_r2 aj.id run scoreboard players operation @s aj.dino.animation.tail_back_r2.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.dino.animation.breath2 aj.id run function animated_java:dino/zzzzzzzz/animations/breath2/apply_frame_as_root
execute if score #animation aj.i = $aj.dino.animation.breath2 aj.id run scoreboard players operation @s aj.dino.animation.breath2.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.dino.animation.tail_attack_anger_l3 aj.id run function animated_java:dino/zzzzzzzz/animations/tail_attack_anger_l3/apply_frame_as_root
execute if score #animation aj.i = $aj.dino.animation.tail_attack_anger_l3 aj.id run scoreboard players operation @s aj.dino.animation.tail_attack_anger_l3.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.dino.animation.tail_attack_anger_l2 aj.id run function animated_java:dino/zzzzzzzz/animations/tail_attack_anger_l2/apply_frame_as_root
execute if score #animation aj.i = $aj.dino.animation.tail_attack_anger_l2 aj.id run scoreboard players operation @s aj.dino.animation.tail_attack_anger_l2.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.dino.animation.tail_flame3 aj.id run function animated_java:dino/zzzzzzzz/animations/tail_flame3/apply_frame_as_root
execute if score #animation aj.i = $aj.dino.animation.tail_flame3 aj.id run scoreboard players operation @s aj.dino.animation.tail_flame3.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.dino.animation.roundforce2 aj.id run function animated_java:dino/zzzzzzzz/animations/roundforce2/apply_frame_as_root
execute if score #animation aj.i = $aj.dino.animation.roundforce2 aj.id run scoreboard players operation @s aj.dino.animation.roundforce2.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.dino.animation.roundforce3 aj.id run function animated_java:dino/zzzzzzzz/animations/roundforce3/apply_frame_as_root
execute if score #animation aj.i = $aj.dino.animation.roundforce3 aj.id run scoreboard players operation @s aj.dino.animation.roundforce3.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.dino.animation.roundforce7 aj.id run function animated_java:dino/zzzzzzzz/animations/roundforce7/apply_frame_as_root
execute if score #animation aj.i = $aj.dino.animation.roundforce7 aj.id run scoreboard players operation @s aj.dino.animation.roundforce7.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.dino.animation.roundforce_speed aj.id run function animated_java:dino/zzzzzzzz/animations/roundforce_speed/apply_frame_as_root
execute if score #animation aj.i = $aj.dino.animation.roundforce_speed aj.id run scoreboard players operation @s aj.dino.animation.roundforce_speed.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.dino.animation.polish3 aj.id run function animated_java:dino/zzzzzzzz/animations/polish3/apply_frame_as_root
execute if score #animation aj.i = $aj.dino.animation.polish3 aj.id run scoreboard players operation @s aj.dino.animation.polish3.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.dino.animation.polish2 aj.id run function animated_java:dino/zzzzzzzz/animations/polish2/apply_frame_as_root
execute if score #animation aj.i = $aj.dino.animation.polish2 aj.id run scoreboard players operation @s aj.dino.animation.polish2.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.dino.animation.tail_attack_l5 aj.id run function animated_java:dino/zzzzzzzz/animations/tail_attack_l5/apply_frame_as_root
execute if score #animation aj.i = $aj.dino.animation.tail_attack_l5 aj.id run scoreboard players operation @s aj.dino.animation.tail_attack_l5.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.dino.animation.breath_move_l3 aj.id run function animated_java:dino/zzzzzzzz/animations/breath_move_l3/apply_frame_as_root
execute if score #animation aj.i = $aj.dino.animation.breath_move_l3 aj.id run scoreboard players operation @s aj.dino.animation.breath_move_l3.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.dino.animation.polish_before aj.id run function animated_java:dino/zzzzzzzz/animations/polish_before/apply_frame_as_root
execute if score #animation aj.i = $aj.dino.animation.polish_before aj.id run scoreboard players operation @s aj.dino.animation.polish_before.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.dino.animation.breath_move_l2 aj.id run function animated_java:dino/zzzzzzzz/animations/breath_move_l2/apply_frame_as_root
execute if score #animation aj.i = $aj.dino.animation.breath_move_l2 aj.id run scoreboard players operation @s aj.dino.animation.breath_move_l2.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.dino.animation.move2 aj.id run function animated_java:dino/zzzzzzzz/animations/move2/apply_frame_as_root
execute if score #animation aj.i = $aj.dino.animation.move2 aj.id run scoreboard players operation @s aj.dino.animation.move2.local_anim_time = #frame aj.i
execute at @s run function #animated_java:dino/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i