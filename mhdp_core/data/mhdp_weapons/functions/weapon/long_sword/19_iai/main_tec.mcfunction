#> mhdp_weapons:weapon/long_sword/6_spirit3/main_tec
#
# 太刀：気刃斬り3

# タイマー増加
    scoreboard players add @s MhdpWeaponTimer 1

# 演出
    execute if entity @s[scores={MhdpWeaponTimer=1}] positioned ^ ^ ^0.1 run particle flash ~ ~1.4 ~ 0 0 0 0 3
    execute if entity @s[scores={MhdpWeaponTimer=1}] run playsound item.trident.return master @a ~ ~ ~ 1 1.5
    execute if entity @s[scores={MhdpWeaponTimer=1}] run playsound item.trident.return master @a ~ ~ ~ 1 1.8

# 武器アニメーション
    execute if entity @s[scores={MhdpWeaponTimer=1}] run function mhdp_weapons:weapon/long_sword/6_spirit3/animation_0
    execute if entity @s[scores={MhdpWeaponTimer=3}] run function mhdp_weapons:weapon/long_sword/6_spirit3/animation_1
    execute if entity @s[scores={MhdpWeaponTimer=4}] run function mhdp_weapons:weapon/long_sword/6_spirit3/animation_2
    execute if entity @s[scores={MhdpWeaponTimer=6}] run function mhdp_weapons:weapon/long_sword/6_spirit3/animation_3

    execute if entity @s[scores={MhdpWeaponTimer=8}] run function mhdp_weapons:weapon/long_sword/7_moveslash/animation_0
    execute if entity @s[scores={MhdpWeaponTimer=10}] run function mhdp_weapons:weapon/long_sword/7_moveslash/animation_1
    execute if entity @s[scores={MhdpWeaponTimer=11}] run function mhdp_weapons:weapon/long_sword/7_moveslash/animation_2
    execute if entity @s[scores={MhdpWeaponTimer=13}] run function mhdp_weapons:weapon/long_sword/7_moveslash/animation_3

    execute if entity @s[scores={MhdpWeaponTimer=16}] run function mhdp_weapons:weapon/long_sword/2_vertical/animation_0
    execute if entity @s[scores={MhdpWeaponTimer=22}] run function mhdp_weapons:weapon/long_sword/2_vertical/animation_1
    execute if entity @s[scores={MhdpWeaponTimer=23}] run function mhdp_weapons:weapon/long_sword/2_vertical/animation_2

# 攻撃
    execute if entity @s[scores={MhdpWeaponTimer=3}] run function mhdp_weapons:weapon/long_sword/6_spirit3/attack_0
    execute if entity @s[scores={MhdpWeaponTimer=10}] run function mhdp_weapons:weapon/long_sword/6_spirit3/attack_1
    execute if entity @s[scores={MhdpWeaponTimer=22}] run function mhdp_weapons:weapon/long_sword/6_spirit3/attack_2

# 移動速度低下
    execute if entity @s[scores={MhdpWeaponTimer=1}] run effect give @s slowness 2 2 true

# 移動処理
    execute if entity @s[scores={MhdpWeaponTimer=22}] run tp @s @s
    execute if entity @s[scores={MhdpWeaponTimer=22}] run scoreboard players set $strength delta.api.launch 3000
    execute if entity @s[scores={MhdpWeaponTimer=22}] at @s rotated ~ 0 run function delta:api/launch_looking

# 遷移
    # 練気ゲージがあり，右クリック時，気刃大回転斬りに移行
        execute if entity @s[tag=PlyUsingEyeStart,tag=!PlySneakCurrent,scores={MhdpWeaponTimer=28..,MhdpWeaponSpiritGaugeLsword=120..}] run function mhdp_weapons:weapon/long_sword/6_spirit3/change_spirit_finish
    # スニーク+右クリック時，斬り下がりに移行
        execute if entity @s[tag=PlyUsingEyeStart,tag=PlySneakCurrent,scores={MhdpWeaponTimer=40..}] run function mhdp_weapons:weapon/long_sword/6_spirit3/change_moveslash
    # スニーク+ジャンプ時，見切り斬りに移行
        execute if entity @s[tag=PlyJumpping,tag=PlySneakCurrent,scores={MhdpWeaponTimer=28..}] run function mhdp_weapons:weapon/long_sword/6_spirit3/change_foresight

# 終了
    execute if entity @s[scores={MhdpWeaponTimer=55..}] run function mhdp_weapons:weapon/long_sword/6_spirit3/end
