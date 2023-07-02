
# ダウンモーションに変更
    function ranposu:manager/1_change/0_stop/
    function ranposu:animations/down/play
# 空中怯みの場合はダウン時間を短くする
    scoreboard players set #mhdp_ranposu_down_count MhdpCore 3
    tag @s add InitAnmDown
