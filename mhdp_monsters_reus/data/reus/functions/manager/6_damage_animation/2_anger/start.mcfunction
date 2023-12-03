#> reus:manager/6_damage_animation/2_anger/start
#
# 火竜 怒り開始処理

# 怒り行動回数初期化
    scoreboard players set #mhdp_reus_anger_count AsaMatrix 0

# タグ付与
    tag @s add StateIsAnger

# ボスバー設定
    bossbar set asa_animator:reus_health name [{"text": "火竜"},{"text":"\uE001","font":"mhdp"}]

# 怒り共有
    # 雌火竜を強制的に怒り状態にする
        execute as @e[tag=ReiaRoot] run function reia:manager/6_damage_animation/0_animation/anger
