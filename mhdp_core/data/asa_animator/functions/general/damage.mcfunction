#> asa_animator:general/damage
#
# モンスターの共通処理
# ダメージを受けたとき，PartsのTagから各モンスターのダメージ処理へと分岐

# 青鳥竜
    # execute if entity @s[tag=RanposuParts] run function asa_animator:ranposu/manager/3_damage/check

# 火竜
    # execute if entity @s[tag=ReusParts] run function asa_animator:reus/manager/3_damage/check
