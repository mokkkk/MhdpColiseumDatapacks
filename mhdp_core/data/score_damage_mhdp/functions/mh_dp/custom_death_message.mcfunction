
execute store result score #default_gamemode AsaMatrix run gamerule showDeathMessages
gamerule showDeathMessages false

execute if entity @s[tag=Damage.RanposuBite] run tellraw @a [{"selector":"@s"},{"text": "は青鳥竜に噛みつかれた"}]
execute if entity @s[tag=Damage.RanposuClaw] run tellraw @a [{"selector":"@s"},{"text": "は青鳥竜に切り裂かれた"}]
execute if entity @s[tag=Damage.RanposuTail] run tellraw @a [{"selector":"@s"},{"text": "は青鳥竜に吹き飛ばされた"}]

execute if entity @s[tag=Damage.Damage.ReusClaw] run tellraw @a [{"selector":"@s"},{"text": "は火竜に切り裂かれた"}]
execute if entity @s[tag=Damage.Damage.ReusBite] run tellraw @a [{"selector":"@s"},{"text": "は火竜に噛み砕かれた"}]
execute if entity @s[tag=Damage.Damage.ReusTackle] run tellraw @a [{"selector":"@s"},{"text": "は火竜に吹き飛ばされた"}]
execute if entity @s[tag=Damage.Damage.ReusBreath] run tellraw @a [{"selector":"@s"},{"text": "は火竜に黒コゲにされた"}]

kill @s
gamerule showDeathMessages true