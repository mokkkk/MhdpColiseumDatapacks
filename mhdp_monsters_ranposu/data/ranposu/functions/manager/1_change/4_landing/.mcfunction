#> ranposu:manager/1_change/4_landing/
#
# 青鳥竜 地上行動

# 近
    execute if predicate ranposu:animation/is_stay_animation_tags if entity @e[tag=RanposuAttackTarget,distance=..8] run function ranposu:manager/1_change/4_landing/near

# 中
    execute if predicate ranposu:animation/is_stay_animation_tags if entity @e[tag=RanposuAttackTarget,distance=..18] run function ranposu:manager/1_change/4_landing/middle

# 遠
    execute if predicate ranposu:animation/is_stay_animation_tags run function ranposu:manager/1_change/4_landing/far
