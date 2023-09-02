#> mhdp_weapons:weapon/long_sword/2_vertical/change_spirit
#
# 太刀：踏み込み斬り → 気刃斬り１

# モデル変更
    function mhdp_weapons:weapon/long_sword/99_reset/model

# ステップ回避ロック解除
    tag @s remove PlySneakAvoidLock

# タグ更新
    tag @s remove WpnLsword2Vertical

# 移行
    function mhdp_weapons:weapon/long_sword/6_spirit3/start
