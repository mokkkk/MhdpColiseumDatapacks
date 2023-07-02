#> ranposu:manager/6_damage_animation/2_anger/start
#
# 青鳥竜 怒り開始処理

# 怒り行動回数初期化
    scoreboard players set #mhdp_ranposu_anger_count AsaMatrix 0

# タグ付与
    tag @s add StateIsAnger

# ボスバー設定
    bossbar set asa_animator:ranposu_health name [{"text": "青鳥竜"},{"text":"\uE001","font":"mhdp"}]

# 怒り共有
    # Ignore
