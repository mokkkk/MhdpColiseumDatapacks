#> mhdp_weapons:weapon/long_sword/14_spirit_finish/start
#
# 太刀：気刃斬り1 開始

# アニメーションタイマーリセット
    scoreboard players set @s MhdpWeaponTimer 0

# タグ更新
    tag @s add WpnLsword14SpiritFinish
    scoreboard players set @s MhdpWeaponSpiritGaugeTimerLsword 200
    scoreboard players remove @s MhdpWeaponSpiritGaugeLsword 120

# ステップ回避ロック開始
    tag @s add PlySneakAvoidLock

# 演出
    playsound item.armor.equip_chain master @a ~ ~ ~ 1 1

say 気刃大回転斬り