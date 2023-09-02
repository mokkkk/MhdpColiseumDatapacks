#> mhdp_core:init/player_attack
#
# プレイヤー攻撃データ初期化

# storage初期化
    data remove storage mh_dp:player_data AttackList
    data modify storage mh_dp:player_data AttackList set value []

# 0：大剣
    data modify storage mh_dp:player_data AttackList append value []
        # 0_
        data modify storage mh_dp:player_data AttackList[0] append value {Damage:100,ElementDamage:100,Type:1,Offhand:0b}

# 1：片手剣
    data modify storage mh_dp:player_data AttackList append value []
        # 0_
        data modify storage mh_dp:player_data AttackList[1] append value {Damage:100,ElementDamage:100,Type:1,Offhand:0b}

# 2：太刀
    data modify storage mh_dp:player_data AttackList append value []
        # 0_踏み込み斬り
        data modify storage mh_dp:player_data AttackList[2] append value {Damage:120,ElementDamage:100,Type:1,Offhand:0b}
        # 1_気刃斬り1_失敗
        data modify storage mh_dp:player_data AttackList[2] append value {Damage:100,ElementDamage:70,Type:1,Offhand:0b}
        # 2_気刃斬り1
        data modify storage mh_dp:player_data AttackList[2] append value {Damage:150,ElementDamage:100,Type:1,Offhand:0b}
        # 3_斬り下がり
        data modify storage mh_dp:player_data AttackList[2] append value {Damage:120,ElementDamage:100,Type:1,Offhand:0b}
        # 4_気刃斬り2
        data modify storage mh_dp:player_data AttackList[2] append value {Damage:160,ElementDamage:100,Type:1,Offhand:0b}
        # 5_気刃斬り3_1,2段目
        data modify storage mh_dp:player_data AttackList[2] append value {Damage:70,ElementDamage:100,Type:1,Offhand:0b}
        # 5_気刃斬り3_3段目
        data modify storage mh_dp:player_data AttackList[2] append value {Damage:180,ElementDamage:100,Type:1,Offhand:0b}

# 3：弓
    data modify storage mh_dp:player_data AttackList append value []
        # 0_
        data modify storage mh_dp:player_data AttackList[3] append value {Damage:100,ElementDamage:100,Type:1,Offhand:0b}

say プレイヤー攻撃力データstorageを初期化しました