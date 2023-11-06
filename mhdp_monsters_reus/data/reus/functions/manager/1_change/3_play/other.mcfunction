#> reus:manager/1_change/3_play/other
#
# 青鳥竜 アニメーション遷移処理 再生開始 その他

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

# 威嚇
    execute if entity @s[tag=AnmVoice] run function animated_java:reus/animations/land_voice/tween_play
    tag @s remove AnmVoice

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
