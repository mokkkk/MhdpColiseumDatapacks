#> mhdp_weapons:weapon/short_sword/7_step/change_dash
#
# 片手剣：バックステップ→突進斬り

# モデル変更
    function mhdp_weapons:weapon/short_sword/99_reset/model

# タグ更新
    tag @s remove WpnSsword7Step
    tag @s remove PlySneakAvoidLock
    tag @s remove WpnSswordCharged

# 移動速度リセット
    effect clear @s slowness

# 突進斬り移行
    function mhdp_weapons:weapon/short_sword/2_dash_attack/start