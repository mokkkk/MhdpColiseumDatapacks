#> mhdp_weapons:weapon/long_sword/11_kabuto_land/end
#
# 太刀：気刃兜割

# モデル変更
    function mhdp_weapons:weapon/long_sword/99_reset/model

# ステップ回避ロック解除
    tag @s remove PlySneakAvoidLock

# タグ更新
    tag @s remove WpnLsword11KabutoLand
