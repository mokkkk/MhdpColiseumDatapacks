#> mhdp_weapons:weapon/long_sword/normal
#
# 太刀のメイン処理・通常
#

#declare objective MhdpWeaponSpiritGaugeLsword 太刀練気ゲージ
#declare objective MhdpWeaponSpiritGaugeTimerLsword 太刀練気ゲージ減少タイマー
#declare objective MhdpWeaponSpiritGaugeColorLsword 太刀練気ゲージ色

#declare tag WpnLsword2Vertical 太刀:斬り下ろし
#declare tag WpnLsword3Spirit1Miss 太刀:気刃斬り1_失敗
#declare tag WpnLsword4Spirit1 太刀:気刃斬り1
#declare tag WpnLsword5Spirit2 太刀:気刃斬り2
#declare tag WpnLsword6Spirit3 太刀:気刃斬り3
#declare tag WpnLsword7Moveslash 太刀:斬り下がり

# 0_常時実行：
    function mhdp_weapons:weapon/long_sword/0_tick/

## 1_抜刀攻撃（踏み込み斬り）：
    execute if entity @s[tag=!PlyWeaponDeactivate,tag=!IsDrawing,tag=!PlySneakAvoidFunc,tag=PlyUsingEyeStart] run function mhdp_weapons:weapon/long_sword/1_draw_act/start

## 2_斬り下ろし：
    execute if entity @s[tag=IsDrawing,tag=WpnLsword2Vertical] run function mhdp_weapons:weapon/long_sword/2_vertical/main

## 3_気刃斬り1_失敗
    execute if entity @s[tag=!PlyWeaponDeactivate,tag=IsDrawing,tag=!PlySneakAvoidFunc,tag=PlyUsingEyeStart,tag=!PlySneakCurrent,tag=!WpnLsword2Vertical,tag=!WpnLsword3Spirit1Miss,tag=!WpnLsword4Spirit1,tag=!WpnLsword5Spirit2,tag=!WpnLsword6Spirit3,tag=!WpnLsword7Moveslash] run function mhdp_weapons:weapon/long_sword/3_spirit1_miss/start
    execute if entity @s[tag=IsDrawing,tag=WpnLsword3Spirit1Miss] run function mhdp_weapons:weapon/long_sword/3_spirit1_miss/main

## 4_気刃斬り1
    execute if entity @s[tag=IsDrawing,tag=WpnLsword4Spirit1] run function mhdp_weapons:weapon/long_sword/4_spirit1/main

## 5_気刃斬り2
    execute if entity @s[tag=IsDrawing,tag=WpnLsword5Spirit2] run function mhdp_weapons:weapon/long_sword/5_spirit2/main

## 6_気刃斬り3
    execute if entity @s[tag=IsDrawing,tag=WpnLsword6Spirit3] run function mhdp_weapons:weapon/long_sword/6_spirit3/main

## 7_斬り下がり
    execute if entity @s[tag=!PlyWeaponDeactivate,tag=IsDrawing,tag=!PlySneakAvoidFunc,tag=PlyUsingEyeStart,tag=PlySneakCurrent,tag=!WpnLsword2Vertical,tag=!WpnLsword3Spirit1Miss,tag=!WpnLsword4Spirit1,tag=!WpnLsword5Spirit2,tag=!WpnLsword6Spirit3,tag=!WpnLsword7Moveslash] run function mhdp_weapons:weapon/long_sword/7_moveslash/start
    execute if entity @s[tag=IsDrawing,tag=WpnLsword7Moveslash] run function mhdp_weapons:weapon/long_sword/7_moveslash/main

# 終了
    tag @s remove IsDrawing
