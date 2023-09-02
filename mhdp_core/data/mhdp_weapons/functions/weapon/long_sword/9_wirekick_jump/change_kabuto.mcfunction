#> mhdp_weapons:weapon/long_sword/9_wirekick_jump/change_kabuto
#
# 太刀：飛翔蹴り → 気刃兜割

# モデル変更
    function mhdp_weapons:weapon/long_sword/99_reset/model

# ステップ回避ロック解除
    tag @s remove PlySneakAvoidLock

# タグ更新
    tag @s remove WpnLsword9WireKickJump
    tag @s remove AttackHit

# 移行
    function mhdp_weapons:weapon/long_sword/10_kabuto/start
