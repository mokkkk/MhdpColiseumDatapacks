#> ranposu:manager/5_animation/
#
# 青鳥竜 アニメーションのイベントハンドラ

## 待機
    execute if entity @s[tag=aj.ranposu.animation.idle] run function ranposu:manager/5_animation/idle/

## 嚙みつき
    execute if entity @s[tag=aj.ranposu.animation.bite] run function ranposu:manager/5_animation/bite/

## ひっかき