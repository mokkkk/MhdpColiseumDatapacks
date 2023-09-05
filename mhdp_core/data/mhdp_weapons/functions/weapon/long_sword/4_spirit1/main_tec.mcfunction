#> mhdp_weapons:weapon/long_sword/4_spirit1/main_tec
#
# 太刀：気刃斬り

# タイマー増加
    scoreboard players add @s MhdpWeaponTimer 1

# 演出
    execute if entity @s[scores={MhdpWeaponTimer=1}] positioned ^ ^ ^0.1 run particle flash ~ ~1.4 ~ 0 0 0 0 3
    execute if entity @s[scores={MhdpWeaponTimer=1}] run playsound item.trident.return master @a ~ ~ ~ 1 1.5
    execute if entity @s[scores={MhdpWeaponTimer=1}] run playsound item.trident.return master @a ~ ~ ~ 1 1.8

# 武器アニメーション
    execute if entity @s[scores={MhdpWeaponTimer=1..3}] run function mhdp_weapons:weapon/long_sword/3_spirit1_miss/animation_0
    execute if entity @s[scores={MhdpWeaponTimer=4}] run function mhdp_weapons:weapon/long_sword/3_spirit1_miss/animation_1
    execute if entity @s[scores={MhdpWeaponTimer=5}] run function mhdp_weapons:weapon/long_sword/3_spirit1_miss/animation_2

# 攻撃
    execute if entity @s[scores={MhdpWeaponTimer=3}] run function mhdp_weapons:weapon/long_sword/4_spirit1/attack

# 移動速度低下
    execute if entity @s[scores={MhdpWeaponTimer=1}] run effect give @s slowness 1 2 true

# 移動処理
    execute if entity @s[scores={MhdpWeaponTimer=2}] run tp @s @s
    execute if entity @s[scores={MhdpWeaponTimer=2}] run scoreboard players set $strength delta.api.launch 3000
    execute if entity @s[scores={MhdpWeaponTimer=2}] at @s rotated ~ 0 run function delta:api/launch_looking

# 遷移
    # 練気ゲージがあり，右クリック時，気刃斬り2に移行
        execute if entity @s[tag=PlyUsingEyeStart,tag=!PlySneakCurrent,scores={MhdpWeaponTimer=12..,MhdpWeaponSpiritGaugeLsword=120..}] run function mhdp_weapons:weapon/long_sword/4_spirit1/change_spirit
    # スニーク+右クリック時，斬り下がりに移行
        execute if entity @s[tag=PlyUsingEyeStart,tag=PlySneakCurrent,scores={MhdpWeaponTimer=12..}] run function mhdp_weapons:weapon/long_sword/4_spirit1/change_moveslash
    # スニーク+ジャンプ時，見切り斬りに移行
        execute if entity @s[tag=PlyJumpping,tag=PlySneakCurrent,scores={MhdpWeaponTimer=12..}] run function mhdp_weapons:weapon/long_sword/4_spirit1/change_foresight

# 終了
    execute if entity @s[scores={MhdpWeaponTimer=30..}] run function mhdp_weapons:weapon/long_sword/4_spirit1/end
