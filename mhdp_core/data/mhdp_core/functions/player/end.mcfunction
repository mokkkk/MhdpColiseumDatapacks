#> mhdp_core:player/end
#
# プレイヤー処理実行後にデータの消去・初期化を行う

# ニンジン棒クリックリセット
    scoreboard players set @s MhdpUsedCoas 0
    scoreboard players set @s MhdpDropCoas 0
    execute if entity @s[tag=PlyDroppedCoas] run tag @s remove PlyDroppedCoas
    execute if entity @s[tag=PlyUsedCoas] run tag @s remove PlyUsedCoas

# スニーク状態リセット
    execute if entity @s[tag=PlySneakStart] run tag @s remove PlySneakStart
    execute if entity @s[tag=PlySneakEnd] run tag @s remove PlySneakEnd
    execute if entity @s[tag=PlySneakDouble] run tag @s remove PlySneakDouble

# エンダーアイ・武器使用状態リセット
    scoreboard players set @s MhdpDropEnderEye 0
    execute if entity @s[tag=PlyDroppedEnderEye] run tag @s remove PlyDroppedEnderEye
    execute if entity @s[tag=PlyUsingEyeStart] run tag @s remove PlyUsingEyeStart
    execute if entity @s[tag=PlyUsingEyeEnd] run tag @s remove PlyUsingEyeEnd
    execute if entity @s[tag=PlyUsingEyeEndShort] run tag @s remove PlyUsingEyeEndShort
    execute if entity @s[tag=PlyUsingEyeLong] run tag @s remove PlyUsingEyeLong
    execute if entity @s[tag=PlySheatheSucceed] run tag @s remove PlySheatheSucceed

# 空中状態リセット
    execute if entity @s[tag=PlyJumpping] run tag @s remove PlyJumpping

# 進捗状況リセット
    execute if entity @s[tag=PlyDamaged] run tag @s remove PlyDamaged
    execute if entity @s[tag=PlySelectedItemChanged] run tag @s remove PlySelectedItemChanged
    execute if entity @s[tag=AdvTradeQuestNormal] run tag @s remove AdvTradeQuestNormal
    execute if entity @s[tag=AdvInventoryChangedMain] run tag @s remove AdvInventoryChangedMain
    execute if entity @s[tag=AdvInventoryChangedOff] run tag @s remove AdvInventoryChangedOff
    execute if entity @s[tag=AdvInventoryChangedOther] run tag @s remove AdvInventoryChangedOther
    execute if entity @s[tag=AdvPlayerHurtEntity] run tag @s remove AdvPlayerHurtEntity
    execute if entity @s[tag=AdvUsingItemPotion] run tag @s remove AdvUsingItemPotion
    execute if entity @s[tag=AdvUsingItemHoneyBottle] run tag @s remove AdvUsingItemHoneyBottle
    execute if entity @s[tag=AdvUsingItemFood] run tag @s remove AdvUsingItemFood
