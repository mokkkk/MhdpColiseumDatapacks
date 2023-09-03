#> mhdp_core:init/player_attack
#
# プレイヤー攻撃データ初期化

# storage初期化
    data remove storage mh_dp:player_data AttackList
    data modify storage mh_dp:player_data AttackList set value []

# 0：大剣
    data modify storage mh_dp:player_data AttackList append value []
        # 0_溜め斬り0
        data modify storage mh_dp:player_data AttackList[0] append value {Damage:100,ElementDamage:100,Type:1,Offhand:0b}
        # 1_溜め斬り1
        data modify storage mh_dp:player_data AttackList[0] append value {Damage:200,ElementDamage:100,Type:1,Offhand:0b}
        # 2_溜め斬り2
        data modify storage mh_dp:player_data AttackList[0] append value {Damage:260,ElementDamage:100,Type:1,Offhand:0b}
        # 3_溜め斬り3
        data modify storage mh_dp:player_data AttackList[0] append value {Damage:450,ElementDamage:100,Type:1,Offhand:0b}
        # 4_空中溜め斬り2
        data modify storage mh_dp:player_data AttackList[0] append value {Damage:180,ElementDamage:100,Type:1,Offhand:0b}
        # 5_空中溜め斬り3
        data modify storage mh_dp:player_data AttackList[0] append value {Damage:280,ElementDamage:100,Type:1,Offhand:0b}
        # 6_タックル
        data modify storage mh_dp:player_data AttackList[0] append value {Damage:80,ElementDamage:0,Type:2,Offhand:1b}
        # 7_斬り上げ
        data modify storage mh_dp:player_data AttackList[0] append value {Damage:80,ElementDamage:100,Type:1,Offhand:0b}
        # 8_薙ぎ払い
        data modify storage mh_dp:player_data AttackList[0] append value {Damage:100,ElementDamage:100,Type:1,Offhand:0b}
        # 9_ハンティングエッジ
        data modify storage mh_dp:player_data AttackList[0] append value {Damage:120,ElementDamage:100,Type:1,Offhand:0b}
        # 10_直接攻撃
        data modify storage mh_dp:player_data AttackList[0] append value {Damage:75,ElementDamage:50,Type:1,Offhand:0b}

# 1：片手剣
    data modify storage mh_dp:player_data AttackList append value []
        # 0_突進斬り
        data modify storage mh_dp:player_data AttackList[1] append value {Damage:80,ElementDamage:150,Type:1,Offhand:0b}
        # 1_シールドバッシュ
        data modify storage mh_dp:player_data AttackList[1] append value {Damage:140,ElementDamage:0,Type:2,Offhand:1b}
        # 2_バックナックル
        data modify storage mh_dp:player_data AttackList[1] append value {Damage:180,ElementDamage:0,Type:2,Offhand:1b}
        # 3_回転斬り
        data modify storage mh_dp:player_data AttackList[1] append value {Damage:100,ElementDamage:140,Type:1,Offhand:0b}
        # 4_溜め斬り
        data modify storage mh_dp:player_data AttackList[1] append value {Damage:160,ElementDamage:180,Type:1,Offhand:0b}
        # 5_駆け上がり斬り
        data modify storage mh_dp:player_data AttackList[1] append value {Damage:50,ElementDamage:100,Type:1,Offhand:0b}
        # 6_フォールバッシュ
        data modify storage mh_dp:player_data AttackList[1] append value {Damage:200,ElementDamage:0,Type:2,Offhand:1b}
        # 7_ジャストラッシュ1段目
        data modify storage mh_dp:player_data AttackList[1] append value {Damage:80,ElementDamage:80,Type:1,Offhand:0b}
        # 8_ジャストラッシュ2段目_盾攻撃
        data modify storage mh_dp:player_data AttackList[1] append value {Damage:80,DamageJust:180,ElementDamage:0,ElementDamageJust:0,Type:2,Offhand:1b}
        # 9_ジャストラッシュ2段目_剣攻撃
        data modify storage mh_dp:player_data AttackList[1] append value {Damage:60,DamageJust:100,ElementDamage:60,ElementDamageJust:100,Type:1,Offhand:0b}
        # 10_ジャストラッシュ3段目
        data modify storage mh_dp:player_data AttackList[1] append value {Damage:140,DamageJust:280,ElementDamage:0,ElementDamageJust:0,Type:2,Offhand:1b}
        # 11_ジャストラッシュ4段目_剣攻撃1
        data modify storage mh_dp:player_data AttackList[1] append value {Damage:100,DamageJust:180,ElementDamage:100,ElementDamageJust:200,Type:1,Offhand:0b}
        # 12_ジャストラッシュ4段目_剣攻撃2
        data modify storage mh_dp:player_data AttackList[1] append value {Damage:70,DamageJust:110,ElementDamage:80,ElementDamageJust:120,Type:1,Offhand:0b}
        # 13_飛影
        data modify storage mh_dp:player_data AttackList[1] append value {Damage:80,ElementDamage:120,Type:1,Offhand:0b}
        # 14_滅・昇竜撃
        data modify storage mh_dp:player_data AttackList[1] append value {Damage:200,DamageCounter:400,ElementDamage:0,Type:2,Offhand:1b}
        # 15_直接攻撃
        data modify storage mh_dp:player_data AttackList[1] append value {Damage:40,ElementDamage:50,Type:1,Offhand:0b}

