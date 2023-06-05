#> mhdp_weapons:weapon/short_sword/14_just_3/move
#
# 片手剣：ジャストラッシュ 移動

# 効果音
    playsound block.grass.step master @a ~ ~ ~ 1 1

# 移動
    scoreboard players set $strength delta.api.launch 8000
    execute rotated ~180 -40 run function delta:api/launch_looking
