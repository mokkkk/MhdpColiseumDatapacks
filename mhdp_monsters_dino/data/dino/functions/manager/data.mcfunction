#> dino:manager/data
#
# 斬竜 データ定義

# 初期化
    data modify storage mh_dp:monsters Data.Dino set value {Core:{},App:{}}

## 共通
    # ID
        data modify storage mh_dp:monsters Data.Dino.Core.Id set value 2
    # HP
        data modify storage mh_dp:monsters Data.Dino.Core.Hp set value 800000
    # 表示名
        data modify storage mh_dp:monsters Data.Dino.Core.DisplayName set value "斬竜"
    # タグ名prefix
        data modify storage mh_dp:monsters Data.Dino.Core.TagPrefix set value "Dino"
    # スコア名prefix
        data modify storage mh_dp:monsters Data.Dino.Core.ScorePrefix set value "dino"
    # 怒り値(HP%)
        data modify storage mh_dp:monsters Data.Dino.Core.AngerValue set value 10
    # 怒り継続時間(tick)
        data modify storage mh_dp:monsters Data.Dino.Core.AngerTime set value 1200
    # 怒り時行動速度
        data modify storage mh_dp:monsters Data.Dino.Core.AngerSpeed set value 10
    # スタン耐性値(HP%)
        data modify storage mh_dp:monsters Data.Dino.Core.StunValue set value 9
    # スタン耐性上昇値(%)
        data modify storage mh_dp:monsters Data.Dino.Core.StunResistance set value 130
    # 乗り怯み耐性値(HP%)
        data modify storage mh_dp:monsters Data.Dino.Core.RideValue set value 12
    # 乗り怯み耐性上昇値(%)
        data modify storage mh_dp:monsters Data.Dino.Core.RideResistance set value 150
    # 被ダメージ時呼出function
        data modify storage mh_dp:monsters Data.Dino.Core.HurtFunction set value ""
    # 痺れ罠耐性
        data modify storage mh_dp:monsters Data.Dino.Core.IsEnableShockTrap set value true
    # 被痺れ罠時呼出function
        data modify storage mh_dp:monsters Data.Dino.Core.ShockTrapFunction set value ""
    # 落とし穴耐性
        data modify storage mh_dp:monsters Data.Dino.Core.IsEnablePitfallTrap set value true
    # 被落とし穴時呼出function
        data modify storage mh_dp:monsters Data.Dino.Core.PitfallTrapFunction set value ""
    # 閃光玉耐性
        data modify storage mh_dp:monsters Data.Dino.Core.IsEnableFlashbomb set value true
    # 閃光玉無効化時間
        data modify storage mh_dp:monsters Data.Dino.Core.FlashbombResistance set value 6000
    # 被閃光玉時呼出function
        data modify storage mh_dp:monsters Data.Dino.Core.FlashbombFunction set value ""
    # 音爆弾耐性
        data modify storage mh_dp:monsters Data.Dino.Core.IsEnableSoundbomb set value false
    # 被音爆弾時呼出function
        data modify storage mh_dp:monsters Data.Dino.Core.SoundbombFunction set value ""
    # 麻痺耐性
        data modify storage mh_dp:monsters Data.Dino.Core.IsEnableParalyze set value true
    # 麻痺耐性値
        data modify storage mh_dp:monsters Data.Dino.Core.ParalyzeValue set value 6
    # 麻痺耐性上昇値
        data modify storage mh_dp:monsters Data.Dino.Core.ParalyzeResistance set value 180
    # 被麻痺時呼出function
        data modify storage mh_dp:monsters Data.Dino.Core.PraralyzeFunction set value ""
