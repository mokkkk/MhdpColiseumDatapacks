#> reus:manager/1_change/target
#
# 火竜 ターゲットリセット処理

# ターゲットリセット
# 傾向：ターゲット変更頻度低
    scoreboard players add #mhdp_reus_targetcount AsaMatrix 1
    execute if score #mhdp_reus_targetcount AsaMatrix matches 5.. run tag @s add ChangeTarget
    execute if score #mhdp_reus_targetcount AsaMatrix matches 5.. run scoreboard players set #mhdp_reus_targetcount AsaMatrix 0
    tag @e[tag=ReusTarget] remove ReusTarget
    execute if entity @s[tag=ChangeTarget] run tag @e[tag=ReusAttackTarget] remove ReusAttackTarget

# ターゲット探索
    tag @a[tag=MnsTarget] add ReusTarget
# ターゲット決定
    execute unless entity @e[tag=ReusAttackTarget] if predicate asa_animator:random/010 if entity @e[type=!player,tag=ReusTarget] run tag @e[tag=ReusTarget,tag=!NotTarget,sort=random,limit=1] add ReusAttackTarget
    execute unless entity @e[tag=ReusAttackTarget] run tag @a[tag=ReusTarget,tag=!NotTarget,sort=random,limit=1] add ReusAttackTarget
    execute unless entity @e[tag=ReusAttackTarget] run tag @e[tag=ReusTarget,sort=random,limit=1] add ReusAttackTarget

# 終了
    tag @s remove ChangeTarget
