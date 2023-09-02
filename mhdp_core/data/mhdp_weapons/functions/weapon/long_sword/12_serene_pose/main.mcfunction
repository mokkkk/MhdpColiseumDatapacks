#> mhdp_weapons:weapon/long_sword/12_serene_pose/main
#
# 太刀：水月の構え

# タイマー
    scoreboard players add @s MhdpWeaponTimer 1

# 武器アニメーション
    execute if entity @s[scores={MhdpWeaponTimer=1}] run function mhdp_weapons:weapon/long_sword/12_serene_pose/animation_0

# 演出
    # execute if entity @s[scores={MhdpWeaponTimer=1}] run 

# 移動速度低下
    execute if entity @s[scores={MhdpWeaponTimer=1}] run effect give @s slowness 5 10 true

# 無敵時間付与
    execute if entity @s[scores={MhdpWeaponTimer=1}] run scoreboard players set @s MhdpTAvoid 80

# タグ消去
    execute if entity @s[scores={MhdpWeaponTimer=101}] run function mhdp_weapons:weapon/long_sword/12_serene_pose/remove_tag
# 終了
    execute if entity @s[scores={MhdpWeaponTimer=101..}] run function mhdp_weapons:weapon/long_sword/12_serene_pose/end
