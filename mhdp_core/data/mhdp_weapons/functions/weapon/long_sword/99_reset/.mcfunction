#> mhdp_weapons:weapon/long_sword/99_reset/
#
# 太刀のリセット処理
#

# 抜刀中：モデル等リセット
     execute if entity @s[tag=PlyWeaponDrawing] if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainHand.tag{MhdpWeapon:1b} run function mhdp_weapons:weapon/long_sword/99_reset/model

# スコア消去
     scoreboard players set @s MhdpWeaponCharge 0
     scoreboard players set @s MhdpWeaponTimer 0

# タグ消去
     tag @s remove WpnLsword2Vertical
     tag @s remove WpnLsword3Spirit1Miss
     tag @s remove WpnLsword4Spirit1
     tag @s remove WpnLsword5Spirit2
     tag @s remove WpnLsword6Spirit3
     tag @s remove WpnLsword7Moveslash
     tag @s remove WpnLsword8WireKick
     tag @s remove WpnLsword9WireKickJump
     tag @s remove WpnLsword10Kabuto
     tag @s remove WpnLsword11KabutoLand
     tag @s remove WpnLsword12SerenePose
     tag @s remove WpnLsword13SereneCounter

# ステップ回避ロック解除
     tag @s remove PlySneakAvoidLock

# 移動速度リセット
     effect clear @s speed
     effect clear @s slowness

# ノックバックパーツ
    tp @e[tag=WpnSswordKnockback] ~ ~-1000 ~
    kill @e[tag=WpnSswordKnockback]