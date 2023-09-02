#> mhdp_weapons:weapon/long_sword/5_spirit2/change_spirit
#
# 太刀：気刃斬り2 → 気刃斬り3

# モデル変更
    function mhdp_weapons:weapon/long_sword/99_reset/model

# ステップ回避ロック解除
    tag @s remove PlySneakAvoidLock

# タグ更新
    tag @s remove WpnLsword5Spirit2

# 移行
    function mhdp_weapons:weapon/long_sword/6_spirit3/start
