#> mhdp_weapons:weapon/long_sword/19_iai/main
#
# 太刀：居合抜刀斬り

# タイマー増加
    scoreboard players add @s MhdpWeaponTimer 1

# 武器アニメーション
    execute if entity @s[scores={MhdpWeaponTimer=1}] run function mhdp_weapons:weapon/long_sword/7_moveslash/animation_0
    execute if entity @s[scores={MhdpWeaponTimer=3}] run function mhdp_weapons:weapon/long_sword/7_moveslash/animation_1
    execute if entity @s[scores={MhdpWeaponTimer=4}] run function mhdp_weapons:weapon/long_sword/7_moveslash/animation_2
    execute if entity @s[scores={MhdpWeaponTimer=6}] run function mhdp_weapons:weapon/long_sword/7_moveslash/animation_3
    execute if entity @s[scores={MhdpWeaponTimer=8}] run function mhdp_weapons:weapon/long_sword/6_spirit3/animation_0
    execute if entity @s[scores={MhdpWeaponTimer=10}] run function mhdp_weapons:weapon/long_sword/6_spirit3/animation_1
    execute if entity @s[scores={MhdpWeaponTimer=11}] run function mhdp_weapons:weapon/long_sword/6_spirit3/animation_2
    execute if entity @s[scores={MhdpWeaponTimer=13}] run function mhdp_weapons:weapon/long_sword/6_spirit3/animation_3

# 攻撃
    execute if entity @s[scores={MhdpWeaponTimer=3}] run function mhdp_weapons:weapon/long_sword/19_iai/attack_0
    execute if entity @s[scores={MhdpWeaponTimer=10}] run function mhdp_weapons:weapon/long_sword/19_iai/attack_1

# 移動速度低下
    execute if entity @s[scores={MhdpWeaponTimer=1}] run effect give @s slowness 2 2 true

# 移動処理
    execute if entity @s[scores={MhdpWeaponTimer=1}] run tp @s @s
    execute if entity @s[scores={MhdpWeaponTimer=1}] run scoreboard players set $strength delta.api.launch 6000
    execute if entity @s[scores={MhdpWeaponTimer=1}] at @s rotated ~ 0 run function delta:api/launch_looking

# 遷移
    # スニーク+右クリック時，斬り下がりに移行
        execute if entity @s[tag=PlyUsingEyeStart,tag=PlySneakCurrent,scores={MhdpWeaponTimer=18..}] run function mhdp_weapons:weapon/long_sword/19_iai/change_moveslash

# 終了
    execute if entity @s[scores={MhdpWeaponTimer=30..}] run function mhdp_weapons:weapon/long_sword/19_iai/end
