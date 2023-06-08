scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.ranposu.export_version dummy
scoreboard objectives add aj.ranposu.rig_loaded dummy
scoreboard objectives add aj.ranposu.animation.idle.local_anim_time dummy
scoreboard objectives add aj.ranposu.animation.bite.local_anim_time dummy
scoreboard objectives add aj.ranposu.animation.claw.local_anim_time dummy
scoreboard objectives add aj.ranposu.animation.idle.loop_mode dummy
scoreboard objectives add aj.ranposu.animation.bite.loop_mode dummy
scoreboard objectives add aj.ranposu.animation.claw.loop_mode dummy
scoreboard players set $aj.ranposu.animation.idle aj.id 0
scoreboard players set $aj.ranposu.animation.bite aj.id 1
scoreboard players set $aj.ranposu.animation.claw aj.id 2
scoreboard players set $aj.ranposu.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.default_interpolation_duration aj.i 1
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.ranposu.export_version aj.i 832673026
scoreboard players reset * aj.ranposu.rig_loaded
execute as @e[type=#ranposu:aj_root,tag=aj.ranposu.root] run function zzz_ranposu_internal:on_load