tp @s ^0.28125 ^-0.01562 ^-0.03871 ~0 ~0
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:reus/on_summon/as_locator_entities