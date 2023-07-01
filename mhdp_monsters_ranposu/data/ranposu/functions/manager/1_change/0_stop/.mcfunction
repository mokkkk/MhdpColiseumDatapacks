#> ranposu:manager/1_change/0_stop/
#
# 青鳥竜 アニメーション停止処理

# 停止
    execute if entity @s[tag=aj.ranposu.animation.idle] run function ranposu:animations/idle/stop
    execute if entity @s[tag=aj.ranposu.animation.voice] run function ranposu:animations/voice/stop
    execute if entity @s[tag=aj.ranposu.animation.anger] run function ranposu:animations/anger/stop
    execute if entity @s[tag=aj.ranposu.animation.step_back] run function ranposu:animations/step_back/stop
    execute if entity @s[tag=aj.ranposu.animation.move] run function ranposu:animations/move/stop
    execute if entity @s[tag=aj.ranposu.animation.turn_right] run function ranposu:animations/turn_right/stop
    execute if entity @s[tag=aj.ranposu.animation.turn_left] run function ranposu:animations/turn_left/stop
    execute if entity @s[tag=aj.ranposu.animation.bite] run function ranposu:animations/bite/stop
    execute if entity @s[tag=aj.ranposu.animation.claw] run function ranposu:animations/claw/stop
    execute if entity @s[tag=aj.ranposu.animation.tail_right] run function ranposu:animations/tail_right/stop
    execute if entity @s[tag=aj.ranposu.animation.tail_left] run function ranposu:animations/tail_left/stop
    execute if entity @s[tag=aj.ranposu.animation.move_claw] run function ranposu:animations/move_claw/stop
    execute if entity @s[tag=aj.ranposu.animation.jump] run function ranposu:animations/jump/stop
    execute if entity @s[tag=aj.ranposu.animation.tackle] run function ranposu:animations/tackle/stop
    execute if entity @s[tag=aj.ranposu.animation.step_jump_right] run function ranposu:animations/step_jump_right/stop
    execute if entity @s[tag=aj.ranposu.animation.step_jump_left] run function ranposu:animations/step_jump_left/stop
    execute if entity @s[tag=aj.ranposu.animation.damage] run function ranposu:animations/damage/stop
    execute if entity @s[tag=aj.ranposu.animation.damage_down] run function ranposu:animations/damage_down/stop
    execute if entity @s[tag=aj.ranposu.animation.down] run function ranposu:animations/down/stop
    execute if entity @s[tag=aj.ranposu.animation.down_end] run function ranposu:animations/down_end/stop
