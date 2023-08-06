#> ranposu:manager/6_damage_animation/0_animation/anger
#
# 青鳥竜 怒り開始

# アニメーション遷移
    function ranposu:manager/1_change/0_stop/
    function animated_java:ranposu/animations/anger/play

# 怒り開始処理
    function ranposu:manager/6_damage_animation/2_anger/start

# スコアリセット
    scoreboard players operation #mhdp_ranposu_anger_damage AsaMatrix = #mhdp_ranposu_anger_damage_max AsaMatrix
