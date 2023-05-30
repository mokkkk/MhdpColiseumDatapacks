#> ranposu:manager/4_general/kill
#
# 青鳥竜 消去処理

# タグ消去
tag @e[tag=RanposuTarget] remove RanposuTarget
tag @e[tag=RanposuAttackTarget] remove RanposuAttackTarget

# marker消去
# kill @e[type=marker,tag=RanposuBreathTarget]
# kill @e[type=marker,tag=RanposuChargeFPos]
# kill @e[type=marker,tag=RanposuChargeTarget]
# kill @e[type=marker,tag=RanposuChargeAttack]

# パーティクル
# execute at @e[type=armor_stand,tag=RanposuParts] run particle poof ~ ~1 ~ 1 1 1 0 30

# 当たり判定削除
function ranposu:manager/4_general/kill_health

# ボスバー削除
bossbar remove asa_animator:ranposu_health

# パーツ削除(animated java)
function ranposu:remove/all
