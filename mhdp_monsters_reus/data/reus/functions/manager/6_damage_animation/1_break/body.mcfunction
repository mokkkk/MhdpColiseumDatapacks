#> asa_animator:reus/manager/3_damage/1_destroy/body
#
# 火竜 部位破壊処理 胴体

# モデル変更
    function ranposu:manager/7_model/head_break

# タグ付与
    tag @s add DestroyBody

# 演出
    playsound entity.player.attack.knockback master @a ~ ~ ~ 2 1
    playsound entity.player.attack.crit master @a ~ ~ ~ 2 0.8

# トースト表示
    advancement grant @a[tag=PlyQuest] only mhdp_core:toasts/ranposu
    schedule function asa_animator:reus/manager/3_damage/1_destroy/revoke 5t append
