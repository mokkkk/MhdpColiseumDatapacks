#> mhdp_weapons:weapon/long_sword/6_spirit3/start
#
# 太刀：気刃斬り3 開始

# アニメーションタイマーリセット
    scoreboard players set @s MhdpWeaponTimer 0

# タグ更新
    tag @s add WpnLsword6Spirit3
    scoreboard players set @s MhdpWeaponSpiritGaugeTimerLsword 80
    scoreboard players remove @s MhdpWeaponSpiritGaugeLsword 120

# ステップ回避ロック開始
    tag @s add PlySneakAvoidLock

# 演出
    playsound item.armor.equip_chain master @a ~ ~ ~ 1 1

say 気刃斬り3