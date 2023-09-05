#> mhdp_weapons:weapon/long_sword/90_kabuto/
#
# 気刃兜割の処理

# タイマー増加
    scoreboard players add @s MhdpCore 1

# 攻撃
    execute if score @s MhdpCore matches 16 run function mhdp_weapons:weapon/long_sword/90_kabuto/attack
    execute if score @s MhdpCore matches 17 run function mhdp_weapons:weapon/long_sword/90_kabuto/attack
    execute if score @s MhdpCore matches 18 run function mhdp_weapons:weapon/long_sword/90_kabuto/attack
    execute if score @s MhdpCore matches 19 run function mhdp_weapons:weapon/long_sword/90_kabuto/attack
    execute if score @s MhdpCore matches 20 run function mhdp_weapons:weapon/long_sword/90_kabuto/attack
    execute if score @s MhdpCore matches 21 run function mhdp_weapons:weapon/long_sword/90_kabuto/attack
    execute if score @s MhdpCore matches 22 run function mhdp_weapons:weapon/long_sword/90_kabuto/attack

# 時間で削除
    execute if entity @s[scores={MhdpCore=22..}] run kill @s
