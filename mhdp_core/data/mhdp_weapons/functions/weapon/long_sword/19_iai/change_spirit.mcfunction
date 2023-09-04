#> mhdp_weapons:weapon/long_sword/19_iai/change_spirit
#
# 太刀：居合抜刀斬り → 気刃斬り

# モデル変更
    function mhdp_weapons:weapon/long_sword/99_reset/model

# ステップ回避ロック解除
    tag @s remove PlySneakAvoidLock

# タグ更新
    tag @s remove WpnLsword19Iai

# 移行
    function mhdp_weapons:weapon/long_sword/3_spirit1_miss/start
