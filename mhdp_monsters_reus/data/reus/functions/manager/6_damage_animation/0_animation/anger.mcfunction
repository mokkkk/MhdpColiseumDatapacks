#> reus:manager/6_damage_animation/0_animation/anger
#
# 火竜 怒り開始

# アニメーション遷移
    function reus:manager/1_change/0_stop/
    execute if entity @s[tag=!StateIsFlying] run function animated_java:reus/animations/land_anger/play
    execute if entity @s[tag=StateIsFlying] run function animated_java:reus/animations/fly_anger/play

# 怒り開始処理
    function reus:manager/6_damage_animation/2_anger/start

# スコアリセット
    scoreboard players operation #mhdp_reus_anger_damage AsaMatrix = #mhdp_reus_anger_damage_max AsaMatrix
