tp @s ^0 ^0.25 ^1.32066 ~0 ~0
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:reus/on_summon/as_locator_entities