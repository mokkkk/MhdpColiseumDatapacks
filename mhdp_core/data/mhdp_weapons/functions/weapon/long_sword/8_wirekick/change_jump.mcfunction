#> mhdp_weapons:weapon/long_sword/8_wirekick/change_jump
#
# 片手剣：飛影 → 駆け上がり斬り

# モデル変更
    function mhdp_weapons:weapon/long_sword/99_reset/model

# ステップ回避ロック解除
    tag @s remove PlySneakAvoidLock

# タグ更新
    tag @s remove WpnLsword8WireKick
    tag @s remove AttackHit

# 練気ゲージ一時固定
    scoreboard players set @s MhdpWeaponSpiritGaugeTimerLsword 200

# ジャンプ
    tp @s @s
    scoreboard players set $strength delta.api.launch 12000
    execute at @s rotated ~ -90 run function delta:api/launch_looking

# 移行
    function mhdp_weapons:weapon/long_sword/9_wirekick_jump/start
