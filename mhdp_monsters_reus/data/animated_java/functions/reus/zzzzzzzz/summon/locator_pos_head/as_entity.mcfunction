tp @s ^0 ^0.44688 ^1.375 ~0 ~0
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:reus/on_summon/as_locator_entities