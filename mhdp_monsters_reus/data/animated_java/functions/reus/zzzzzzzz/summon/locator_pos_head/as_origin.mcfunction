summon minecraft:marker ~ ~ ~ {Tags:["aj.reus.locator","aj.reus.locator.pos_head","aj.new"],CustomName:"[{\"text\":\"[\",\"color\":\"gray\"},{\"text\":\"AJ\",\"color\":\"aqua\"},\"] \",[\"\",{\"text\":\"reus\",\"color\":\"light_purple\"},\".\",{\"text\":\"locatorEntity\",\"color\":\"white\"},\"[\",{\"text\":\"pos_head\",\"color\":\"yellow\"},\"]\"]]"}
execute as @e[type=minecraft:marker,tag=aj.reus.locator.pos_head,tag=aj.new,limit=1,distance=..1] run function animated_java:reus/zzzzzzzz/summon/locator_pos_head/as_entity
data modify entity @s Owner set from storage animated_java Owner
data remove storage animated_java Owner