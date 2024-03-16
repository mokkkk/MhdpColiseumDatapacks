#> reus:manager/1_change/6_phase_change/fly_to_land
#
# 火竜 地上行動 飛行→地上

# フェーズ変更
    scoreboard players set #mhdp_reus_phase_count MhdpCore 0

# 抽選
    loot spawn ~ 0 ~ loot reus:flying/fly_to_land

# 3連ブレス
    execute if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmFlyBreathTriple
# 地上強襲
    execute if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmFlyJump
# 縦火炎放射
    execute if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmFlyFlameVertical

# 終了
    kill @e[type=item,nbt={Item:{tag:{ActPaper:1}}}]

say fly to land