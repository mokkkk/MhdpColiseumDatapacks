#> reus:manager/6_damage_animation/2_anger/end
#
# 火竜 怒り終了処理

# 怒り終了
    tag @s remove StateIsAnger

# スコアリセット
    scoreboard players operation #mhdp_reus_anger_damage AsaMatrix = #mhdp_reus_anger_damage_max AsaMatrix

# ボスバー設定
    bossbar set asa_animator:reus_health name [{"text": "火竜"},{"text":"\uE000","font":"mhdp"}]
