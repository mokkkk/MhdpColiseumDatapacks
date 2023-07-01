scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.ranposu.export_version dummy
scoreboard objectives add aj.ranposu.rig_loaded dummy
scoreboard objectives add aj.ranposu.animation.idle.local_anim_time dummy
scoreboard objectives add aj.ranposu.animation.voice.local_anim_time dummy
scoreboard objectives add aj.ranposu.animation.anger.local_anim_time dummy
scoreboard objectives add aj.ranposu.animation.turn_right.local_anim_time dummy
scoreboard objectives add aj.ranposu.animation.turn_left.local_anim_time dummy
scoreboard objectives add aj.ranposu.animation.step_back.local_anim_time dummy
scoreboard objectives add aj.ranposu.animation.move.local_anim_time dummy
scoreboard objectives add aj.ranposu.animation.bite.local_anim_time dummy
scoreboard objectives add aj.ranposu.animation.claw.local_anim_time dummy
scoreboard objectives add aj.ranposu.animation.tail_right.local_anim_time dummy
scoreboard objectives add aj.ranposu.animation.tail_left.local_anim_time dummy
scoreboard objectives add aj.ranposu.animation.move_claw.local_anim_time dummy
scoreboard objectives add aj.ranposu.animation.jump.local_anim_time dummy
scoreboard objectives add aj.ranposu.animation.tackle.local_anim_time dummy
scoreboard objectives add aj.ranposu.animation.step_jump_right.local_anim_time dummy
scoreboard objectives add aj.ranposu.animation.step_jump_left.local_anim_time dummy
scoreboard objectives add aj.ranposu.animation.damage.local_anim_time dummy
scoreboard objectives add aj.ranposu.animation.damage_down.local_anim_time dummy
scoreboard objectives add aj.ranposu.animation.down.local_anim_time dummy
scoreboard objectives add aj.ranposu.animation.down_end.local_anim_time dummy
scoreboard objectives add aj.ranposu.animation.damage_flying.local_anim_time dummy
scoreboard objectives add aj.ranposu.animation.death.local_anim_time dummy
scoreboard objectives add aj.ranposu.animation.idle.loop_mode dummy
scoreboard objectives add aj.ranposu.animation.voice.loop_mode dummy
scoreboard objectives add aj.ranposu.animation.anger.loop_mode dummy
scoreboard objectives add aj.ranposu.animation.turn_right.loop_mode dummy
scoreboard objectives add aj.ranposu.animation.turn_left.loop_mode dummy
scoreboard objectives add aj.ranposu.animation.step_back.loop_mode dummy
scoreboard objectives add aj.ranposu.animation.move.loop_mode dummy
scoreboard objectives add aj.ranposu.animation.bite.loop_mode dummy
scoreboard objectives add aj.ranposu.animation.claw.loop_mode dummy
scoreboard objectives add aj.ranposu.animation.tail_right.loop_mode dummy
scoreboard objectives add aj.ranposu.animation.tail_left.loop_mode dummy
scoreboard objectives add aj.ranposu.animation.move_claw.loop_mode dummy
scoreboard objectives add aj.ranposu.animation.jump.loop_mode dummy
scoreboard objectives add aj.ranposu.animation.tackle.loop_mode dummy
scoreboard objectives add aj.ranposu.animation.step_jump_right.loop_mode dummy
scoreboard objectives add aj.ranposu.animation.step_jump_left.loop_mode dummy
scoreboard objectives add aj.ranposu.animation.damage.loop_mode dummy
scoreboard objectives add aj.ranposu.animation.damage_down.loop_mode dummy
scoreboard objectives add aj.ranposu.animation.down.loop_mode dummy
scoreboard objectives add aj.ranposu.animation.down_end.loop_mode dummy
scoreboard objectives add aj.ranposu.animation.damage_flying.loop_mode dummy
scoreboard objectives add aj.ranposu.animation.death.loop_mode dummy
scoreboard players set $aj.ranposu.animation.idle aj.id 0
scoreboard players set $aj.ranposu.animation.voice aj.id 1
scoreboard players set $aj.ranposu.animation.anger aj.id 2
scoreboard players set $aj.ranposu.animation.turn_right aj.id 3
scoreboard players set $aj.ranposu.animation.turn_left aj.id 4
scoreboard players set $aj.ranposu.animation.step_back aj.id 5
scoreboard players set $aj.ranposu.animation.move aj.id 6
scoreboard players set $aj.ranposu.animation.bite aj.id 7
scoreboard players set $aj.ranposu.animation.claw aj.id 8
scoreboard players set $aj.ranposu.animation.tail_right aj.id 9
scoreboard players set $aj.ranposu.animation.tail_left aj.id 10
scoreboard players set $aj.ranposu.animation.move_claw aj.id 11
scoreboard players set $aj.ranposu.animation.jump aj.id 12
scoreboard players set $aj.ranposu.animation.tackle aj.id 13
scoreboard players set $aj.ranposu.animation.step_jump_right aj.id 14
scoreboard players set $aj.ranposu.animation.step_jump_left aj.id 15
scoreboard players set $aj.ranposu.animation.damage aj.id 16
scoreboard players set $aj.ranposu.animation.damage_down aj.id 17
scoreboard players set $aj.ranposu.animation.down aj.id 18
scoreboard players set $aj.ranposu.animation.down_end aj.id 19
scoreboard players set $aj.ranposu.animation.damage_flying aj.id 20
scoreboard players set $aj.ranposu.animation.death aj.id 21
scoreboard players set $aj.ranposu.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.default_interpolation_duration aj.i 1
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.ranposu.export_version aj.i 193099919
scoreboard players reset * aj.ranposu.rig_loaded
execute as @e[type=#ranposu:aj_root,tag=aj.ranposu.root] run function zzz_ranposu_internal:on_load