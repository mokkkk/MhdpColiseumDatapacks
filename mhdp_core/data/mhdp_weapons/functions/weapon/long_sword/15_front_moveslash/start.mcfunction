#> mhdp_weapons:weapon/long_sword/15_front_moveslash/start
#
# 太刀：踏み込み斬り開始

# アニメーションタイマーリセット
    scoreboard players set @s MhdpWeaponTimer 0

# タグ更新
    execute unless score @s MhdpWeaponSpiritGaugeLsword matches 180.. run tag @s add WpnLsword15FrontMoveSlash
    execute if score @s MhdpWeaponSpiritGaugeLsword matches 180.. run tag @s add WpnLsword16SpiritMoveSlash
    execute if score @s MhdpWeaponSpiritGaugeLsword matches 180.. run scoreboard players remove @s MhdpWeaponSpiritGaugeTimerLsword 100
    execute if score @s MhdpWeaponSpiritGaugeLsword matches 180.. run scoreboard players remove @s MhdpWeaponSpiritGaugeLsword 180

# ステップ回避ロック開始
    tag @s add PlySneakAvoidLock

say 踏み込み斬り