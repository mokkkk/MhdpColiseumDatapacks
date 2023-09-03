#> mhdp_weapons:weapon/long_sword/17_foresight_slash/start
#
# 太刀：見切り斬り 開始

# アニメーションタイマーリセット
    scoreboard players set @s MhdpWeaponTimer 0

# タグ更新
    tag @s add WpnLsword17ForesightSlash

# ステップ回避ロック開始
    tag @s add PlySneakAvoidLock

# 練気ゲージを消費し，無敵時間付与
    execute if score @s MhdpWeaponSpiritGaugeLsword matches 1.. run scoreboard players set @s MhdpTAvoid 14
    scoreboard players set @s MhdpWeaponSpiritGaugeLsword 0

say 見切り斬り