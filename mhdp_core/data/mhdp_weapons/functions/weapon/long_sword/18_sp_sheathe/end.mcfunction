#> mhdp_weapons:weapon/long_sword/18_sp_sheathe/end
#
# 太刀：斬り下がり

# モデル変更
    function mhdp_weapons:weapon/long_sword/99_reset/model

# ステップ回避ロック解除
    tag @s remove PlySneakAvoidLock

# タグ更新
    tag @s remove WpnLsword18SpSheathe

# 納刀
    function mhdp_weapons:core/sheathe/force