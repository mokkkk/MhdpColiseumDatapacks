#> mhdp_core:init/monster_attack
#
# モンスター攻撃データ初期化

# storage初期化
    data remove storage mh_dp:monster_data AttackList
    data modify storage mh_dp:monster_data AttackList set value []

# 0：青鳥竜
    data modify storage mh_dp:monster_data AttackList append value []
        # 噛みつき：4ダメージ，ノックバック小，ガード可能，無属性，怒り補正1.2倍
        data modify storage mh_dp:monster_data AttackList[0] append value {Damage:4.0f,Knockback:1,Guard:2,Type:0,Blight:0b,Anger:4.8f}


say モンスター攻撃力データstorageを初期化しました