#> ranposu:manager/4_general/kill
#
# 青鳥竜 消去処理

# タグ消去
    tag @e[tag=RanposuTarget] remove RanposuTarget
    tag @e[tag=RanposuAttackTarget] remove RanposuAttackTarget

# 処理用Marker消去
    # Ignore

# パーティクル
    execute at @s run particle poof ~ ~1 ~ 2 1 2 0 30

# 当たり判定削除
    function ranposu:manager/2_health/kill_health

# スコアホルダー解放
    function ranposu:manager/4_general/reset_scoreholder

# ボスバー削除
    bossbar remove asa_animator:ranposu_health

# パーツ削除(animated java)
    function ranposu:remove/all
