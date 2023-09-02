#> mhdp_weapons:weapon/long_sword/13_serene_counter/main
#
# 太刀：水月の構え_反撃

# タイマー
    scoreboard players add @s MhdpWeaponTimer 1

# 武器アニメーション
    execute if entity @s[scores={MhdpWeaponTimer=1}] run function mhdp_weapons:weapon/long_sword/2_vertical/animation_0
    execute if entity @s[scores={MhdpWeaponTimer=2}] run function mhdp_weapons:weapon/long_sword/2_vertical/animation_1
    execute if entity @s[scores={MhdpWeaponTimer=3}] run function mhdp_weapons:weapon/long_sword/2_vertical/animation_2

# 攻撃
    execute if entity @s[scores={MhdpWeaponTimer=1}] run function mhdp_weapons:weapon/long_sword/13_serene_counter/attack

# 移動速度低下
    execute if entity @s[scores={MhdpWeaponTimer=1}] run effect give @s slowness 1 3 true

# 遷移
    # 右クリック時，気刃斬り3に移行
        execute if entity @s[tag=PlyUsingEyeStart,tag=!PlySneakCurrent,scores={MhdpWeaponTimer=13..30,MhdpWeaponSpiritGaugeLsword=120..}] run function mhdp_weapons:weapon/long_sword/13_serene_counter/change_spirit

# 終了
    execute if entity @s[scores={MhdpWeaponTimer=31..}] run function mhdp_weapons:weapon/long_sword/13_serene_counter/end
