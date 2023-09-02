#> mhdp_weapons:weapon/long_sword/9_wirekick_jump/main
#
# 太刀：飛翔蹴り

# タイマー
    scoreboard players add @s MhdpWeaponTimer 1

# 武器アニメーション
    execute if entity @s[scores={MhdpWeaponTimer=1}] run function mhdp_weapons:weapon/long_sword/9_wirekick_jump/animation_0

# 遷移
    # 右クリック時，気刃兜割に移行
        execute if entity @s[tag=PlyUsingEyeStart,scores={MhdpWeaponTimer=5..}] run function mhdp_weapons:weapon/long_sword/9_wirekick_jump/change_kabuto
    # 着地時，気刃兜割_着地に移行
        execute if entity @s[tag=!PlyUsingEyeStart,tag=!PlyJumpping,scores={MhdpWeaponTimer=5..}] run function mhdp_weapons:weapon/long_sword/9_wirekick_jump/change_kabuto_land

# 終了
    execute if entity @s[scores={MhdpWeaponTimer=100..}] run function mhdp_weapons:weapon/long_sword/9_wirekick_jump/end