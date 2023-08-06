#> ranposu:manager/1_change/0_stop/
#
# 青鳥竜 アニメーション停止処理

# 停止
    execute if entity @s[tag=aj.ranposu.animation.idle] run function animated_java:ranposu/animations/idle/stop
    execute if entity @s[tag=aj.ranposu.animation.voice] run function animated_java:ranposu/animations/voice/stop
    execute if entity @s[tag=aj.ranposu.animation.anger] run function animated_java:ranposu/animations/anger/stop
    execute if entity @s[tag=aj.ranposu.animation.step_back] run function animated_java:ranposu/animations/step_back/stop
    execute if entity @s[tag=aj.ranposu.animation.move] run function animated_java:ranposu/animations/move/stop
    execute if entity @s[tag=aj.ranposu.animation.turn_right] run function animated_java:ranposu/animations/turn_right/stop
    execute if entity @s[tag=aj.ranposu.animation.turn_left] run function animated_java:ranposu/animations/turn_left/stop
    execute if entity @s[tag=aj.ranposu.animation.bite] run function animated_java:ranposu/animations/bite/stop
    execute if entity @s[tag=aj.ranposu.animation.claw] run function animated_java:ranposu/animations/claw/stop
    execute if entity @s[tag=aj.ranposu.animation.tail_right] run function animated_java:ranposu/animations/tail_right/stop
    execute if entity @s[tag=aj.ranposu.animation.tail_left] run function animated_java:ranposu/animations/tail_left/stop
    execute if entity @s[tag=aj.ranposu.animation.move_claw] run function animated_java:ranposu/animations/move_claw/stop
    execute if entity @s[tag=aj.ranposu.animation.jump] run function animated_java:ranposu/animations/jump/stop
    execute if entity @s[tag=aj.ranposu.animation.tackle] run function animated_java:ranposu/animations/tackle/stop
    execute if entity @s[tag=aj.ranposu.animation.step_jump_right] run function animated_java:ranposu/animations/step_jump_right/stop
    execute if entity @s[tag=aj.ranposu.animation.step_jump_left] run function animated_java:ranposu/animations/step_jump_left/stop
    execute if entity @s[tag=aj.ranposu.animation.damage] run function animated_java:ranposu/animations/damage/stop
    execute if entity @s[tag=aj.ranposu.animation.damage_down] run function animated_java:ranposu/animations/damage_down/stop
    execute if entity @s[tag=aj.ranposu.animation.damage_flying] run function animated_java:ranposu/animations/damage_flying/stop
    execute if entity @s[tag=aj.ranposu.animation.down] run function animated_java:ranposu/animations/down/stop
    execute if entity @s[tag=aj.ranposu.animation.down_end] run function animated_java:ranposu/animations/down_end/stop
    execute if entity @s[tag=aj.ranposu.animation.death] run function animated_java:ranposu/animations/death/stop
