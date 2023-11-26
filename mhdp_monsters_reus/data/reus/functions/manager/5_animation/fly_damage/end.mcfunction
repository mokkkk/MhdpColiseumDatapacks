
# 起き上がりまたはダウンに遷移
    function animated_java:reus/animations/pause_all
    execute if entity @s[tag=!StateIsStun] run function animated_java:reus/animations/land_down_end_r/tween_play
    execute if entity @s[tag=StateIsStun] run function animated_java:reus/animations/land_down_r/tween_play
