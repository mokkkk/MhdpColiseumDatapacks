#> reus:manager/1_change/3_play/turn
#
# 青鳥竜 アニメーション遷移処理 再生開始 軸合わせ

# 地上軸合わせ
    execute if entity @s[tag=AnmTurnL] run function animated_java:reus/animations/land_turn_left/play
    execute if entity @s[tag=AnmTurnR] run function animated_java:reus/animations/land_turn_right/play

# 空中軸合わせ
    execute unless entity @s[tag=!AnmTurnL,tag=!AnmTurnR] run function animated_java:reus/animations/fly_turn/play
    tag @s remove AnmTurnL 
    tag @s remove AnmTurnR

# 終了
    tag @s add StateAppliedAnm
