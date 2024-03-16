#> mhdp_monsters_core:1.init/2.init_hp
#
# モンスターの初期化処理 共通データ HP関連

# HP設定
    $scoreboard players set #mhdp_temp_hp MhdpCore $(Id)
    # クエストごとのHP倍率適用
        scoreboard players operation #mhdp_temp_hp MhdpCore *= #mhdp_hp_multiply MhdpCore
        scoreboard players operation #mhdp_temp_hp MhdpCore /= #asam_const_100 MhdpCore
    # マルチ補正計算
        execute store result score #mhdp_playercount_temp MhdpCore run execute if entity @a[tag=PlyQuest]
        scoreboard players set #mhdp_const_temp_0 MhdpCore 60
        scoreboard players set #mhdp_const_temp_1 MhdpCore 40
        scoreboard players operation #mhdp_const_temp_1 MhdpCore *= #mhdp_playercount_temp MhdpCore
        scoreboard players operation #mhdp_const_temp_0 MhdpCore += #mhdp_const_temp_1 MhdpCore
        scoreboard players operation #mhdp_temp_hp MhdpCore *= #mhdp_const_temp_0 MhdpCore
        execute store result score #mhdp_temp_health_half MhdpCore run scoreboard players operation #mhdp_temp_hp MhdpCore /= $100 Const
    # 体力半分取得
        scoreboard players set #mhdp_const_temp_0 MhdpCore 2
        scoreboard players operation #mhdp_temp_health_half MhdpCore /= #mhdp_const_temp_0 MhdpCore
    # 代入
        scoreboard players operation @s MhdpMonsterStatus.Health = #mhdp_temp_hp MhdpCore
        scoreboard players operation @s MhdpMonsterStatus.Health.Half = #mhdp_temp_health_half MhdpCore

# 怒り値設定
    $scoreboard players set #mhdp_const_temp_0 MhdpCore $(AngerValue)
    scoreboard players operation #mhdp_const_temp_1 MhdpCore = @s MhdpMonsterStatus.Health
    scoreboard players operation #mhdp_const_temp_1 MhdpCore *= #mhdp_const_temp_0 MhdpCore
    execute store result score @s MhdpMonsterStatus.Anger store result score @s MhdpMonsterStatus.Anger.Max run scoreboard players operation #mhdp_const_temp_1 MhdpCore /= $100 Const
    $scoreboard players set @s MhdpMonsterStatus.Anger.Time $(AngerTime)
    $scoreboard players set @s MhdpMonsterStatus.Anger.Speed $(AngerSpeed)

# スタン値設定
    $scoreboard players set #mhdp_const_temp_0 MhdpCore $(StunValue)
    scoreboard players operation #mhdp_const_temp_1 MhdpCore = @s MhdpMonsterStatus.Health
    scoreboard players operation #mhdp_const_temp_1 MhdpCore *= #mhdp_const_temp_0 MhdpCore
    execute store result score @s MhdpMonsterStatus.Stun store result score @s MhdpMonsterStatus.Stun.Max run scoreboard players operation #mhdp_const_temp_1 MhdpCore /= $100 Const
    $scoreboard players @s MhdpMonsterStatus.Stun.Resistance MhdpCore $(StunResistance)

# 乗り値設定
    $scoreboard players set #mhdp_const_temp_0 MhdpCore $(RideValue)
    scoreboard players operation #mhdp_const_temp_1 MhdpCore = @s MhdpMonsterStatus.Health
    scoreboard players operation #mhdp_const_temp_1 MhdpCore *= #mhdp_const_temp_0 MhdpCore
    execute store result score @s MhdpMonsterStatus.Ride store result score @s MhdpMonsterStatus.Ride.Max run scoreboard players operation #mhdp_const_temp_1 MhdpCore /= $100 Const
    $scoreboard players @s MhdpMonsterStatus.Ride.Resistance MhdpCore $(RideResistance)

# ボスバー設定
    $bossbar add mh_dp:$(ScorePrefix)_health [{"text": $(DisplayName)},{"text":"\uE000","font":"mhdp"}]
    $bossbar set mh_dp:$(ScorePrefix)_health players @a
    $bossbar set mh_dp:$(ScorePrefix)_health visible true
    $execute store result bossbar mh_dp:$(ScorePrefix)_health max run scoreboard players get @s MhdpMonsterStatus.Health
    $execute store result bossbar mh_dp:$(ScorePrefix)_health value run scoreboard players get @s MhdpMonsterStatus.Health

# 終了
    scoreboard players reset #mhdp_temp_hp
    scoreboard players reset #mhdp_const_temp_0
    scoreboard players reset #mhdp_const_temp_1
    scoreboard players reset mhdp_temp_health_half
    scoreboard players reset #mhdp_playercount_temp
