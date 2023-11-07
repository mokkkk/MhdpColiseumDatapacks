
# カウントデクリメント
    scoreboard players remove #mhdp_reus_dash_count AsaMatrix 1

# アニメーション停止
    function animated_java:reus/animations/pause_all

# カウントが残っている場合，突進に遷移
    execute if score #mhdp_reus_dash_count AsaMatrix matches 1.. run function animated_java:reus/animations/land_dash/tween_play
# カウントが残っていない場合，突進・停止に遷移
    execute unless score #mhdp_reus_dash_count AsaMatrix matches 1.. run function animated_java:reus/animations/land_dash_bite/tween_play
