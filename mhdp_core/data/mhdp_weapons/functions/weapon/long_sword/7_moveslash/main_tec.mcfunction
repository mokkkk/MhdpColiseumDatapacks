#> mhdp_weapons:weapon/long_sword/7_moveslash/main_tec
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
    execute if entity @s[scores={MhdpWeaponTimer=3}] run function mhdp_weapons:weapon/long_sword/7_moveslash/move_start

# 遷移
    # 右クリック時，踏み込み斬りに移行
        execute if entity @s[tag=PlyUsingEyeStart,scores={MhdpWeaponTimer=12..30}] run function mhdp_weapons:weapon/long_sword/7_moveslash/change_frontmoveslash

# 終了
    execute if entity @s[scores={MhdpWeaponTimer=35..}] run function mhdp_weapons:weapon/long_sword/7_moveslash/end
