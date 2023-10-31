#> reus:manager/5_animation/
#
# 火竜 アニメーションのイベントハンドラ

## 待機
    execute if entity @s[tag=aj.reus.animation.land_idle] run function reus:manager/5_animation/land_idle/

## 咆哮
    execute if entity @s[tag=aj.reus.animation.land_voice] run function reus:manager/5_animation/land_voice/

## 尻尾回転
    execute if entity @s[tag=aj.reus.animation.land_tail_spin_r] run function reus:manager/5_animation/land_tail_spin_r/

## 噛みつき
    execute if entity @s[tag=aj.reus.animation.land_bite_r] run function reus:manager/5_animation/land_bite_r/
    execute if entity @s[tag=aj.reus.animation.land_bite_l] run function reus:manager/5_animation/land_bite_l/
