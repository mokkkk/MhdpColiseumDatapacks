#> mhdp_core:player/sneak/avoid/main
#
# ステップ回避実行処理

# スコア減算
    scoreboard players add @s MhdpFuncSneakAvoid 1

# 演出
    execute if entity @s[scores={MhdpFuncSneakAvoid=1..3}] run playsound block.grass.step master @a ~ ~ ~ 1 1
    execute if entity @s[scores={MhdpFuncSneakAvoid=1..5}] run particle block grass_block ~ ~0.1 ~ 0.5 0 0.5 0 3

# 終了
    execute if entity @s[scores={MhdpFuncSneakAvoid=6..}] run tag @s remove PlySneakAvoidFunc
