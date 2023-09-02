#> hdp_weapons:weapon/long_sword/5_spirit2/end
#
# 太刀：気刃斬り_失敗

# モデル変更
    function mhdp_weapons:weapon/long_sword/99_reset/model

# ステップ回避ロック解除
    tag @s remove PlySneakAvoidLock

# タグ更新
    tag @s remove WpnLsword5Spirit2
