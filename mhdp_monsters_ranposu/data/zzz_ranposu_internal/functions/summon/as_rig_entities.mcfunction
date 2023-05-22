scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #ranposu:on_summon_as_rig_entities
execute if entity @s[tag=aj.ranposu.bone] run function zzz_ranposu_internal:summon/as_bones
execute if entity @s[tag=aj.ranposu.locator] run function zzz_ranposu_internal:summon/as_locators
execute if entity @s[tag=aj.ranposu.camera] run function zzz_ranposu_internal:summon/as_cameras