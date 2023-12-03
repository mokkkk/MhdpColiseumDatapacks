#> reus:manager/4_general/kill
#
# 火竜 消去処理

# タグ消去
    tag @e[tag=ReusTarget] remove ReusTarget
    tag @e[tag=ReusAttackTarget] remove ReusAttackTarget

# 処理用Marker消去
    # Ignore

# パーティクル
    execute at @s run particle poof ~ ~1 ~ 2 1 2 0 30

# 当たり判定削除
    function reus:manager/2_health/kill_health

# スコアホルダー解放
    function reus:manager/4_general/reset_scoreholder

# ボスバー削除
    bossbar remove asa_animator:reus_health

# パーツ削除(animated java)
    function animated_java:reus/remove/all
