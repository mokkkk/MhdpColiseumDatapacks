#> reus:manager/5_animation/
#
# 火竜 アニメーションのイベントハンドラ

# --------------------------------------------------------------
# 共通

## 待機
    execute if entity @s[tag=aj.reus.animation.land_idle] run function reus:manager/5_animation/land_idle/
    execute if entity @s[tag=aj.reus.animation.fly_idle] run function reus:manager/5_animation/fly_idle/

## 咆哮
    execute if entity @s[tag=aj.reus.animation.land_voice] run function reus:manager/5_animation/land_voice/

# --------------------------------------------------------------
# 地上

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

## バックステップ
    execute if entity @s[tag=aj.reus.animation.land_backstep] run function reus:manager/5_animation/land_backstep/

## ブレス
    execute if entity @s[tag=aj.reus.animation.land_breath] run function reus:manager/5_animation/land_breath/

## 飛行開始
    execute if entity @s[tag=aj.reus.animation.land_to_fly] run function reus:manager/5_animation/land_to_fly/

## バックジャンプブレス
    execute if entity @s[tag=aj.reus.animation.land_bjb] run function reus:manager/5_animation/land_bjb/

# --------------------------------------------------------------
# 空中

## 爪攻撃
    execute if entity @s[tag=aj.reus.animation.fly_attack] run function reus:manager/5_animation/fly_attack/

## 尻尾なぎ払い
    execute if entity @s[tag=aj.reus.animation.fly_tail] run function reus:manager/5_animation/fly_tail/

## 飛行嚙みつき
    execute if entity @s[tag=aj.reus.animation.fly_bite] run function reus:manager/5_animation/fly_bite/

## 強襲
    execute if entity @s[tag=aj.reus.animation.fly_assault] run function reus:manager/5_animation/fly_assault/

## 回り込みブレス
    execute if entity @s[tag=aj.reus.animation.fly_movebreath_r] run function reus:manager/5_animation/fly_movebreath_r/
    execute if entity @s[tag=aj.reus.animation.fly_movebreath_l] run function reus:manager/5_animation/fly_movebreath_l/
