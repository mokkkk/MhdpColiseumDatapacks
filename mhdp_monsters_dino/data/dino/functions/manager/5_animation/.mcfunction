#> reus:manager/5_animation/
#
# 火竜 アニメーションのイベントハンドラ

# --------------------------------------------------------------
# 共通

## 待機
    execute if entity @s[tag=aj.reus.animation.land_idle] run function reus:manager/5_animation/land_idle/
    execute if entity @s[tag=aj.reus.animation.fly_idle] run function reus:manager/5_animation/fly_idle/

## 軸合わせ
    execute if entity @s[tag=aj.reus.animation.land_turn_r] run function reus:manager/5_animation/land_turn_r/
    execute if entity @s[tag=aj.reus.animation.land_turn_l] run function reus:manager/5_animation/land_turn_l/
    execute if entity @s[tag=aj.reus.animation.fly_turn] run function reus:manager/5_animation/fly_turn/

## 怒り開始
    execute if entity @s[tag=aj.reus.animation.land_anger] run function reus:manager/5_animation/land_anger/
    execute if entity @s[tag=aj.reus.animation.fly_anger] run function reus:manager/5_animation/fly_anger/

## 討伐
    execute if entity @s[tag=aj.reus.animation.land_death] run function reus:manager/5_animation/land_death/
    execute if entity @s[tag=aj.reus.animation.fly_death] run function reus:manager/5_animation/fly_death/

# --------------------------------------------------------------
# 地上

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

## バックステップ
    execute if entity @s[tag=aj.reus.animation.land_backstep] run function reus:manager/5_animation/land_backstep/

## ブレス
    execute if entity @s[tag=aj.reus.animation.land_breath] run function reus:manager/5_animation/land_breath/

## 飛行開始
    execute if entity @s[tag=aj.reus.animation.land_to_fly] run function reus:manager/5_animation/land_to_fly/

## バックジャンプブレス
    execute if entity @s[tag=aj.reus.animation.land_bjb] run function reus:manager/5_animation/land_bjb/

## 移動
    execute if entity @s[tag=aj.reus.animation.land_move] run function reus:manager/5_animation/land_move/

## 怯み・頭
    execute if entity @s[tag=aj.reus.animation.land_damage_head] run function reus:manager/5_animation/land_damage_head/
## 怯み・胴体
    execute if entity @s[tag=aj.reus.animation.land_damage_body] run function reus:manager/5_animation/land_damage_body/
## 怯み・尻尾
    execute if entity @s[tag=aj.reus.animation.land_damage_tail] run function reus:manager/5_animation/land_damage_tail/

## 怯み・右脚
    execute if entity @s[tag=aj.reus.animation.land_damage_down_r] run function reus:manager/5_animation/land_damage_down_r/
## 怯み・左脚
    execute if entity @s[tag=aj.reus.animation.land_damage_down_l] run function reus:manager/5_animation/land_damage_down_l/
## ダウン・右脚
    execute if entity @s[tag=aj.reus.animation.land_down_r] run function reus:manager/5_animation/land_down_r/
## ダウン・左脚
    execute if entity @s[tag=aj.reus.animation.land_down_l] run function reus:manager/5_animation/land_down_l/
## ダウン終了・右脚
    execute if entity @s[tag=aj.reus.animation.land_down_end_r] run function reus:manager/5_animation/land_down_end_r/
## ダウン終了・左脚
    execute if entity @s[tag=aj.reus.animation.land_down_end_l] run function reus:manager/5_animation/land_down_end_l/

# --------------------------------------------------------------
# 空中

## 旋回回りこみ
    execute if entity @s[tag=aj.reus.animation.fly_move_right] run function reus:manager/5_animation/fly_move_right/
    execute if entity @s[tag=aj.reus.animation.fly_move_left] run function reus:manager/5_animation/fly_move_left/

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

## なぎ払い火炎放射
    execute if entity @s[tag=aj.reus.animation.fly_flame_sweep] run function reus:manager/5_animation/fly_flame_sweep/

## 3連ブレス
    execute if entity @s[tag=aj.reus.animation.fly_breath_triple] run function reus:manager/5_animation/fly_breath_triple/

## 地上強襲
    execute if entity @s[tag=aj.reus.animation.fly_jump] run function reus:manager/5_animation/fly_jump/

## 縦火炎放射
    execute if entity @s[tag=aj.reus.animation.fly_flame_vertical] run function reus:manager/5_animation/fly_flame_vertical/

## 着地
    execute if entity @s[tag=aj.reus.animation.fly_end] run function reus:manager/5_animation/fly_end/

## 飛行怯み
    execute if entity @s[tag=aj.reus.animation.fly_damage] run function reus:manager/5_animation/fly_damage/
