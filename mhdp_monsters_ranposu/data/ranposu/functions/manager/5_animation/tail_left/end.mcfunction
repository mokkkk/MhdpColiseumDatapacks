
# 尻尾なぎ払いは２回繰り返す
    scoreboard players add #mhdp_ranposu_tail_count MhdpCore 1
    execute if score #mhdp_ranposu_tail_count MhdpCore matches ..1 run function ranposu:manager/1_change/0_stop/
    execute if score #mhdp_ranposu_tail_count MhdpCore matches ..1 run function animated_java:ranposu/animations/tail_left/play
    execute if score #mhdp_ranposu_tail_count MhdpCore matches 2.. run function ranposu:manager/5_animation/tail_left/change_animation
