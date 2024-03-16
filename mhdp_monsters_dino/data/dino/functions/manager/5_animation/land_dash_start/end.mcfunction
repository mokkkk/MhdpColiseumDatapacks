
# 突進に遷移
    function animated_java:reus/animations/pause_all
    function animated_java:reus/animations/land_dash/tween_play

# 突進のループ回数決定
    scoreboard players set #mhdp_reus_dash_count AsaMatrix 4
    execute if entity @e[tag=ReusAttackTarget,distance=..39] run scoreboard players set #mhdp_reus_dash_count AsaMatrix 3
    execute if entity @e[tag=ReusAttackTarget,distance=..26] run scoreboard players set #mhdp_reus_dash_count AsaMatrix 2
    execute if entity @e[tag=ReusAttackTarget,distance=..13] run scoreboard players set #mhdp_reus_dash_count AsaMatrix 1
