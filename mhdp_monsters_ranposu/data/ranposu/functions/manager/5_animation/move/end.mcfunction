
# カウント増加
    scoreboard players add #mhdp_ranposu_move_count MhdpCore 1
# 一定回数以上繰り返した場合，アニメーション変更
    execute if score #mhdp_ranposu_move_count MhdpCore matches 18.. run function ranposu:manager/5_animation/move/change_animation

# 待機再生
    # function animated_java:ranposu/animations/idle/play
# アニメーション変更
    # tag @s add ChangeAnm
