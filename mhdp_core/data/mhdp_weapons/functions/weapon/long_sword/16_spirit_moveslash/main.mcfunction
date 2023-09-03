#> mhdp_weapons:weapon/long_sword/16_spirit_moveslash/main
#
# 太刀：気刃踏み込み斬り

# タイマー
    scoreboard players add @s MhdpWeaponTimer 1

# 演出
    execute if entity @s[scores={MhdpWeaponTimer=1}] positioned ^ ^ ^0.1 run particle flash ~ ~1.4 ~ 0 0 0 0 3
    execute if entity @s[scores={MhdpWeaponTimer=1}] run playsound item.trident.return master @a ~ ~ ~ 1 1.5
    execute if entity @s[scores={MhdpWeaponTimer=1}] run playsound item.trident.return master @a ~ ~ ~ 1 1.8

# 武器アニメーション
    execute if entity @s[scores={MhdpWeaponTimer=1}] run function mhdp_weapons:weapon/long_sword/15_front_moveslash/animation_0
    execute if entity @s[scores={MhdpWeaponTimer=3}] run function mhdp_weapons:weapon/long_sword/15_front_moveslash/animation_1
    execute if entity @s[scores={MhdpWeaponTimer=4}] run function mhdp_weapons:weapon/long_sword/15_front_moveslash/animation_2
    execute if entity @s[scores={MhdpWeaponTimer=5}] run function mhdp_weapons:weapon/long_sword/15_front_moveslash/animation_3

# 演出
    execute if entity @s[scores={MhdpWeaponTimer=..2}] run playsound block.grass.step master @a ~ ~ ~ 1 1
    execute if entity @s[scores={MhdpWeaponTimer=..2}] run particle block grass_block ~ ~0.1 ~ 0.5 0 0.5 0 3

# 攻撃
    execute if entity @s[scores={MhdpWeaponTimer=4}] run function mhdp_weapons:weapon/long_sword/16_spirit_moveslash/attack

# 移動処理
    execute if entity @s[scores={MhdpWeaponTimer=3}] run tp @s @s
    execute if entity @s[scores={MhdpWeaponTimer=3}] run tp @s ~ ~0.1 ~
    execute if entity @s[scores={MhdpWeaponTimer=3}] run scoreboard players set $strength delta.api.launch 13000
    execute if entity @s[scores={MhdpWeaponTimer=3}] at @s rotated ~ 0 run function delta:api/launch_looking

# 遷移
    # 練気ゲージがあり，右クリック時，気刃斬り2に移行
        execute if entity @s[tag=PlyUsingEyeStart,tag=!PlySneakCurrent,scores={MhdpWeaponTimer=12..,MhdpWeaponSpiritGaugeLsword=120..}] run function mhdp_weapons:weapon/long_sword/16_spirit_moveslash/change_spirit

# 終了
    execute if entity @s[scores={MhdpWeaponTimer=31..}] run function mhdp_weapons:weapon/long_sword/16_spirit_moveslash/end
