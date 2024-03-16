#> mhdp_monsters_core:load
#
# モンスター共通処理 スコア定義

    # モンスター処理用
        scoreboard objectives add AsaMatrix dummy
        scoreboard objectives add MhdpMonsterIndex dummy
        scoreboard objectives add MhdpPartsIndex dummy
        scoreboard objectives add MhdpPartsUid dummy
    
# HP
    scoreboard objectives add MhdpMonsterStatus.Health dummy
# HP半分値(処理用)
    scoreboard objectives add MhdpMonsterStatus.Health.Half dummy
# 怒り
    # 怒り値・現在値
        scoreboard objectives add MhdpMonsterStatus.Anger dummy
    # 怒り値・最大値
        scoreboard objectives add MhdpMonsterStatus.Anger.Max dummy
    # 怒り継続時間
        scoreboard objectives add MhdpMonsterStatus.Anger.Time dummy
    # 怒り時行動速度
        scoreboard objectives add MhdpMonsterStatus.Anger.Speed dummy
# スタン
    # スタン値・現在値
        scoreboard objectives add MhdpMonsterStatus.Stun dummy
    # スタン値・最大値
        scoreboard objectives add MhdpMonsterStatus.Stun.Max dummy
    # スタン耐性上昇値
        scoreboard objectives add MhdpMonsterStatus.Stun.Resistance dummy
# 乗り
    # 乗り値・現在値
        scoreboard objectives add MhdpMonsterStatus.Ride dummy
    # 乗り値・最大値
        scoreboard objectives add MhdpMonsterStatus.Ride.Max dummy
    # 乗り耐性上昇値
        scoreboard objectives add MhdpMonsterStatus.Ride.Resistance dummy
# 閃光玉
    # 耐性時間
        scoreboard objectives add MhdpMonsterStatus.Flashbomb.Resistance dummy

# 定数
    # scoreboard players set 