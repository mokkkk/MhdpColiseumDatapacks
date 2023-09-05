#> mhdp_weapons:weapon/long_sword/12_serene_pose/change_counter
#
# 太刀：水月の構え 反撃開始

# モデル変更
    function mhdp_weapons:weapon/long_sword/99_reset/model

# ステップ回避ロック解除
    tag @s remove PlySneakAvoidLock
    effect clear @s slowness

# 無敵時間延長
    scoreboard players set @s MhdpTDamage 15

# タグ更新
    tag @s remove WpnLsword12SerenePose
    function mhdp_weapons:weapon/long_sword/12_serene_pose/remove_tag

# 移行
    function mhdp_weapons:weapon/long_sword/13_serene_counter/start
