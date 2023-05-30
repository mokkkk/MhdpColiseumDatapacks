#> asa_animator:general/damage
#
# モンスターの共通処理
# ダメージを受けたとき，slimeのTagから各モンスターのダメージ処理へと分岐

# 青鳥竜
    execute if entity @s[tag=RanposuHealth] run function ranposu:manager/3_damage/check

# 火竜
    # execute if entity @s[tag=ReusHealth] run function asa_animator:reus/manager/3_damage/check
