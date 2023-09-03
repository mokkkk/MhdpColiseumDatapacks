#> mhdp_weapons:weapon/long_sword/20_spirit_iai/end
#
# 太刀：気刃大回転斬り

# モデル変更
    function mhdp_weapons:weapon/long_sword/99_reset/model

# ステップ回避ロック解除
    tag @s remove PlySneakAvoidLock

# タグ更新
    tag @s remove WpnLsword20SpiritIai
    tag @s remove WpnLswordSpiritIaiSuccess
