#> mhdp_weapons:weapon/long_sword/21_spirit_spear/change_jump
#
# 片手剣：飛影 → 駆け上がり斬り

# モデル変更
    function mhdp_weapons:weapon/long_sword/99_reset/model

# ステップ回避ロック解除
    tag @s remove PlySneakAvoidLock

# タグ更新
    tag @s remove WpnLsword21SpiritSpear
    tag @s remove AttackHit

# 練気ゲージ一時固定
    scoreboard players set @s MhdpWeaponSpiritGaugeTimerLsword 200

# 演出
    playsound block.grass.step master @a ~ ~ ~ 1 1
    playsound block.grass.step master @a ~ ~ ~ 1 1
    particle block grass_block ~ ~0.2 ~ 0.5 0.1 0.5 0 10

# ジャンプ
    tp @s @s
    scoreboard players set $strength delta.api.launch 16000
    execute at @s rotated ~ -90 run function delta:api/launch_looking

# 移行
    function mhdp_weapons:weapon/long_sword/9_wirekick_jump/start
