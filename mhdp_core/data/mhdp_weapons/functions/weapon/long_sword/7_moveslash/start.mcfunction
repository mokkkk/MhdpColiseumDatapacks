#> mhdp_weapons:weapon/long_sword/7_moveslash/start
#
# 太刀：斬り下がり 開始

# アニメーションタイマーリセット
    scoreboard players set @s MhdpWeaponTimer 0

# タグ更新
    tag @s add WpnLsword7Moveslash

# ステップ回避ロック開始
    tag @s add PlySneakAvoidLock

# 演出
    playsound item.armor.equip_chain master @a ~ ~ ~ 1 1

say 斬り下がり