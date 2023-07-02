
# アニメーション変更
    function ranposu:manager/1_change/0_stop/
    function ranposu:animations/down_end/play

# 終了
    scoreboard players reset #mhdp_ranposu_down_count
    tag @s remove InitAnmMove
    tag @s remove StateIsStun
