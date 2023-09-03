#> mhdp_weapons:weapon/long_sword/7_moveslash/change_frontmoveslash
#
# 太刀：斬り下がり → 踏み込み斬り

# モデル変更
    function mhdp_weapons:weapon/long_sword/99_reset/model

# ステップ回避ロック解除
    tag @s remove PlySneakAvoidLock

# タグ更新
    tag @s remove WpnLsword7Moveslash

# 移行
    function mhdp_weapons:weapon/long_sword/15_front_moveslash/start
