#> mhdp_weapons:weapon/long_sword/13_serene_counter/start
#
# 太刀：水月の構え_反撃 開始

# アニメーションタイマーリセット
    scoreboard players set @s MhdpWeaponTimer 0

# タグ更新
    tag @s add WpnLsword13SereneCounter
# ステップ回避ロック開始
    tag @s add PlySneakAvoidLock

# 移動処理開始
    # 処理用Marker召喚
        execute if entity @s[tag=!PlyJumpping] run summon marker ~ ~ ~ {Tags:["SneakAvoidStand0","Start"]}
    # 処理用MarkerにUidコピー
        scoreboard players operation @e[type=marker,tag=SneakAvoidStand0,tag=Start] MhdpPlayerUid = @s MhdpPlayerUid
        execute rotated ~ 0 as @e[type=marker,tag=SneakAvoidStand0,tag=Start] run tp @s ~ ~ ~ ~ ~

# 演出
    particle flash ~ ~1 ~ 1 1 1 0 20
    scoreboard players set @s MhdpWeaponSpiritGaugeTimerLsword 200
    scoreboard players remove @s MhdpWeaponSpiritGaugeLsword 360
    execute if score @s MhdpWeaponSpiritGaugeLsword matches ..-1 run scoreboard players set @s MhdpWeaponSpiritGaugeLsword 0

# 移動速度リセット
    effect clear @s speed

# 終了
    tag @e[type=marker,tag=SneakAvoidStand0,tag=Start] remove Start
    scoreboard players reset #mhdp_temp_success MhdpCore
    data remove storage mhdp_core:temp Temp

say 水月の構え_反撃