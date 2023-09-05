#> mhdp_weapons:weapon/long_sword/17_foresight_slash/change_spirit
#
# 太刀：見切り斬り → 気刃大回転斬り

# モデル変更
    function mhdp_weapons:weapon/long_sword/99_reset/model

# ステップ回避ロック解除
    tag @s remove PlySneakAvoidLock

# タグ更新
    tag @s remove WpnLsword17ForesightSlash
    tag @s remove WpnLswordForesightSuccess

# 移行
    function mhdp_weapons:weapon/long_sword/14_spirit_finish/start
