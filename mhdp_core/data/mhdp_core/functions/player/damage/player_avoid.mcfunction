#> mhdp_core:player/damage/player_avoid
#
# プレイヤーフレーム回避成功時

# 演出
    playsound entity.player.attack.sweep master @s ~ ~ ~ 1 2

# 無敵時間設定
    scoreboard players set @s MhdpTDamage 5

# 各処理への分岐
    # 太刀・水月の構え
        execute if entity @s[tag=WpnLsword12SerenePose] if score @s MhdpWeaponTimer matches 1..80 run function mhdp_weapons:weapon/long_sword/12_serene_pose/change_counter

# 回避受付時間リセット
    scoreboard players set @s MhdpTAvoid 0