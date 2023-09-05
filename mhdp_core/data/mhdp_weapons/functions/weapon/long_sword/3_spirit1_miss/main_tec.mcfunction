#> mhdp_weapons:weapon/long_sword/3_spirit1_miss/main_tec
#
# 太刀：気刃斬り_失敗

# タイマー増加
    scoreboard players add @s MhdpWeaponTimer 1

# 武器アニメーション
    execute if entity @s[scores={MhdpWeaponTimer=1..3}] run function mhdp_weapons:weapon/long_sword/3_spirit1_miss/animation_0
    execute if entity @s[scores={MhdpWeaponTimer=4}] run function mhdp_weapons:weapon/long_sword/3_spirit1_miss/animation_1
    execute if entity @s[scores={MhdpWeaponTimer=5}] run function mhdp_weapons:weapon/long_sword/3_spirit1_miss/animation_2

# 攻撃
    execute if entity @s[scores={MhdpWeaponTimer=3}] run function mhdp_weapons:weapon/long_sword/3_spirit1_miss/attack

# 移動速度低下
    execute if entity @s[scores={MhdpWeaponTimer=1}] run effect give @s slowness 1 2 true

# 遷移
    # スニーク+右クリック時，斬り下がりに移行
        execute if entity @s[tag=PlyUsingEyeStart,tag=PlySneakCurrent,scores={MhdpWeaponTimer=12..}] run function mhdp_weapons:weapon/long_sword/3_spirit1_miss/change_moveslash
    # スニーク+ジャンプ時，見切り斬りに移行
        execute if entity @s[tag=PlyJumpping,tag=PlySneakCurrent,scores={MhdpWeaponTimer=12..}] run function mhdp_weapons:weapon/long_sword/3_spirit1_miss/change_foresight
    
# 終了
    execute if entity @s[scores={MhdpWeaponTimer=30..}] run function mhdp_weapons:weapon/long_sword/3_spirit1_miss/end
