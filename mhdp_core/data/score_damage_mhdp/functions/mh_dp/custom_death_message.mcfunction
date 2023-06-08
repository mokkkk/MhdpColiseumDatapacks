
execute store result score #default_gamemode AsaMatrix run gamerule showDeathMessages
gamerule showDeathMessages false

execute if entity @s[tag=Damage.RanposuBite] run tellraw @a [{"selector":"@s"},{"text": "は青鳥竜に噛みつかれた"}]


kill @s
gamerule showDeathMessages true