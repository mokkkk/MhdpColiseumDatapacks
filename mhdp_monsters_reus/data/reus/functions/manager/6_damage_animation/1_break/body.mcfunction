#> reus:manager/6_damage_animation/1_break/body
#
# 火竜 部位破壊処理 胴体

# モデル変更
    function reus:manager/7_model/body_break

# タグ付与
    tag @s add StateBreakBody

# 演出
    execute on passengers if entity @s[tag=LctPosBody] on origin at @s run particle block bone_block ^ ^1.5 ^ 0.2 0.2 0.2 0 10
    playsound entity.player.attack.knockback master @a ~ ~ ~ 2 1
    playsound entity.player.attack.crit master @a ~ ~ ~ 2 0.8

# トースト表示
# TODO:トースト表示
    advancement grant @a[tag=PlyQuest] only mhdp_core:toasts/reus
    schedule function reus:manager/6_damage_animation/1_break/revoke 5t append
