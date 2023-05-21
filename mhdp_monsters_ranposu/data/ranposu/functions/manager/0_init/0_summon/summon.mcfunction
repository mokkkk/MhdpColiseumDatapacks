#> ranposu:manager/0_init/0_summon/summon
#
# 青鳥竜 召喚処理

# パーツ召喚(animated_java)
    execute positioned ~ ~ ~ run function ranposu:summon

# 当たり判定召喚
    execute positioned ~ ~-50 ~ run function ranposu:manager/0_init/3_general/health

# HPセット
    function ranposu:manager/0_init/3_general/hp
