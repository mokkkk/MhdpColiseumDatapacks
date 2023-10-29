#> ranposu:manager/1_change/4_landing/
#
# 青鳥竜 地上行動

# 一定回数以上行動した場合，待機アニメーションを再生
    execute if entity @s[tag=!StateIsAnger] run scoreboard players add #mhdp_ranposu_act_count MhdpCore 1
    execute if score #mhdp_ranposu_act_count MhdpCore matches 6.. run tag @s add AnmIdle
    execute if score #mhdp_ranposu_act_count MhdpCore matches 6.. run scoreboard players set #mhdp_ranposu_act_count MhdpCore 0

# 近
    execute if predicate ranposu:animation/is_stay_animation_tags if entity @e[tag=RanposuAttackTarget,distance=..8] run function ranposu:manager/1_change/4_landing/near

# 中
    execute if predicate ranposu:animation/is_stay_animation_tags if entity @e[tag=RanposuAttackTarget,distance=..18] run function ranposu:manager/1_change/4_landing/middle

# 遠
    execute if predicate ranposu:animation/is_stay_animation_tags run function ranposu:manager/1_change/4_landing/far
