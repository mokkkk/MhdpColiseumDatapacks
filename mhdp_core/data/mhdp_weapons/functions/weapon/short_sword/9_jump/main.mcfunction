#> mhdp_weapons:weapon/short_sword/9_jump/main
#
# 片手剣：駆け上がり斬り

# タイマー増加
    scoreboard players add @s MhdpWeaponTimer 1

# 武器アニメーション
    execute if entity @s[scores={MhdpWeaponTimer=1}] run function mhdp_weapons:weapon/short_sword/9_jump/animation_0
    execute if entity @s[scores={MhdpWeaponTimer=3}] run function mhdp_weapons:weapon/short_sword/9_jump/animation_1
    execute if entity @s[scores={MhdpWeaponTimer=5}] run function mhdp_weapons:weapon/short_sword/9_jump/animation_2
    execute if entity @s[scores={MhdpWeaponTimer=10}] run function mhdp_weapons:weapon/short_sword/9_jump/animation_3

# 攻撃
    execute if entity @s[scores={MhdpWeaponTimer=1}] run tp @s ~ ~ ~ ~ ~3
    execute if entity @s[scores={MhdpWeaponTimer=3}] run function mhdp_weapons:weapon/short_sword/9_jump/attack
    execute if entity @s[scores={MhdpWeaponTimer=3..5}] run tp @s ~ ~ ~ ~ ~-4

# ジャンプ
    execute if entity @s[scores={MhdpWeaponTimer=3}] run scoreboard players set $strength delta.api.launch 12000
    execute if entity @s[scores={MhdpWeaponTimer=3}] at @s rotated ~ -90 run function delta:api/launch_looking

# 終了
    execute if entity @s[scores={MhdpWeaponTimer=30..}] run function mhdp_weapons:weapon/short_sword/9_jump/end

# 遷移
    # 右クリック時，フォールバッシュに移行
        execute if entity @s[tag=PlyUsingEyeStart,scores={MhdpWeaponTimer=8..}] run function mhdp_weapons:weapon/short_sword/9_jump/change_fall
