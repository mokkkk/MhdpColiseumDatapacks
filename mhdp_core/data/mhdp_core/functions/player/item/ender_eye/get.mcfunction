#> mhdp_core:player/item/ender_eye/get
#
# プレイヤーエンダーアイ使用検知用に実行する処理

# 状態変化検知
    # 未使用→使用
        execute if entity @s[tag=!PlyUsingEyeCurrent,tag=AdvUsingItemEnderEye] run tag @s add PlyUsingEyeStart
        execute if entity @s[tag=PlyUsingEyeStart] run tag @s add PlyUsingEyeCurrent
    # 使用→未使用
        execute if entity @s[tag=PlyUsingEyeCurrent,tag=!AdvUsingItemEnderEye] run tag @s add PlyUsingEyeEnd
        execute if entity @s[tag=PlyUsingEyeEnd] run tag @s remove PlyUsingEyeCurrent

# 使用時間取得
    execute if entity @s[tag=PlyUsingEyeCurrent] run scoreboard players add @s MhdpPlayerUsingEnderEyeTimer 1
    execute if entity @s[tag=PlyUsingEyeEnd] if score @s MhdpPlayerUsingEnderEyeTimer matches ..6 run tag @s add PlyUsingEyeEndShort
    execute if score @s MhdpPlayerUsingEnderEyeTimer matches 7 run tag @s add PlyUsingEyeLong

# 終了
    execute if entity @s[tag=AdvUsingItemEnderEye] run tag @s remove AdvUsingItemEnderEye
    execute if entity @s[tag=PlyUsingEyeEnd] run scoreboard players set @s MhdpPlayerUsingEnderEyeTimer 0
