#> reus:manager/1_change/3_play/turn
#
# 火竜 アニメーション遷移処理 再生開始 軸合わせ

# 地上軸合わせ
    execute if entity @s[tag=AnmTurnL,tag=!StateIsFlying] run function animated_java:reus/animations/land_turn_l/play
    execute if entity @s[tag=AnmTurnR,tag=!StateIsFlying] run function animated_java:reus/animations/land_turn_r/play

# 空中軸合わせ
    execute if entity @s[tag=StateIsFlying] unless entity @s[tag=!AnmTurnL,tag=!AnmTurnR] run function animated_java:reus/animations/fly_turn/play
    tag @s remove AnmTurnL 
    tag @s remove AnmTurnR

# 終了
    tag @s add StateAppliedAnm
