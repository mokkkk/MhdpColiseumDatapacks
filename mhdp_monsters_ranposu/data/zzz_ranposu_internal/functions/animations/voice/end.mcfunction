execute if score @s aj.ranposu.animation.voice.loop_mode = $aj.loop_mode.loop aj.i run function zzz_ranposu_internal:animations/voice/end_loop
execute if score @s aj.ranposu.animation.voice.loop_mode = $aj.loop_mode.once aj.i run function ranposu:animations/voice/stop
execute if score @s aj.ranposu.animation.voice.loop_mode = $aj.loop_mode.hold aj.i run function ranposu:animations/voice/pause