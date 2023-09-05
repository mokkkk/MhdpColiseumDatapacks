#> mhdp_weapons:weapon/long_sword/3_spirit1_miss/start
#
# 太刀：気刃斬り1 開始

# アニメーションタイマーリセット
    scoreboard players set @s MhdpWeaponTimer 0

# タグ更新
    execute unless score @s MhdpWeaponSpiritGaugeLsword matches 120.. run tag @s add WpnLsword3Spirit1Miss
    execute if score @s MhdpWeaponSpiritGaugeLsword matches 120.. run tag @s add WpnLsword4Spirit1
    execute if score @s MhdpWeaponSpiritGaugeLsword matches 120.. run scoreboard players remove @s MhdpWeaponSpiritGaugeLsword 120

# ステップ回避ロック開始
    tag @s add PlySneakAvoidLock

# 演出
    playsound item.armor.equip_chain master @a ~ ~ ~ 1 1

say 気刃斬り