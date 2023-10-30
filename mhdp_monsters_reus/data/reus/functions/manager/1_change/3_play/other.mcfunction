#> reus:manager/1_change/3_play/other
#
# 青鳥竜 アニメーション遷移処理 再生開始 その他

# 威嚇
    execute if entity @s[tag=AnmVoice] run function animated_java:reus/animations/land_voice/play
    tag @s remove AnmVoice

# 怒り状態移行
    execute if entity @s[tag=AnmAnger] run function animated_java:reus/animations/anger/play
    tag @s remove AnmAnger

# 怯み
    execute if entity @s[tag=AnmDamage] run function animated_java:reus/animations/damage/play
    tag @s remove AnmDamage
    
# 大怯み（ダウン）
    execute if entity @s[tag=AnmDamageDown] run function animated_java:reus/animations/damage_down/play
    tag @s remove AnmDamageDown

# 空中怯み
    execute if entity @s[tag=AnmDamageFlying] run function animated_java:reus/animations/damage_flying/play
    tag @s remove AnmDamageFlying

# ダウン中もがき
    execute if entity @s[tag=AnmDown] run function animated_java:reus/animations/down/play
    tag @s remove AnmDown

# ダウン終了
    execute if entity @s[tag=AnmDownEnd] run function animated_java:reus/animations/down_end/play
    tag @s remove AnmDownEnd
    
# 討伐
    execute if entity @s[tag=AnmDeath] run function animated_java:reus/animations/death/play
    tag @s remove AnmDeath

# 終了
    tag @s add StateAppliedAnm
