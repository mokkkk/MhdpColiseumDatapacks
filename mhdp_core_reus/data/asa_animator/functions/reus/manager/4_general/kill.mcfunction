#> asa_animator:reus/manager/4_general/kill
#
# 火竜 消去処理

# タグ消去
tag @e[tag=ReusTarget] remove ReusTarget
tag @e[tag=ReusAttackTarget] remove ReusAttackTarget

# marker消去
kill @e[type=marker,tag=ReusBreathTarget]
kill @e[type=marker,tag=ReusChargeFPos]
kill @e[type=marker,tag=ReusChargeTarget]
kill @e[type=marker,tag=ReusChargeAttack]

# パーティクル
execute at @e[type=armor_stand,tag=ReusParts] run particle poof ~ ~1 ~ 1 1 1 0 30

# 当たり判定削除
function asa_animator:reus/manager/4_general/kill_health

# ボスバー削除
bossbar remove asa_animator:reus_health

# パーツ削除
function asa_animator:reus/kill
