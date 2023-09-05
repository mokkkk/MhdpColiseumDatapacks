#> mhdp_weapons:weapon/long_sword/10_kabuto/main_tec
#
# 太刀：気刃兜割

# タイマー増加
    scoreboard players add @s MhdpWeaponTimer 1

# 武器アニメーション
    execute if entity @s[scores={MhdpWeaponTimer=1}] run function mhdp_weapons:weapon/long_sword/9_wirekick_jump/animation_0
    execute if entity @s[scores={MhdpWeaponTimer=10}] run function mhdp_weapons:weapon/long_sword/2_vertical/animation_0
    execute if entity @s[scores={MhdpWeaponTimer=11}] run function mhdp_weapons:weapon/long_sword/2_vertical/animation_1
    execute if entity @s[scores={MhdpWeaponTimer=12}] run function mhdp_weapons:weapon/long_sword/2_vertical/animation_2

# 移動
    execute if entity @s[scores={MhdpWeaponTimer=1}] run tp @s @s
    execute if entity @s[scores={MhdpWeaponTimer=1}] run scoreboard players set $strength delta.api.launch 6000
    execute if entity @s[scores={MhdpWeaponTimer=1}] rotated ~ -90 run function delta:api/launch_looking
    execute if entity @s[scores={MhdpWeaponTimer=10}] run function mhdp_weapons:weapon/long_sword/10_kabuto/move

# 攻撃演出
    execute if entity @s[scores={MhdpWeaponTimer=11}] run playsound entity.player.attack.sweep master @a ~ ~ ~ 1 0.7
    execute if entity @s[scores={MhdpWeaponTimer=11}] run playsound item.trident.throw master @a ~ ~ ~ 1 0.7
    execute if entity @s[scores={MhdpWeaponTimer=13}] run playsound item.trident.return master @a ~ ~ ~ 1 1.2

# 攻撃
    # 練気ゲージが足りない場合，失敗
        execute if entity @s[scores={MhdpWeaponTimer=11,MhdpWeaponSpiritGaugeColorLsword=..0}] at @s run function mhdp_weapons:weapon/long_sword/10_kabuto/attack_miss
    # 練気ゲージが白以上の場合，攻撃用Marker召喚
        execute if entity @s[scores={MhdpWeaponTimer=11,MhdpWeaponSpiritGaugeColorLsword=1..}] at @s run function mhdp_weapons:weapon/long_sword/10_kabuto/attack_tec
    
# 移動速度低下
    execute if entity @s[scores={MhdpWeaponTimer=1}] run effect give @s slowness 3 4 true

# 終了
    execute if entity @s[scores={MhdpWeaponTimer=60..}] run function mhdp_weapons:weapon/long_sword/10_kabuto/end
