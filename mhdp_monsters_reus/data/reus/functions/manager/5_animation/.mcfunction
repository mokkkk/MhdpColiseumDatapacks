#> reus:manager/5_animation/
#
# 火竜 アニメーションのイベントハンドラ

## 待機
    execute if entity @s[tag=aj.reus.animation.land_idle] run function reus:manager/5_animation/land_idle/

## 咆哮
    execute if entity @s[tag=aj.reus.animation.land_voice] run function reus:manager/5_animation/land_voice/

## 突進
    # 開始
        execute if entity @s[tag=aj.reus.animation.land_dash_start] run function reus:manager/5_animation/land_dash_start/
    # 突進
        execute if entity @s[tag=aj.reus.animation.land_dash] run function reus:manager/5_animation/land_dash/
    # 終了
        execute if entity @s[tag=aj.reus.animation.land_dash_bite] run function reus:manager/5_animation/land_dash_bite/

## 尻尾回転
    execute if entity @s[tag=aj.reus.animation.land_tail_spin_r] run function reus:manager/5_animation/land_tail_spin_r/
    execute if entity @s[tag=aj.reus.animation.land_tail_spin_l] run function reus:manager/5_animation/land_tail_spin_l/

## 噛みつき
    execute if entity @s[tag=aj.reus.animation.land_bite_r] run function reus:manager/5_animation/land_bite_r/
    execute if entity @s[tag=aj.reus.animation.land_bite_l] run function reus:manager/5_animation/land_bite_l/

## 床ドン
    execute if entity @s[tag=aj.reus.animation.land_jump] run function reus:manager/5_animation/land_jump/

## チャージ噛みつき
    execute if entity @s[tag=aj.reus.animation.land_chargebite] run function reus:manager/5_animation/land_chargebite/

## 後隙
    execute if entity @s[tag=aj.reus.animation.land_after_attack] run function reus:manager/5_animation/land_after_attack/