# 2：太刀
    data modify storage mh_dp:player_data AttackList append value []
        # 0_斬りおろし
        data modify storage mh_dp:player_data AttackList[2] append value {Damage:80,ElementDamage:100,Type:1,Offhand:0b}
        # 1_気刃斬り1_失敗
        data modify storage mh_dp:player_data AttackList[2] append value {Damage:60,ElementDamage:70,Type:1,Offhand:0b}
        # 2_気刃斬り1
        data modify storage mh_dp:player_data AttackList[2] append value {Damage:100,ElementDamage:100,Type:1,Offhand:0b}
        # 3_斬り下がり
        data modify storage mh_dp:player_data AttackList[2] append value {Damage:60,ElementDamage:100,Type:1,Offhand:0b}
        # 4_気刃斬り2
        data modify storage mh_dp:player_data AttackList[2] append value {Damage:120,ElementDamage:100,Type:1,Offhand:0b}
        # 5_気刃斬り3_1,2段目
        data modify storage mh_dp:player_data AttackList[2] append value {Damage:60,ElementDamage:100,Type:1,Offhand:0b}
        # 6_気刃斬り3_3段目
        data modify storage mh_dp:player_data AttackList[2] append value {Damage:130,ElementDamage:100,Type:1,Offhand:0b}
        # 7_気刃兜割_白
        data modify storage mh_dp:player_data AttackList[2] append value {Damage:40,ElementDamage:100,Type:1,Offhand:1b}
        # 8_気刃兜割_黄
        data modify storage mh_dp:player_data AttackList[2] append value {Damage:52,ElementDamage:100,Type:1,Offhand:1b}
        # 9_気刃兜割_赤
        data modify storage mh_dp:player_data AttackList[2] append value {Damage:70,ElementDamage:100,Type:1,Offhand:1b}
        # 10_水月の構え
        data modify storage mh_dp:player_data AttackList[2] append value {Damage:240,ElementDamage:100,Type:1,Offhand:1b}
        # 11_直接攻撃
        data modify storage mh_dp:player_data AttackList[2] append value {Damage:40,DamageTec:20,ElementDamage:30,Type:1,Offhand:1b}
        # 12_気刃斬り大回転斬り
        data modify storage mh_dp:player_data AttackList[2] append value {Damage:160,ElementDamage:100,Type:1,Offhand:0b}
        # 13_踏み込み斬り
        data modify storage mh_dp:player_data AttackList[2] append value {Damage:80,ElementDamage:100,Type:1,Offhand:0b}
        # 14_気刃踏み込み斬り
        data modify storage mh_dp:player_data AttackList[2] append value {Damage:100,ElementDamage:100,Type:1,Offhand:0b}
        # 15_居合抜刀斬り
        data modify storage mh_dp:player_data AttackList[2] append value {Damage:40,ElementDamage:50,Type:1,Offhand:0b}

# 3：弓
    data modify storage mh_dp:player_data AttackList append value []
        # 0_溜め0
        data modify storage mh_dp:player_data AttackList[3] append value {Damage:30,ElementDamage:50,Type:3,Offhand:0b}
        # 1_溜め1
        data modify storage mh_dp:player_data AttackList[3] append value {Damage:70,ElementDamage:70,Type:3,Offhand:0b}
        # 2_溜め2
        data modify storage mh_dp:player_data AttackList[3] append value {Damage:110,ElementDamage:100,Type:3,Offhand:0b}
        # 3_溜め3
        data modify storage mh_dp:player_data AttackList[3] append value {Damage:160,ElementDamage:120,Type:3,Offhand:0b}
        # 4_溜め4
        data modify storage mh_dp:player_data AttackList[3] append value {Damage:180,ElementDamage:140,Type:3,Offhand:0b}
        # 5_竜の一矢
        data modify storage mh_dp:player_data AttackList[3] append value {Damage:40,ElementDamage:140,Type:1,Offhand:0b}

say プレイヤー攻撃力データstorageを初期化しました