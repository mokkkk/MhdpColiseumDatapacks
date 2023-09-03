#> mhdp_weapons:weapon/long_sword/18_sp_sheathe/change_spirit
#
# 太刀：特殊納刀 → 居合抜刀気刃斬り

# モデル変更
    function mhdp_weapons:weapon/long_sword/99_reset/model

# ステップ回避ロック解除
    tag @s remove PlySneakAvoidLock

# タグ更新
    tag @s remove WpnLsword18SpSheathe

# 移行
    function mhdp_weapons:weapon/long_sword/20_spirit_iai/start
