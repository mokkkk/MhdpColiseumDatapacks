#> reus:manager/5_animation/
#
# 火竜 アニメーションのイベントハンドラ

## 待機
    execute if entity @s[tag=aj.reus.animation.land_idle] run function reus:manager/5_animation/land_idle/

## 咆哮
    execute if entity @s[tag=aj.reus.animation.land_voice] run function reus:manager/5_animation/land_voice/
    