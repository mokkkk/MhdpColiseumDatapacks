#> mhdp_core:init/monster_attack
#
# モンスター攻撃データ初期化

# storage初期化
    data remove storage mh_dp:monster_data AttackList
    data modify storage mh_dp:monster_data AttackList set value []

# 0：青鳥竜
    data modify storage mh_dp:monster_data AttackList append value []
        # 0_噛みつき：4ダメージ，ノックバック小，ガード可能，無属性，怒り補正1.2倍
        data modify storage mh_dp:monster_data AttackList[0] append value {Damage:4.0f,Knockback:1,Guard:2,Type:0,Blight:0b,Anger:4.8f}
        # 1_ひっかき：2ダメージ，ノックバック小，ガード可能，無属性，怒り補正1.2倍
        data modify storage mh_dp:monster_data AttackList[0] append value {Damage:2.0f,Knockback:1,Guard:2,Type:0,Blight:0b,Anger:2.2f}
        # 2_尻尾なぎはらい：6ダメージ，ノックバック中，ガード可能，無属性，怒り補正1.2倍
        data modify storage mh_dp:monster_data AttackList[0] append value {Damage:6.0f,Knockback:2,Guard:2,Type:0,Blight:0b,Anger:7.2f}
        # 3_前進ひっかき：7ダメージ，ノックバック中，ガード可能，無属性，怒り補正1.2倍
        data modify storage mh_dp:monster_data AttackList[0] append value {Damage:7.0f,Knockback:2,Guard:2,Type:0,Blight:0b,Anger:8.4f}
        # 4_とびかかり：10ダメージ，ノックバック中，大剣ガード可能，無属性，怒り補正1.2倍
        data modify storage mh_dp:monster_data AttackList[0] append value {Damage:10.0f,Knockback:2,Guard:3,Type:0,Blight:0b,Anger:12.0f}


say モンスター攻撃力データstorageを初期化しました