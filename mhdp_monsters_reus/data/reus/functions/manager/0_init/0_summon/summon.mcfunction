#> reus:manager/0_init/0_summon/summon
#
# 火竜 召喚処理

# パーツ召喚(animated_java)
    execute positioned ~ ~ ~ run function animated_java:reus/summon

# 当たり判定初期化
    execute positioned ~ ~ ~ run function reus:manager/0_init/3_general/health

# HPセット
    function reus:manager/0_init/3_general/hp

# 待機アニメーション再生
# 確実にloadが終わってから実行するため，スケジュールでずらす
    schedule function reus:manager/0_init/0_summon/summon_idle 2t
