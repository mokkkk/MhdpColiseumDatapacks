scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.reus.export_version dummy
scoreboard objectives add aj.reus.rig_loaded dummy
scoreboard objectives add aj.reus.animation.land_idle.local_anim_time dummy
scoreboard objectives add aj.reus.animation.land_voice.local_anim_time dummy
scoreboard objectives add aj.reus.animation.land_dash_start.local_anim_time dummy
scoreboard objectives add aj.reus.animation.land_dash.local_anim_time dummy
scoreboard objectives add aj.reus.animation.land_dash_bite.local_anim_time dummy
scoreboard objectives add aj.reus.animation.land_tail_spin_r.local_anim_time dummy
scoreboard objectives add aj.reus.animation.land_tail_spin_l.local_anim_time dummy
scoreboard objectives add aj.reus.animation.land_bite_r.local_anim_time dummy
scoreboard objectives add aj.reus.animation.land_bite_l.local_anim_time dummy
scoreboard objectives add aj.reus.animation.land_chargebite.local_anim_time dummy
scoreboard objectives add aj.reus.animation.land_after_attack.local_anim_time dummy
scoreboard objectives add aj.reus.animation.land_backstep.local_anim_time dummy
scoreboard objectives add aj.reus.animation.land_breath.local_anim_time dummy
scoreboard objectives add aj.reus.animation.land_jump.local_anim_time dummy
scoreboard objectives add aj.reus.animation.fly_idle.local_anim_time dummy
scoreboard objectives add aj.reus.animation.fly_attack.local_anim_time dummy
scoreboard objectives add aj.reus.animation.fly_tail.local_anim_time dummy
scoreboard objectives add aj.reus.animation.land_idle.loop_mode dummy
scoreboard objectives add aj.reus.animation.land_voice.loop_mode dummy
scoreboard objectives add aj.reus.animation.land_dash_start.loop_mode dummy
scoreboard objectives add aj.reus.animation.land_dash.loop_mode dummy
scoreboard objectives add aj.reus.animation.land_dash_bite.loop_mode dummy
scoreboard objectives add aj.reus.animation.land_tail_spin_r.loop_mode dummy
scoreboard objectives add aj.reus.animation.land_tail_spin_l.loop_mode dummy
scoreboard objectives add aj.reus.animation.land_bite_r.loop_mode dummy
scoreboard objectives add aj.reus.animation.land_bite_l.loop_mode dummy
scoreboard objectives add aj.reus.animation.land_chargebite.loop_mode dummy
scoreboard objectives add aj.reus.animation.land_after_attack.loop_mode dummy
scoreboard objectives add aj.reus.animation.land_backstep.loop_mode dummy
scoreboard objectives add aj.reus.animation.land_breath.loop_mode dummy
scoreboard objectives add aj.reus.animation.land_jump.loop_mode dummy
scoreboard objectives add aj.reus.animation.fly_idle.loop_mode dummy
scoreboard objectives add aj.reus.animation.fly_attack.loop_mode dummy
scoreboard objectives add aj.reus.animation.fly_tail.loop_mode dummy
scoreboard players set $aj.reus.animation.land_idle aj.id 0
scoreboard players set $aj.reus.animation.land_voice aj.id 1
scoreboard players set $aj.reus.animation.land_dash_start aj.id 2
scoreboard players set $aj.reus.animation.land_dash aj.id 3
scoreboard players set $aj.reus.animation.land_dash_bite aj.id 4
scoreboard players set $aj.reus.animation.land_tail_spin_r aj.id 5
scoreboard players set $aj.reus.animation.land_tail_spin_l aj.id 6
scoreboard players set $aj.reus.animation.land_bite_r aj.id 7
scoreboard players set $aj.reus.animation.land_bite_l aj.id 8
scoreboard players set $aj.reus.animation.land_chargebite aj.id 9
scoreboard players set $aj.reus.animation.land_after_attack aj.id 10
scoreboard players set $aj.reus.animation.land_backstep aj.id 11
scoreboard players set $aj.reus.animation.land_breath aj.id 12
scoreboard players set $aj.reus.animation.land_jump aj.id 13
scoreboard players set $aj.reus.animation.fly_idle aj.id 14
scoreboard players set $aj.reus.animation.fly_attack aj.id 15
scoreboard players set $aj.reus.animation.fly_tail aj.id 16
scoreboard players set $aj.reus.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.reus.export_version aj.i 213625485
scoreboard players reset * aj.reus.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.reus.root] run function animated_java:reus/zzzzzzzz/on_load