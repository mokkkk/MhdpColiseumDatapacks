#> mhdp_weapons:weapon/long_sword/19_iai/start
#
# 太刀：居合抜刀斬り 開始

# リセット処理
    function mhdp_weapons:weapon/long_sword/99_reset/

# アニメーションタイマーリセット
    scoreboard players set @s MhdpWeaponTimer 0

# タグ更新
    tag @s add WpnLsword19Iai

# ステップ回避ロック開始
    tag @s add PlySneakAvoidLock

# 演出
    playsound item.axe.wax_off master @a ~ ~ ~ 1 2
    playsound item.axe.wax_off master @a ~ ~ ~ 1 2

say 居合抜刀斬り