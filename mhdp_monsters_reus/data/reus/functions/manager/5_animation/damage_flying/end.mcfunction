
# ダウンモーションに変更
    function ranposu:manager/1_change/0_stop/
    function animated_java:ranposu/animations/down/play
# 空中怯みの場合はダウン時間を短くする
    execute if entity @s[tag=!InitAnmDown] run scoreboard players set #mhdp_ranposu_down_count MhdpCore 3
    tag @s add InitAnmDown
    tag @s remove StateIsFlying
