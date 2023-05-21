#> ranposu:manager/0_init/1_intrusion/summon
#
# 青鳥竜 乱入処理

# パーツ召喚(animated_java)
    execute positioned 0 0 0 run function ranposu:summon

# 召喚時アニメーション再生
    tag @e[type=armor_stand,tag=RanposuRoot] add AnmSummon

# 当たり判定召喚
    execute positioned 0 0 0 run function ranposu:manager/0_init/3_general/health

# HPセット
    function ranposu:manager/0_init/3_general/hp
