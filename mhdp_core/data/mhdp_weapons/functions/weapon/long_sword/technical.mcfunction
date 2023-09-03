#> mhdp_weapons:weapon/long_sword/technical
#
# 太刀のメイン処理・天ノ型
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
#declare tag WpnLsword14SpiritFinish 太刀:気刃大回転斬り
#declare tag WpnLsword15FrontMoveSlash 太刀:踏み込み斬り
#declare tag WpnLsword16SpiritMoveSlash 太刀:気刃踏み込み斬り
#declare tag WpnLsword17ForesightSlash 太刀:見切り斬り
#declare tag WpnLsword18SpSheathe 太刀:特殊納刀
#declare tag WpnLsword19Iai 太刀:居合抜刀斬り
#declare tag WpnLsword20SpiritIai 太刀:居合抜刀気刃斬り

#declare tag WpnLswordForesightSuccess 太刀:見切り斬り成功
#declare tag WpnLswordSpiritIaiSuccess 太刀:居合抜刀気刃斬り成功

# 0_常時実行：
    function mhdp_weapons:weapon/long_sword/0_tick/

## 1_抜刀攻撃（踏み込み斬り）：
    execute if entity @s[tag=!PlyWeaponDeactivate,tag=!IsDrawing,tag=!PlySneakAvoidFunc,tag=PlyUsingEyeStart] run function mhdp_weapons:weapon/long_sword/1_draw_act/start

## 2_斬りおろし：
    execute if entity @s[tag=IsDrawing,tag=WpnLsword2Vertical] run function mhdp_weapons:weapon/long_sword/2_vertical/main_tec

## 3_気刃斬り1_失敗：
    execute if entity @s[tag=!PlyWeaponDeactivate,tag=IsDrawing,tag=!PlySneakAvoidFunc,tag=PlyUsingEyeStart,tag=!PlySneakCurrent,tag=!WpnLsword2Vertical,tag=!WpnLsword3Spirit1Miss,tag=!WpnLsword4Spirit1,tag=!WpnLsword5Spirit2,tag=!WpnLsword6Spirit3,tag=!WpnLsword7Moveslash,tag=!WpnLsword8WireKick,tag=!WpnLsword9WireKickJump,tag=!WpnLsword10Kabuto,tag=!WpnLsword11KabutoLand,tag=!WpnLsword12SerenePose,tag=!WpnLsword13SereneCounter,tag=!WpnLsword14SpiritFinish,tag=!WpnLsword15FrontMoveSlash,tag=!WpnLsword16SpiritMoveSlash,tag=!WpnLsword17ForesightSlash,tag=!WpnLsword18SpSheathe,tag=!WpnLsword19Iai] run function mhdp_weapons:weapon/long_sword/3_spirit1_miss/start
    execute if entity @s[tag=IsDrawing,tag=WpnLsword3Spirit1Miss] run function mhdp_weapons:weapon/long_sword/3_spirit1_miss/main_tec

## 4_気刃斬り1：
    execute if entity @s[tag=IsDrawing,tag=WpnLsword4Spirit1] run function mhdp_weapons:weapon/long_sword/4_spirit1/main_tec

## 5_気刃斬り2：
    execute if entity @s[tag=IsDrawing,tag=WpnLsword5Spirit2] run function mhdp_weapons:weapon/long_sword/5_spirit2/main_tec

## 6_気刃斬り3：
    execute if entity @s[tag=IsDrawing,tag=WpnLsword6Spirit3] run function mhdp_weapons:weapon/long_sword/6_spirit3/main_tec

## 7_斬り下がり：
    execute if entity @s[tag=!PlyWeaponDeactivate,tag=IsDrawing,tag=!PlySneakAvoidFunc,tag=PlyUsingEyeStart,tag=PlySneakCurrent,tag=!WpnLsword2Vertical,tag=!WpnLsword3Spirit1Miss,tag=!WpnLsword4Spirit1,tag=!WpnLsword5Spirit2,tag=!WpnLsword6Spirit3,tag=!WpnLsword7Moveslash,tag=!WpnLsword8WireKick,tag=!WpnLsword9WireKickJump,tag=!WpnLsword10Kabuto,tag=!WpnLsword11KabutoLand,tag=!WpnLsword12SerenePose,tag=!WpnLsword13SereneCounter,tag=!WpnLsword14SpiritFinish,tag=!WpnLsword15FrontMoveSlash,tag=!WpnLsword16SpiritMoveSlash,tag=!WpnLsword17ForesightSlash,tag=!WpnLsword18SpSheathe,tag=!WpnLsword19Iai] run function mhdp_weapons:weapon/long_sword/7_moveslash/start
    execute if entity @s[tag=IsDrawing,tag=WpnLsword7Moveslash] run function mhdp_weapons:weapon/long_sword/7_moveslash/main_tec

## 8_飛翔蹴り：
# 翔蟲移動中，抜刀攻撃
    execute if entity @s[tag=IsDrawing,tag=WpnLsword8WireKick] run function mhdp_weapons:weapon/long_sword/8_wirekick/main

## 9_飛翔蹴り_滞空：
    execute if entity @s[tag=IsDrawing,tag=WpnLsword9WireKickJump] run function mhdp_weapons:weapon/long_sword/9_wirekick_jump/main

## 10_気刃兜割：
    execute if entity @s[tag=IsDrawing,tag=WpnLsword10Kabuto] run function mhdp_weapons:weapon/long_sword/10_kabuto/main_tec

## 11_気刃兜割_着地：
    execute if entity @s[tag=IsDrawing,tag=WpnLsword11KabutoLand] run function mhdp_weapons:weapon/long_sword/11_kabuto_land/main_tec

## 12_水月の構え：
# 翔蟲待機中，抜刀攻撃
    execute if entity @s[tag=IsDrawing,tag=WpnLsword12SerenePose] run function mhdp_weapons:weapon/long_sword/12_serene_pose/main

## 13_水月の構え_反撃：
    execute if entity @s[tag=IsDrawing,tag=WpnLsword13SereneCounter] run function mhdp_weapons:weapon/long_sword/13_serene_counter/main

## 14_気刃大回転斬り：
    execute if entity @s[tag=IsDrawing,tag=WpnLsword14SpiritFinish] run function mhdp_weapons:weapon/long_sword/14_spirit_finish/main

## 15_踏み込み斬り：
    execute if entity @s[tag=IsDrawing,tag=WpnLsword15FrontMoveSlash] run function mhdp_weapons:weapon/long_sword/15_front_moveslash/main

## 16_気刃踏み込み斬り：
    execute if entity @s[tag=IsDrawing,tag=WpnLsword16SpiritMoveSlash] run function mhdp_weapons:weapon/long_sword/16_spirit_moveslash/main

## 17_見切り斬り：
    execute if entity @s[tag=IsDrawing,tag=WpnLsword17ForesightSlash] run function mhdp_weapons:weapon/long_sword/17_foresight_slash/main

## 18_特殊納刀：
    execute if entity @s[tag=IsDrawing,tag=WpnLsword18SpSheathe] run function mhdp_weapons:weapon/long_sword/18_sp_sheathe/main

## 19_居合抜刀斬り：
    execute if entity @s[tag=IsDrawing,tag=WpnLsword19Iai] run function mhdp_weapons:weapon/long_sword/19_iai/main

## 20_居合抜刀気刃斬り：
    execute if entity @s[tag=IsDrawing,tag=WpnLsword20SpiritIai] run function mhdp_weapons:weapon/long_sword/20_spirit_iai/main

# 終了
    tag @s remove IsDrawing
