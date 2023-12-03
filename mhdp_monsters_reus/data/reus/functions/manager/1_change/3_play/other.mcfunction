#> reus:manager/1_change/3_play/other
#
# 火竜 アニメーション遷移処理 再生開始 その他

# 待機
    execute if entity @s[tag=AnmIdle,tag=!StateIsFlying] run function animated_java:reus/animations/land_idle/play
    execute if entity @s[tag=AnmIdle,tag=StateIsFlying] run function animated_java:reus/animations/fly_idle/play
    tag @s remove AnmIdle

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

# 移動
    execute if entity @s[tag=AnmMove] run function animated_java:reus/animations/land_move/tween_play
    tag @s remove AnmMove

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

# 縦なぎ払い火炎放射
    execute if entity @s[tag=AnmFlyFlameVertical] run function animated_java:reus/animations/fly_flame_vertical/tween_play
    tag @s remove AnmFlyFlameVertical

# 怯み・頭
    execute if entity @s[tag=AnmDamageHead] run function animated_java:reus/animations/land_damage_head/tween_play
    tag @s remove AnmDamageHead
# 怯み・胴体
    execute if entity @s[tag=AnmDamageBody] run function animated_java:reus/animations/land_damage_body/tween_play
    tag @s remove AnmDamageBody
# 怯み・尻尾
    execute if entity @s[tag=AnmDamageTail] run function animated_java:reus/animations/land_damage_tail/tween_play
    tag @s remove AnmDamageTail
# 怯み・脚
    execute if entity @s[tag=AnmDamageLegR] run function animated_java:reus/animations/land_damage_down_r/tween_play
    tag @s remove AnmDamageLegR
    execute if entity @s[tag=AnmDamageLegL] run function animated_java:reus/animations/land_damage_down_l/tween_play
    tag @s remove AnmDamageLegL
# 空中怯み
    execute if entity @s[tag=AnmFlyDamage] run function animated_java:reus/animations/fly_damage/tween_play
    tag @s remove AnmFlyDamage

# ダウン中もがき
    execute if entity @s[tag=AnmDownR] run function animated_java:reus/animations/land_down_r/tween_play
    tag @s remove AnmDownR
    execute if entity @s[tag=AnmDownL] run function animated_java:reus/animations/land_down_l/tween_play
    tag @s remove AnmDownL

# ダウン終了
    execute if entity @s[tag=AnmDownEndR] run function animated_java:reus/animations/land_down_end_r/tween_play
    tag @s remove AnmDownEndR
    execute if entity @s[tag=AnmDownEndL] run function animated_java:reus/animations/land_down_end_l/tween_play
    tag @s remove AnmDownEndL
    
# 討伐
    execute if entity @s[tag=AnmDeath] run function animated_java:reus/animations/land_death/tween_play
    tag @s remove AnmDeath
    execute if entity @s[tag=AnmFlyDeath] run function animated_java:reus/animations/fly_death/tween_play
    tag @s remove AnmFlyDeath

# 終了
    tag @s add StateAppliedAnm
