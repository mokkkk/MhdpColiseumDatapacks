tp @s ^0 ^0.525 ^-1.1875 ~0 ~0
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:reus/on_summon/as_locator_entities