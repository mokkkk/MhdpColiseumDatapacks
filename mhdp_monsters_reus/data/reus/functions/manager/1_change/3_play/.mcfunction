#> reus:manager/1_change/3_play/
#
# 火竜 アニメーション遷移処理 再生開始

# 軸合わせ
    execute if predicate reus:animation/is_turn_animation_tags run function reus:manager/1_change/3_play/turn

# その他（行動）
    execute if entity @s[tag=!StateAppliedAnm] unless predicate reus:animation/is_stay_animation_tags run function reus:manager/1_change/3_play/other

# 待機
    execute if entity @s[tag=!StateAppliedAnm] run function animated_java:reus/animations/land_idle/play

# 終了
    tag @s remove StateAppliedAnm
