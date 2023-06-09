#> mhdp_core:init/monster
#
# モンスター肉質データ初期化
# 切断, 打撃, 射撃, 火, 水, 雷, 氷, 龍

# storage初期化
    data remove storage mh_dp:monster_data List
    data modify storage mh_dp:monster_data List set value []

# 火竜
    # Head, Body, Leg, Tail
    data modify storage mh_dp:monster_data List append value []
        data modify storage mh_dp:monster_data List[0] append value [65,72,60,0,5,30,15,50]
        data modify storage mh_dp:monster_data List[0] append value [30,45,30,0,5,25,15,30]
        data modify storage mh_dp:monster_data List[0] append value [38,33,20,0,5,30,15,50]
        data modify storage mh_dp:monster_data List[0] append value [45,40,35,0,5,20,15,20]

# 雷狼竜（仮）
    # Head, Body, Arm, Leg, Tail, HeadT, BodyT, ArmT, LegT, TailT
    data modify storage mh_dp:monster_data List append value []
        data modify storage mh_dp:monster_data List[1] append value [65,72,60,0,0,0,0,0]
        data modify storage mh_dp:monster_data List[1] append value [30,45,30,0,0,0,0,0]
        data modify storage mh_dp:monster_data List[1] append value [30,45,30,0,0,0,0,0]
        data modify storage mh_dp:monster_data List[1] append value [38,33,20,0,0,0,0,0]
        data modify storage mh_dp:monster_data List[1] append value [45,40,35,0,0,0,0,0]
        data modify storage mh_dp:monster_data List[1] append value [65,72,60,0,0,0,0,0]
        data modify storage mh_dp:monster_data List[1] append value [30,45,30,0,0,0,0,0]
        data modify storage mh_dp:monster_data List[1] append value [30,45,30,0,0,0,0,0]
        data modify storage mh_dp:monster_data List[1] append value [38,33,20,0,0,0,0,0]
        data modify storage mh_dp:monster_data List[1] append value [45,40,35,0,0,0,0,0]

# 角竜
    # Head, Body, Leg, Tail
    # data modify storage mh_dp:monster_data List append value []
        # data modify storage mh_dp:monster_data List[1] append value [35,5,15,30,5]
        # data modify storage mh_dp:monster_data List[1] append value [45,5,25,25,5]
        # data modify storage mh_dp:monster_data List[1] append value [60,5,25,30,5]
        # data modify storage mh_dp:monster_data List[1] append value [80,5,15,35,5]
