execute if score @s aj.dino.animation.voice.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:dino/zzzzzzzz/animations/voice/end_loop
execute if score @s aj.dino.animation.voice.loop_mode = $aj.loop_mode.once aj.i run function animated_java:dino/animations/voice/stop
execute if score @s aj.dino.animation.voice.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:dino/animations/voice/pause