#> reus:manager/1_change/3_play/other
#
# 火竜 アニメーション遷移処理 再生開始 その他

# 咆哮
    execute if entity @s[tag=AnmVoice] run function animated_java:reus/animations/land_voice/tween_play
    tag @s remove AnmVoice

# 怒り開始
    execute if entity @s[tag=AnmAnger,tag=!StateIsFlying] run function animated_java:reus/animations/land_anger/tween_play
    execute if entity @s[tag=AnmAnger,tag=StateIsFlying] run function animated_java:reus/animations/fly_anger/tween_play
    tag @s remove AnmAnger

# 突進
    execute if entity @s[tag=AnmDashStart] run function animated_java:reus/animations/land_dash_start/tween_play
    tag @s remove AnmDashStart

# 尻尾回転
    execute if entity @s[tag=AnmTailSpinR] run function animated_java:reus/animations/land_tail_spin_r/tween_play
    tag @s remove AnmTailSpinR
    execute if entity @s[tag=AnmTailSpinL] run function animated_java:reus/animations/land_tail_spin_l/tween_play
    tag @s remove AnmTailSpinL

# 嚙みつき
    execute if entity @s[tag=AnmBiteR] run function animated_java:reus/animations/land_bite_r/tween_play
    tag @s remove AnmBiteR
    execute if entity @s[tag=AnmBiteL] run function animated_java:reus/animations/land_bite_l/tween_play
    tag @s remove AnmBiteL

# 床ドン
    execute if entity @s[tag=AnmJump] run function animated_java:reus/animations/land_jump/tween_play
    tag @s remove AnmJump

# チャージ噛みつき
    execute if entity @s[tag=AnmChargeBite] run function animated_java:reus/animations/land_chargebite/tween_play
    tag @s remove AnmChargeBite

# バックステップ
    execute if entity @s[tag=AnmBackStep] run function animated_java:reus/animations/land_backstep/tween_play
    tag @s remove AnmBackStep

# ブレス
    execute if entity @s[tag=AnmBreath] run function animated_java:reus/animations/land_breath/tween_play
    tag @s remove AnmBreath

# 飛行開始
    execute if entity @s[tag=AnmFlyStart] run function animated_java:reus/animations/land_to_fly/tween_play
    tag @s remove AnmFlyStart

# バックジャンプブレス
    execute if entity @s[tag=AnmBjb] run function animated_java:reus/animations/land_bjb/tween_play
    tag @s remove AnmBjb

# 旋回回り込み
    execute if entity @s[tag=AnmFlyMoveR] run function animated_java:reus/animations/fly_move_right/tween_play
    tag @s remove AnmFlyMoveR
    execute if entity @s[tag=AnmFlyMoveL] run function animated_java:reus/animations/fly_move_left/tween_play
    tag @s remove AnmFlyMoveL

# 爪攻撃
    execute if entity @s[tag=AnmFlyAttack] run function animated_java:reus/animations/fly_attack/tween_play
    tag @s remove AnmFlyAttack

# 尻尾なぎ払い
    execute if entity @s[tag=AnmFlyTail] run function animated_java:reus/animations/fly_tail/tween_play
    tag @s remove AnmFlyTail

# 飛行嚙みつき
    execute if entity @s[tag=AnmFlyBite] run function animated_java:reus/animations/fly_bite/tween_play
    tag @s remove AnmFlyBite

# 強襲
    execute if entity @s[tag=AnmFlyAssault] run function animated_java:reus/animations/fly_assault/tween_play
    tag @s remove AnmFlyAssault

# 回り込みブレス
    execute if entity @s[tag=AnmFlyMoveBreathR] run function animated_java:reus/animations/fly_movebreath_r/tween_play
    tag @s remove AnmFlyMoveBreathR
    execute if entity @s[tag=AnmFlyMoveBreathL] run function animated_java:reus/animations/fly_movebreath_l/tween_play
    tag @s remove AnmFlyMoveBreathL

# なぎ払い火炎放射
    execute if entity @s[tag=AnmFlyFlameSweep] run function animated_java:reus/animations/fly_flame_sweep/tween_play
    tag @s remove AnmFlyFlameSweep

# 3連ブレス
    execute if entity @s[tag=AnmFlyBreathTriple] run function animated_java:reus/animations/fly_breath_triple/tween_play
    tag @s remove AnmFlyBreathTriple

# 地上強襲
    execute if entity @s[tag=AnmFlyJump] run function animated_java:reus/animations/fly_jump/tween_play
    tag @s remove AnmFlyJump

# 地上強襲
    execute if entity @s[tag=AnmFlyFlameVertical] run function animated_java:reus/animations/fly_flame_vertical/tween_play
    tag @s remove AnmFlyFlameVertical


# 怒り状態移行
    execute if entity @s[tag=AnmAnger] run function animated_java:reus/animations/anger/tween_play
    tag @s remove AnmAnger

# 怯み
    execute if entity @s[tag=AnmDamage] run function animated_java:reus/animations/damage/tween_play
    tag @s remove AnmDamage
    
# 大怯み（ダウン）
    execute if entity @s[tag=AnmDamageDown] run function animated_java:reus/animations/damage_down/tween_play
    tag @s remove AnmDamageDown

# 空中怯み
    execute if entity @s[tag=AnmDamageFlying] run function animated_java:reus/animations/damage_flying/tween_play
    tag @s remove AnmDamageFlying

# ダウン中もがき
    execute if entity @s[tag=AnmDown] run function animated_java:reus/animations/down/tween_play
    tag @s remove AnmDown

# ダウン終了
    execute if entity @s[tag=AnmDownEnd] run function animated_java:reus/animations/down_end/tween_play
    tag @s remove AnmDownEnd
    
# 討伐
    execute if entity @s[tag=AnmDeath] run function animated_java:reus/animations/death/tween_play
    tag @s remove AnmDeath

# 終了
    tag @s add StateAppliedAnm
