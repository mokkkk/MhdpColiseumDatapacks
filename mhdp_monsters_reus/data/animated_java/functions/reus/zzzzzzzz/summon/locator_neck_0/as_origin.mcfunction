summon minecraft:slime ~ ~ ~ {Size:2,NoGravity:1b,Silent:1b,NoAI:1b,Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000},{Name:"generic.knockback_resistance",Base:1}],DeathLootTable:"asa_animator:no_drop",ActiveEffects:[{Id:12,Amplifier:1b,Duration:-1,ShowParticles:0b},{Id:14,Amplifier:1b,Duration:-1,ShowParticles:0b}],PersistenceRequired:1b,CustomNameVisible:0b,Tags:["aj.reus.locator","aj.reus.locator.neck_0","aj.new"],CustomName:"[{\"text\":\"[\",\"color\":\"gray\"},{\"text\":\"AJ\",\"color\":\"aqua\"},\"] \",[\"\",{\"text\":\"reus\",\"color\":\"light_purple\"},\".\",{\"text\":\"locatorEntity\",\"color\":\"white\"},\"[\",{\"text\":\"neck_0\",\"color\":\"yellow\"},\"]\"]]"}
execute as @e[type=minecraft:slime,tag=aj.reus.locator.neck_0,tag=aj.new,limit=1,distance=..1] run function animated_java:reus/zzzzzzzz/summon/locator_neck_0/as_entity
data modify entity @s Owner set from storage animated_java Owner
data remove storage animated_java Owner