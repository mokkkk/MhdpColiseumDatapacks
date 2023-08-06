scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:ranposu/on_summon/as_rig_entities
execute if entity @s[tag=aj.ranposu.bone] run function #animated_java:ranposu/zzzzzzzz/on_summon/as_bones
execute if entity @s[tag=aj.ranposu.locator_origin] run function animated_java:ranposu/zzzzzzzz/summon/as_locator_origins
