#> mhdp_weapons:weapon/long_sword/14_spirit_finish/main
#
# 太刀：気刃大回転斬り

# タイマー増加
    scoreboard players add @s MhdpWeaponTimer 1

# 演出
    execute if entity @s[scores={MhdpWeaponTimer=1}] positioned ^ ^ ^0.1 run particle flash ~ ~1.4 ~ 0 0 0 0 3
    execute if entity @s[scores={MhdpWeaponTimer=1}] run playsound item.trident.return master @a ~ ~ ~ 1 1.5
    execute if entity @s[scores={MhdpWeaponTimer=1}] run playsound item.trident.return master @a ~ ~ ~ 1 1.8

# 武器アニメーション
    execute if entity @s[scores={MhdpWeaponTimer=1}] run function mhdp_weapons:weapon/long_sword/7_moveslash/animation_0
    execute if entity @s[scores={MhdpWeaponTimer=2}] run function mhdp_weapons:weapon/long_sword/7_moveslash/animation_1
    execute if entity @s[scores={MhdpWeaponTimer=3}] run function mhdp_weapons:weapon/long_sword/7_moveslash/animation_2
    execute if entity @s[scores={MhdpWeaponTimer=4}] run function mhdp_weapons:weapon/long_sword/7_moveslash/animation_3

# 攻撃演出
    execute if entity @s[scores={MhdpWeaponTimer=3}] run playsound entity.player.attack.sweep master @a ~ ~ ~ 1 0.7
    execute if entity @s[scores={MhdpWeaponTimer=3}] run playsound item.trident.throw master @a ~ ~ ~ 1 0.7
    execute if entity @s[scores={MhdpWeaponTimer=5}] run playsound item.trident.return master @a ~ ~ ~ 1 1.2
# 攻撃
    execute if entity @s[scores={MhdpWeaponTimer=3}] run function mhdp_weapons:weapon/long_sword/14_spirit_finish/attack

# 移動速度低下
    execute if entity @s[scores={MhdpWeaponTimer=1}] run effect give @s slowness 2 3 true

# 移動処理
    execute if entity @s[scores={MhdpWeaponTimer=1}] run tp @s @s
    execute if entity @s[scores={MhdpWeaponTimer=1}] run scoreboard players set $strength delta.api.launch 24000
    execute if entity @s[scores={MhdpWeaponTimer=1}] at @s rotated ~ 0 run function delta:api/launch_looking

# 終了
    execute if entity @s[scores={MhdpWeaponTimer=30..}] run function mhdp_weapons:weapon/long_sword/14_spirit_finish/end
