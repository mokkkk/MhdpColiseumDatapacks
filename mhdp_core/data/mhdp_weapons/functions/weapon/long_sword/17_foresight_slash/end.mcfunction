#> mhdp_weapons:weapon/long_sword/17_foresight_slash/end
#
# 太刀：斬り下がり

# モデル変更
    function mhdp_weapons:weapon/long_sword/99_reset/model

# ステップ回避ロック解除
    tag @s remove PlySneakAvoidLock

# タグ更新
    tag @s remove WpnLsword17ForesightSlash
    tag @s remove WpnLswordForesightSuccess
