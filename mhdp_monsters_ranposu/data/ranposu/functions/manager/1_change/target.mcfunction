#> ranposu:manager/1_change/target
#
# 青鳥竜 ターゲットリセット処理

# ターゲットリセット
    scoreboard players add #mhdp_ranposu_targetcount AsaMatrix 1
    execute if score #mhdp_ranposu_targetcount AsaMatrix matches 3.. run tag @s add ChangeTarget
    execute if score #mhdp_ranposu_targetcount AsaMatrix matches 3.. run scoreboard players set #mhdp_ranposu_targetcount AsaMatrix 0
    tag @e[tag=RanposuTarget] remove RanposuTarget
    execute if entity @s[tag=ChangeTarget] run tag @e[tag=RanposuAttackTarget] remove RanposuAttackTarget

# ターゲット探索
    tag @a[tag=MnsTarget] add RanposuTarget
# ターゲット決定
    execute unless entity @e[tag=RanposuAttackTarget] if predicate asa_animator:random/010 if entity @e[type=!player,tag=RanposuTarget] run tag @e[tag=RanposuTarget,tag=!NotTarget,sort=random,limit=1] add RanposuAttackTarget
    execute unless entity @e[tag=RanposuAttackTarget] run tag @a[tag=RanposuTarget,tag=!NotTarget,sort=random,limit=1] add RanposuAttackTarget
    execute unless entity @e[tag=RanposuAttackTarget] run tag @e[tag=RanposuTarget,sort=random,limit=1] add RanposuAttackTarget

# 終了
    tag @s remove ChangeTarget
