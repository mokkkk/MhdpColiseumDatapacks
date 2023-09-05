#> mhdp_weapons:weapon/long_sword/8_wirekick/main
#
# 太刀：飛翔蹴り

# タイマー
    scoreboard players add @s MhdpWeaponTimer 1

# 移動
    execute if entity @s[scores={MhdpWeaponTimer=1}] run tp @s ~ ~ ~ ~ ~-5
    execute if entity @s[scores={MhdpWeaponTimer=2..3}] run tp @s ~ ~ ~ ~ ~4

# 攻撃
    execute if entity @s[scores={MhdpWeaponTimer=2}] run function mhdp_weapons:weapon/long_sword/8_wirekick/attack
    execute if entity @s[scores={MhdpWeaponTimer=2}] run function mhdp_weapons:weapon/long_sword/8_wirekick/remove_tag

# 遷移
    # 攻撃ヒット時，飛翔蹴り_滞空に移行
        execute if entity @s[tag=AttackHit,scores={MhdpWeaponTimer=4}] run function mhdp_weapons:weapon/long_sword/8_wirekick/change_jump

# 終了
    execute if entity @s[scores={MhdpWeaponTimer=5..}] run function mhdp_weapons:weapon/long_sword/8_wirekick/end