#> mhdp_weapons:weapon/long_sword/17_foresight_slash/main
#
# 太刀：見切り斬り

# タイマー増加
    scoreboard players add @s MhdpWeaponTimer 1

# 武器アニメーション
    execute if entity @s[scores={MhdpWeaponTimer=18}] run function mhdp_weapons:weapon/long_sword/7_moveslash/animation_0
    execute if entity @s[scores={MhdpWeaponTimer=21}] run function mhdp_weapons:weapon/long_sword/7_moveslash/animation_1
    execute if entity @s[scores={MhdpWeaponTimer=22}] run function mhdp_weapons:weapon/long_sword/7_moveslash/animation_2
    execute if entity @s[scores={MhdpWeaponTimer=23}] run function mhdp_weapons:weapon/long_sword/7_moveslash/animation_3

# 攻撃
    execute if entity @s[scores={MhdpWeaponTimer=21}] run function mhdp_weapons:weapon/long_sword/17_foresight_slash/attack

# 移動速度低下
    execute if entity @s[scores={MhdpWeaponTimer=1}] run effect give @s slowness 2 2 true

# 演出
    execute if entity @s[scores={MhdpWeaponTimer=..7}] run playsound block.grass.step master @a ~ ~ ~ 1 1
    execute if entity @s[scores={MhdpWeaponTimer=..7}] run particle block grass_block ~ ~0.1 ~ 0.5 0 0.5 0 3
    execute if entity @s[tag=WpnLswordForesightSuccess,scores={MhdpWeaponTimer=15}] run playsound entity.experience_orb.pickup master @s ~ ~ ~ 2 2
    execute if entity @s[scores={MhdpWeaponTimer=15..17}] run playsound block.grass.step master @a ~ ~ ~ 1 1

# 移動処理
    execute if entity @s[scores={MhdpWeaponTimer=1}] run tp @s @s
    execute if entity @s[scores={MhdpWeaponTimer=1}] run scoreboard players set $strength delta.api.launch 5000
    execute if entity @s[scores={MhdpWeaponTimer=1}] at @s rotated ~180 0 run function delta:api/launch_looking
    execute if entity @s[scores={MhdpWeaponTimer=4}] run tp @s @s
    execute if entity @s[scores={MhdpWeaponTimer=4}] run scoreboard players set $strength delta.api.launch 5000
    execute if entity @s[scores={MhdpWeaponTimer=4}] at @s rotated ~180 0 run function delta:api/launch_looking
    execute if entity @s[scores={MhdpWeaponTimer=18}] run tp @s @s
    execute if entity @s[scores={MhdpWeaponTimer=18}] run tp @s ~ ~0.1 ~
    execute if entity @s[scores={MhdpWeaponTimer=18}] run scoreboard players set $strength delta.api.launch 12000
    execute if entity @s[scores={MhdpWeaponTimer=18}] at @s rotated ~ 0 run function delta:api/launch_looking

# 遷移
    # 練気ゲージがあり，右クリック時，気刃大回転斬りに移行
        execute if entity @s[tag=PlyUsingEyeStart,tag=!PlySneakCurrent,scores={MhdpWeaponTimer=23..,MhdpWeaponSpiritGaugeLsword=120..}] run function mhdp_weapons:weapon/long_sword/17_foresight_slash/change_spirit

# 終了
    execute if entity @s[scores={MhdpWeaponTimer=35..}] run function mhdp_weapons:weapon/long_sword/17_foresight_slash/end
