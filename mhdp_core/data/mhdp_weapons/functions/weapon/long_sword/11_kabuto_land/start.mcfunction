#> mhdp_weapons:weapon/long_sword/11_kabuto_land/start
#
# 太刀：気刃兜割 開始

# アニメーションタイマーリセット
    scoreboard players set @s MhdpWeaponTimer 0

# 練気ゲージ一時固定
    scoreboard players set @s MhdpWeaponSpiritGaugeTimerLsword 200

# ステップ回避ロック開始
    tag @s add WpnLsword11KabutoLand
    tag @s add PlySneakAvoidLock

# 演出
    playsound item.armor.equip_chain master @a ~ ~ ~ 1 1

say 気刃兜割