#> ranposu:manager/5_animation/
#
# 青鳥竜 アニメーションのイベントハンドラ

## 待機
    execute if entity @s[tag=aj.ranposu.animation.idle] run function ranposu:manager/5_animation/idle/

## 嚙みつき
    execute if entity @s[tag=aj.ranposu.animation.bite] run function ranposu:manager/5_animation/bite/

## ひっかき
    execute if entity @s[tag=aj.ranposu.animation.claw] run function ranposu:manager/5_animation/claw/

## 尻尾なぎはらい
    execute if entity @s[tag=aj.ranposu.animation.tail_right] run function ranposu:manager/5_animation/tail_right/
    execute if entity @s[tag=aj.ranposu.animation.tail_left] run function ranposu:manager/5_animation/tail_left/

## 前進ひっかき
    execute if entity @s[tag=aj.ranposu.animation.move_claw] run function ranposu:manager/5_animation/move_claw/

## とびかかり
    execute if entity @s[tag=aj.ranposu.animation.jump] run function ranposu:manager/5_animation/jump/