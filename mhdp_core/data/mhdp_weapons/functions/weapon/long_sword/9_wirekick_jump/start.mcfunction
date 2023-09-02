#> mhdp_weapons:weapon/long_sword/9_wirekick_jump/start
#
# 太刀：飛翔蹴り_滞空開始

# アニメーションタイマーリセット
    scoreboard players set @s MhdpWeaponTimer 0

# タグ更新
    tag @s add WpnLsword9WireKickJump
# ステップ回避ロック開始
    tag @s add PlySneakAvoidLock

# 移動速度リセット
    effect clear @s speed

say 飛翔蹴り滞空