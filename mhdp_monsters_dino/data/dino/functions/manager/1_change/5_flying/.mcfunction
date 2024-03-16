#> reus:manager/1_change/5_flying/
#
# 火竜 空中行動

# 近
    execute if predicate reus:animation/is_stay_animation_tags if entity @e[tag=ReusAttackTarget,distance=..6] run function reus:manager/1_change/5_flying/near

# 中
    execute if predicate reus:animation/is_stay_animation_tags if entity @e[tag=ReusAttackTarget,distance=..20] run function reus:manager/1_change/5_flying/middle

# 遠
    execute if predicate reus:animation/is_stay_animation_tags run function reus:manager/1_change/5_flying/far
