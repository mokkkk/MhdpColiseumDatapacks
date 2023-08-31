#> mhdp_weapons:weapon/long_sword/normal
#
# 太刀のメイン処理・通常
#
#declare objective MhdpWeaponSpiritGaugeLsword 太刀練気ゲージ
#declare objective MhdpWeaponSpiritGaugeColorLsword 太刀練気ゲージ色

# 0_常時実行：
    function mhdp_weapons:weapon/long_sword/0_tick/

# 終了
    tag @s remove IsDrawing
