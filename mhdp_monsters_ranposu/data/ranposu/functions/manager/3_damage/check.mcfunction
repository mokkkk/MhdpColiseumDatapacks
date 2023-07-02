#> ranposu:manager/3_damage/check
#
# 青鳥竜 ダメージ量確認

# 受けたダメージ計算
data modify storage mhdp: Temp.Health set from entity @s Health
execute store result score #mhdp_ranposu_damage AsaMatrix run data get storage mhdp: Temp.Health 100
data remove storage mhdp: Temp.Health
scoreboard players remove #mhdp_ranposu_damage AsaMatrix 100000

# ダメージ0.5以下なら無効
execute if entity @s[tag=!Death] unless score #mhdp_ranposu_damage AsaMatrix matches -251.. at @s run function ranposu:manager/3_damage/damage

# 体力回復
data modify entity @s Health set value 1000.0f
# 複数判定への攻撃を無効
execute unless score #mhdp_ranposu_damage AsaMatrix matches -251.. run execute as @e[type=slime,tag=RanposuParts] run data modify entity @s Health set value 1000.0f
