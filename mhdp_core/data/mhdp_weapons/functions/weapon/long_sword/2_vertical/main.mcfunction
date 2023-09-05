#> mhdp_weapons:weapon/long_sword/2_vertical/main
#
# 太刀：踏み込み斬り

# タイマー
    scoreboard players add @s MhdpWeaponTimer 1

# 武器アニメーション
    execute if entity @s[scores={MhdpWeaponTimer=1..2}] run function mhdp_weapons:weapon/long_sword/2_vertical/animation_0
    execute if entity @s[scores={MhdpWeaponTimer=3}] run function mhdp_weapons:weapon/long_sword/2_vertical/animation_1
    execute if entity @s[scores={MhdpWeaponTimer=4}] run function mhdp_weapons:weapon/long_sword/2_vertical/animation_2

# 演出
    execute if entity @s[scores={MhdpWeaponTimer=..2}] run playsound block.grass.step master @a ~ ~ ~ 1 1
    execute if entity @s[scores={MhdpWeaponTimer=..2}] run particle block grass_block ~ ~0.1 ~ 0.5 0 0.5 0 3

# 攻撃
    execute if entity @s[scores={MhdpWeaponTimer=3}] run function mhdp_weapons:weapon/long_sword/2_vertical/attack

# 遷移
    # 右クリック時，気刃斬りに移行
        execute if entity @s[tag=PlyUsingEyeStart,tag=!PlySneakCurrent,scores={MhdpWeaponTimer=13..30}] run function mhdp_weapons:weapon/long_sword/2_vertical/change_spirit
    # スニーク+右クリック時，斬り下がりに移行
        execute if entity @s[tag=PlyUsingEyeStart,tag=PlySneakCurrent,scores={MhdpWeaponTimer=13..30}] run function mhdp_weapons:weapon/long_sword/2_vertical/change_moveslash

# タグ消去
    execute if entity @s[scores={MhdpWeaponTimer=6}] run function mhdp_weapons:weapon/long_sword/2_vertical/remove_tag
# 終了
    execute if entity @s[scores={MhdpWeaponTimer=31..}] run function mhdp_weapons:weapon/long_sword/2_vertical/end
