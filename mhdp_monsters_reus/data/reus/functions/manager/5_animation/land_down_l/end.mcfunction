
# カウント増加
    scoreboard players add #mhdp_reus_down_count MhdpCore 1
# 一定回数以上繰り返した場合，アニメーション変更
    execute if entity @s[tag=!StateIsStun] if score #mhdp_reus_down_count MhdpCore matches 3.. run function reus:manager/5_animation/land_down_l/change_animation
    execute if entity @s[tag=StateIsStun] if score #mhdp_reus_down_count MhdpCore matches 5.. run function reus:manager/5_animation/land_down_l/change_animation
