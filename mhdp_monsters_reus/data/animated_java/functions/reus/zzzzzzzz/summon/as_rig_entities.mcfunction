scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:reus/on_summon/as_rig_entities
execute if entity @s[tag=aj.reus.bone] run function #animated_java:reus/zzzzzzzz/on_summon/as_bones
execute if entity @s[tag=aj.reus.locator_origin] run function animated_java:reus/zzzzzzzz/summon/as_locator_origins
