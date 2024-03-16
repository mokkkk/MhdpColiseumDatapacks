
# アニメーション停止
    function animated_java:reus/animations/pause_all

# 半々の確率で床ドンor尻尾回転に遷移
    execute if predicate math:0.5 run function animated_java:reus/animations/land_jump/tween_play
    execute if entity @s[tag=!aj.reus.animation.land_jump] run function animated_java:reus/animations/land_tail_spin_l/tween_play
