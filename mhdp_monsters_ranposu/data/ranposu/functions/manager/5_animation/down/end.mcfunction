
# カウント増加
    scoreboard players add #mhdp_ranposu_down_count MhdpCore 1
# 一定回数以上繰り返した場合，アニメーション変更
    execute if score #mhdp_ranposu_down_count MhdpCore matches 6.. run function ranposu:manager/5_animation/down/change_animation
