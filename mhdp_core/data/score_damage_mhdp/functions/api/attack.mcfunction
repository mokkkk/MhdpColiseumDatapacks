#> score_damage_mhdp:api/attack
#
# 実行者のエンティティにダメージを与えます。
#
# 実行者はHealthを持つEntityである必要があります。
#
# @input storage score_damage:
#   Argument.Damage: float
#       与えるダメージを入力
#   Argument.EPF: int
#       軽減効果のある[エンチャントプロテクションファクター](https://minecraft.gamepedia.com/Armor#Enchantments)の合計値
#   Argument.DamageType: "None" | "Fire" | "Blast" | "Projectile" | "Fall"
#       ダメージの種類 EPFを自動取得する場合にどのエンチャントを参照するかに関わります
#   Argument.DisableParticle: boolean
#       パーティクルを表示するか否か, bool値
#   Argument.BypassArmor: boolean
#       防御力/防具強度を無視するか否か, bool値
#   Argument.BypassResistance: boolean
#       耐性エフェクトを無視するか否か, bool値
# @context EPFが-1以下の時 EntityのProtectionを参照します
# @api

#> Temp
# @internal
    #declare team Null

# 引数チェック
    execute unless data storage score_damage: Argument.Damage run tellraw @a [{"text":"ERROR >>","color":"red"},{"text":"引数が足りません","color":"white"},{"text":"\nMissing Damage at score_damage:api/attack","color":"white"}]
    execute unless data storage score_damage: Argument.EPF run data modify storage score_damage: Argument.EPF set value -1
    execute unless data storage score_damage: Argument.DamageType run data modify storage score_damage: Argument.DamageType set value "None"
    execute unless data storage score_damage: Argument.DisableParticle run data modify storage score_damage: Argument.DisableParticle set value 0b
    execute unless data storage score_damage: Argument.BypassArmor run data modify storage score_damage: Argument.BypassArmor set value 0b
    execute unless data storage score_damage: Argument.BypassResistance run data modify storage score_damage: Argument.BypassResistance set value 0b
# Healthを持つEntityであれば実行
    execute if data storage score_damage: Argument.Damage if entity @s[team=!Null,type=!armor_stand] run function score_damage_mhdp:core/attack
# 属性やられ
    execute if entity @s[type=player,tag=!PlyGuardSuccess] if data storage mhdp_core:temp Temp.Damage{Blight:1b} if data storage mh_dp:status GameStatus{Phase:3} run function score_damage_mhdp:mh_dp/blight
# ノックパック
    execute if entity @s[type=player] run function mhdp_core:player/damage/knockback/damage/
# 毒
    execute if entity @s[type=player,tag=!PlyGuardSuccess] if score #mhdp_temp_poison_time MhdpCore matches 1.. run function mhdp_core:player/damage/poison/
    tag @s remove PlyGuardSuccess