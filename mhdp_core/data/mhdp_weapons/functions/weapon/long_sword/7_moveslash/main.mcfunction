#> mhdp_weapons:weapon/long_sword/7_moveslash/main
#
# 太刀：斬り下がり

# タイマー増加
    scoreboard players add @s MhdpWeaponTimer 1

# 武器アニメーション
    execute if entity @s[scores={MhdpWeaponTimer=1}] run function mhdp_weapons:weapon/long_sword/7_moveslash/animation_0
    execute if entity @s[scores={MhdpWeaponTimer=4}] run function mhdp_weapons:weapon/long_sword/7_moveslash/animation_1
    execute if entity @s[scores={MhdpWeaponTimer=5}] run function mhdp_weapons:weapon/long_sword/7_moveslash/animation_2
    execute if entity @s[scores={MhdpWeaponTimer=6}] run function mhdp_weapons:weapon/long_sword/7_moveslash/animation_3

# 攻撃
    execute if entity @s[scores={MhdpWeaponTimer=3}] run function mhdp_weapons:weapon/long_sword/7_moveslash/attack

# 移動速度低下
    execute if entity @s[scores={MhdpWeaponTimer=1}] run effect give @s slowness 2 1 true

# 移動処理
    execute if entity @s[scores={MhdpWeaponTimer=3}] run tp @s @s
    execute if entity @s[scores={MhdpWeaponTimer=3}] run tp @s ~ ~0.1 ~
    execute if entity @s[scores={MhdpWeaponTimer=3}] run scoreboard players set $strength delta.api.launch 13000
    execute if entity @s[scores={MhdpWeaponTimer=3}] at @s rotated ~180 0 run function delta:api/launch_looking

# 終了
    execute if entity @s[scores={MhdpWeaponTimer=35..}] run function mhdp_weapons:weapon/long_sword/7_moveslash/end
