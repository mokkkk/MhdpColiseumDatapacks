#> mhdp_weapons:weapon/long_sword/normal
#
# 太刀のメイン処理・通常
#

#declare objective MhdpWeaponSpiritGaugeLsword 太刀練気ゲージ
#declare objective MhdpWeaponSpiritGaugeTimerLsword 太刀練気ゲージ減少タイマー
#declare objective MhdpWeaponSpiritGaugeColorLsword 太刀練気ゲージ色

#declare tag WpnLsword2Vertical 太刀:斬りおろし
#declare tag WpnLsword3Spirit1Miss 太刀:気刃斬り1_失敗
#declare tag WpnLsword4Spirit1 太刀:気刃斬り1
#declare tag WpnLsword5Spirit2 太刀:気刃斬り2
#declare tag WpnLsword6Spirit3 太刀:気刃斬り3
#declare tag WpnLsword7Moveslash 太刀:斬り下がり
#declare tag WpnLsword8WireKick 太刀:飛翔蹴り
#declare tag WpnLsword9WireKickJump 太刀:飛翔蹴り_滞空
#declare tag WpnLsword10Kabuto 太刀:気刃兜割
#declare tag WpnLsword11KabutoLand 太刀:気刃兜割_着地
#declare tag WpnLsword12SerenePose 太刀:水月の構え
#declare tag WpnLsword13SereneCounter 太刀:水月の構え_反撃

# 0_常時実行：
    function mhdp_weapons:weapon/long_sword/0_tick/

## 1_抜刀攻撃（踏み込み斬り）：
    execute if entity @s[tag=!PlyWeaponDeactivate,tag=!IsDrawing,tag=!PlySneakAvoidFunc,tag=PlyUsingEyeStart] run function mhdp_weapons:weapon/long_sword/1_draw_act/start

## 2_斬りおろし：
    execute if entity @s[tag=IsDrawing,tag=WpnLsword2Vertical] run function mhdp_weapons:weapon/long_sword/2_vertical/main

## 3_気刃斬り1_失敗：
    execute if entity @s[tag=!PlyWeaponDeactivate,tag=IsDrawing,tag=!PlySneakAvoidFunc,tag=PlyUsingEyeStart,tag=!PlySneakCurrent,tag=!WpnLsword2Vertical,tag=!WpnLsword3Spirit1Miss,tag=!WpnLsword4Spirit1,tag=!WpnLsword5Spirit2,tag=!WpnLsword6Spirit3,tag=!WpnLsword7Moveslash,tag=!WpnLsword8WireKick,tag=!WpnLsword9WireKickJump,tag=!WpnLsword10Kabuto,tag=!WpnLsword11KabutoLand,tag=!WpnLsword12SerenePose,tag=!WpnLsword13SereneCounter] run function mhdp_weapons:weapon/long_sword/3_spirit1_miss/start
    execute if entity @s[tag=IsDrawing,tag=WpnLsword3Spirit1Miss] run function mhdp_weapons:weapon/long_sword/3_spirit1_miss/main

## 4_気刃斬り1：
    execute if entity @s[tag=IsDrawing,tag=WpnLsword4Spirit1] run function mhdp_weapons:weapon/long_sword/4_spirit1/main

## 5_気刃斬り2：
    execute if entity @s[tag=IsDrawing,tag=WpnLsword5Spirit2] run function mhdp_weapons:weapon/long_sword/5_spirit2/main

## 6_気刃斬り3：
    execute if entity @s[tag=IsDrawing,tag=WpnLsword6Spirit3] run function mhdp_weapons:weapon/long_sword/6_spirit3/main

## 7_斬り下がり：
    execute if entity @s[tag=!PlyWeaponDeactivate,tag=IsDrawing,tag=!PlySneakAvoidFunc,tag=PlyUsingEyeStart,tag=PlySneakCurrent,tag=!WpnLsword2Vertical,tag=!WpnLsword3Spirit1Miss,tag=!WpnLsword4Spirit1,tag=!WpnLsword5Spirit2,tag=!WpnLsword6Spirit3,tag=!WpnLsword7Moveslash,tag=!WpnLsword8WireKick,tag=!WpnLsword9WireKickJump,tag=!WpnLsword10Kabuto,tag=!WpnLsword11KabutoLand,tag=!WpnLsword12SerenePose,tag=!WpnLsword13SereneCounter] run function mhdp_weapons:weapon/long_sword/7_moveslash/start
    execute if entity @s[tag=IsDrawing,tag=WpnLsword7Moveslash] run function mhdp_weapons:weapon/long_sword/7_moveslash/main

## 8_飛翔蹴り：
# 翔蟲移動中，抜刀攻撃
    execute if entity @s[tag=IsDrawing,tag=WpnLsword8WireKick] run function mhdp_weapons:weapon/long_sword/8_wirekick/main

## 9_飛翔蹴り_滞空：
    execute if entity @s[tag=IsDrawing,tag=WpnLsword9WireKickJump] run function mhdp_weapons:weapon/long_sword/9_wirekick_jump/main

## 10_気刃兜割：
    execute if entity @s[tag=IsDrawing,tag=WpnLsword10Kabuto] run function mhdp_weapons:weapon/long_sword/10_kabuto/main

## 11_気刃兜割_着地：
    execute if entity @s[tag=IsDrawing,tag=WpnLsword11KabutoLand] run function mhdp_weapons:weapon/long_sword/11_kabuto_land/main

## 12_水月の構え：
# 翔蟲待機中，抜刀攻撃
    execute if entity @s[tag=IsDrawing,tag=WpnLsword12SerenePose] run function mhdp_weapons:weapon/long_sword/12_serene_pose/main

## 13_水月の構え_反撃：
    execute if entity @s[tag=IsDrawing,tag=WpnLsword13SereneCounter] run function mhdp_weapons:weapon/long_sword/13_serene_counter/main

# 終了
    tag @s remove IsDrawing
