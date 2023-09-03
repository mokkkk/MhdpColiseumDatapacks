#> mhdp_weapons:weapon/long_sword/18_sp_sheathe/main
#
# 太刀：特殊納刀

# タイマー増加
    scoreboard players add @s MhdpWeaponTimer 1

# 武器アニメーション
    execute if entity @s[scores={MhdpWeaponTimer=1..11}] run function mhdp_weapons:weapon/long_sword/18_sp_sheathe/animation_0
    execute if entity @s[scores={MhdpWeaponTimer=12..23}] run function mhdp_weapons:weapon/long_sword/18_sp_sheathe/animation_1
    execute if entity @s[scores={MhdpWeaponTimer=24..35}] run function mhdp_weapons:weapon/long_sword/18_sp_sheathe/animation_2
    execute if entity @s[scores={MhdpWeaponTimer=36..40}] run function mhdp_weapons:weapon/long_sword/18_sp_sheathe/animation_3

# 移動禁止
    effect give @s slowness 1 10 true

# 演出
    execute if entity @s[scores={MhdpWeaponTimer=1}] run playsound item.trident.return master @a ~ ~ ~ 1 2
    execute if entity @s[scores={MhdpWeaponTimer=36}] run playsound item.axe.wax_off master @a ~ ~ ~ 1 2
    execute if entity @s[scores={MhdpWeaponTimer=36}] run playsound item.axe.wax_off master @a ~ ~ ~ 1 2

# 遷移
    # 右クリック時，居合抜刀気刃斬りに移行
        execute if entity @s[tag=PlyUsingEyeStart,scores={MhdpWeaponTimer=36..,MhdpWeaponSpiritGaugeColorLsword=1..}] run function mhdp_weapons:weapon/long_sword/18_sp_sheathe/change_spirit

# 終了
    execute if entity @s[scores={MhdpWeaponTimer=236..}] run function mhdp_weapons:weapon/long_sword/18_sp_sheathe/end
