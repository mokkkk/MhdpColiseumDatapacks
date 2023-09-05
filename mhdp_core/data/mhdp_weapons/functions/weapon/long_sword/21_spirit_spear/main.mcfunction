#> mhdp_weapons:weapon/long_sword/21_spirit_spear/main
#
# 太刀：気刃突き

# タイマー増加
    scoreboard players add @s MhdpWeaponTimer 1

# 演出
    execute if entity @s[scores={MhdpWeaponTimer=1}] run playsound item.trident.return master @a ~ ~ ~ 1 1.5
    execute if entity @s[scores={MhdpWeaponTimer=1}] run playsound item.trident.return master @a ~ ~ ~ 1 1.8

# 武器アニメーション
    execute if entity @s[scores={MhdpWeaponTimer=1}] run function mhdp_weapons:weapon/long_sword/21_spirit_spear/animation_0
    execute if entity @s[scores={MhdpWeaponTimer=10}] run function mhdp_weapons:weapon/long_sword/21_spirit_spear/animation_1
    execute if entity @s[scores={MhdpWeaponTimer=12}] run function mhdp_weapons:weapon/long_sword/21_spirit_spear/animation_2
    execute if entity @s[scores={MhdpWeaponTimer=20}] run function mhdp_weapons:weapon/long_sword/3_spirit1_miss/animation_2

# 攻撃
    execute if entity @s[scores={MhdpWeaponTimer=11}] run function mhdp_weapons:weapon/long_sword/21_spirit_spear/attack

# 移動速度低下
    execute if entity @s[scores={MhdpWeaponTimer=1}] run effect give @s slowness 2 2 true

# 移動処理
    execute if entity @s[scores={MhdpWeaponTimer=9}] run tp @s @s
    execute if entity @s[scores={MhdpWeaponTimer=9}] run tp @s ~ ~0.2 ~
    execute if entity @s[scores={MhdpWeaponTimer=9}] run scoreboard players set $strength delta.api.launch 16000
    execute if entity @s[scores={MhdpWeaponTimer=9}] at @s rotated ~ 0 run function delta:api/launch_looking

# 遷移
    # 攻撃ヒット時，飛翔蹴り_滞空に移行
        execute if entity @s[tag=AttackHit,scores={MhdpWeaponTimer=25}] run function mhdp_weapons:weapon/long_sword/21_spirit_spear/change_jump

# 終了
    execute if entity @s[scores={MhdpWeaponTimer=40..}] run function mhdp_weapons:weapon/long_sword/21_spirit_spear/end
