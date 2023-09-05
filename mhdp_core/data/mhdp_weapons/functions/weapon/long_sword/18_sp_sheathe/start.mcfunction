#> mhdp_weapons:weapon/long_sword/18_sp_sheathe/start
#
# 太刀：特殊納刀 開始

# リセット処理
    function mhdp_weapons:weapon/long_sword/99_reset/

# アニメーションタイマーリセット
    scoreboard players set @s MhdpWeaponTimer 0

# タグ更新
    tag @s add WpnLsword18SpSheathe

# ステップ回避ロック開始
    tag @s add PlySneakAvoidLock

say 特殊納刀