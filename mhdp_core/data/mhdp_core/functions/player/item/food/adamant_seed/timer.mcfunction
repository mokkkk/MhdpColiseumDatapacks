#> mhdp_core:player/item/food/adamant_seed/timer
#
# ５２：忍耐の種 タイマー処理

# タイマー減算
    scoreboard players remove @s MhdpItmTAdamantSeed 1

# タグ消去
    execute if entity @s[scores={MhdpItmTAdamantSeed=..0}] run tellraw @s {"text": "【忍耐の種の効果が切れた】"}
    execute if entity @s[scores={MhdpItmTAdamantSeed=..0}] run tag @s remove ItmAdamantSeed
