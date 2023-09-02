#> mhdp_weapons:weapon/long_sword/13_serene_counter/change_spirit
#
# 太刀：水月の構え → 気刃斬り3

# モデル変更
    function mhdp_weapons:weapon/long_sword/99_reset/model

# ステップ回避ロック解除
    tag @s remove PlySneakAvoidLock
    effect clear @s slowness

# タグ更新
    tag @s remove WpnLsword13SereneCounter

# 移行
    function mhdp_weapons:weapon/long_sword/6_spirit3/start
