#> mhdp_weapons:weapon/long_sword/3_spirit1_miss/change_foresight
#
# 太刀：気刃斬り_失敗 → 気刃斬り１

# モデル変更
    function mhdp_weapons:weapon/long_sword/99_reset/model

# ステップ回避ロック解除
    tag @s remove PlySneakAvoidLock

# タグ更新
    tag @s remove WpnLsword3Spirit1Miss

# 移行
    function mhdp_weapons:weapon/long_sword/17_foresight_slash/start
