#> mhdp_weapons:weapon/long_sword/91_iai_shot/
#
# 居合抜刀気刃斬りの処理

# タイマー増加
    scoreboard players add @s MhdpCore 1

# 攻撃
    execute if score @s MhdpCore matches 15 run function mhdp_weapons:weapon/long_sword/91_iai_shot/attack

# 時間で削除
    execute if entity @s[scores={MhdpCore=15..}] run kill @s
