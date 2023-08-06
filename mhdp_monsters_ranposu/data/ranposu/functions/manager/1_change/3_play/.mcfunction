#> ranposu:manager/1_change/3_play/
#
# 青鳥竜 アニメーション遷移処理 再生開始

# 軸合わせ
    execute if predicate ranposu:animation/is_turn_animation_tags run function ranposu:manager/1_change/3_play/turn

# その他（行動）
    execute if entity @s[tag=!StateAppliedAnm] unless predicate ranposu:animation/is_stay_animation_tags run function ranposu:manager/1_change/3_play/other

# 待機
    execute if entity @s[tag=!StateAppliedAnm] run function animated_java:ranposu/animations/idle/play

# 終了
    tag @s remove StateAppliedAnm
