#> mhdp_weapons:weapon/long_sword/5_spirit2/change_moveslash
#
# 太刀：気刃斬り_失敗 → 斬り下がり

# モデル変更
    function mhdp_weapons:weapon/long_sword/99_reset/model

# ステップ回避ロック解除
    tag @s remove PlySneakAvoidLock

# タグ更新
    tag @s remove WpnLsword5Spirit2

# 移行
    function mhdp_weapons:weapon/long_sword/7_moveslash/start