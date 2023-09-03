#> mhdp_weapons:weapon/long_sword/20_spirit_iai/start
#
# 太刀：居合抜刀気刃斬り 開始

# アニメーションタイマーリセット
    scoreboard players set @s MhdpWeaponTimer 0

# タグ更新
    tag @s add WpnLsword20SpiritIai

# ステップ回避ロック開始
    tag @s add PlySneakAvoidLock

# 無敵時間付与
    scoreboard players set @s MhdpTAvoid 7

# 演出
    playsound item.armor.equip_chain master @a ~ ~ ~ 1 1

# ゲージ色減少
    function mhdp_weapons:weapon/long_sword/14_spirit_finish/down_gauge_color

say 居合抜刀気刃斬り