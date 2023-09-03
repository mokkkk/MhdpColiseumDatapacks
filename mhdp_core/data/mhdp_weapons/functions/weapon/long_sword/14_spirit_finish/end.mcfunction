#> mhdp_weapons:weapon/long_sword/14_spirit_finish/end
#
# 太刀：気刃大回転斬り

# モデル変更
    function mhdp_weapons:weapon/long_sword/99_reset/model

# ステップ回避ロック解除
    tag @s remove PlySneakAvoidLock

# タグ更新
    tag @s remove WpnLsword14SpiritFinish

# 納刀
    playsound item.axe.wax_off master @a ~ ~ ~ 1 0.5
    function mhdp_weapons:core/sheathe/force
