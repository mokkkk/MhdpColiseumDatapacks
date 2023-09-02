#> mhdp_weapons:weapon/long_sword/2_vertical/change_moveslash
#
# 太刀：踏み込み斬り → 斬り下がり

# モデル変更
    function mhdp_weapons:weapon/long_sword/99_reset/model

# ステップ回避ロック解除
    tag @s remove PlySneakAvoidLock

# タグ更新
    tag @s remove WpnLsword2Vertical

# 移行
    function mhdp_weapons:weapon/long_sword/7_moveslash/start
