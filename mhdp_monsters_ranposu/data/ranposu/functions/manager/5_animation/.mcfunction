#> ranposu:manager/5_animation/
#
# 青鳥竜 アニメーションのイベントハンドラ

## 待機
    execute if entity @s[tag=aj.ranposu.animation.idle] run function ranposu:manager/5_animation/idle/

## 威嚇
    execute if entity @s[tag=aj.ranposu.animation.voice] run function ranposu:manager/5_animation/voice/

## 怒り状態移行
    execute if entity @s[tag=aj.ranposu.animation.anger] run function ranposu:manager/5_animation/anger/

## バックステップ
    execute if entity @s[tag=aj.ranposu.animation.step_back] run function ranposu:manager/5_animation/step_back/

## 移動
    execute if entity @s[tag=aj.ranposu.animation.move] run function ranposu:manager/5_animation/move/

## 軸合わせ
    execute if entity @s[tag=aj.ranposu.animation.turn_right] run function ranposu:manager/5_animation/turn_right/
    execute if entity @s[tag=aj.ranposu.animation.turn_left] run function ranposu:manager/5_animation/turn_left/

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

## タックル
    execute if entity @s[tag=aj.ranposu.animation.tackle] run function ranposu:manager/5_animation/tackle/

## ステップとびかかり
    execute if entity @s[tag=aj.ranposu.animation.step_jump_right] run function ranposu:manager/5_animation/step_jump_right/
    execute if entity @s[tag=aj.ranposu.animation.step_jump_left] run function ranposu:manager/5_animation/step_jump_left/

## 怯み
    execute if entity @s[tag=aj.ranposu.animation.damage] run function ranposu:manager/5_animation/damage/

## 大怯み（ダウン）
    execute if entity @s[tag=aj.ranposu.animation.damage_down] run function ranposu:manager/5_animation/damage_down/

## 空中怯み
    execute if entity @s[tag=aj.ranposu.animation.damage_flying] run function ranposu:manager/5_animation/damage_flying/

## ダウンもがき
    execute if entity @s[tag=aj.ranposu.animation.down] run function ranposu:manager/5_animation/down/

## ダウン終了
    execute if entity @s[tag=aj.ranposu.animation.down_end] run function ranposu:manager/5_animation/down_end/

## 討伐
    execute if entity @s[tag=aj.ranposu.animation.death] run function ranposu:manager/5_animation/death/
