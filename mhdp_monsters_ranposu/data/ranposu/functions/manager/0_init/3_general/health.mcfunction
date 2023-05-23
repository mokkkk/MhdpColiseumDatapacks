#> ranposu:manager/0_init/3_general/health
#
# 青鳥竜 召喚処理 当たり判定召喚

# 頭
    summon slime ~ ~ ~ {NoGravity:1b,Silent:1b,NoAI:1b,Health:1000f,Size:2,Tags:["MonsterParts","RanposuHealth","RanposuParts","Head0","HeadParts"],Attributes:[{Name:"generic.max_health",Base:1000},{Name:"generic.knockback_resistance",Base:1}],DeathLootTable:"asa_animator:no_drop",ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}],PersistenceRequired:1b}
# 胴
    summon slime ~ ~ ~ {NoGravity:1b,Silent:1b,NoAI:1b,Health:1000f,Size:3,Tags:["MonsterParts","RanposuHealth","RanposuParts","Body0","BodyParts"],Attributes:[{Name:"generic.max_health",Base:1000},{Name:"generic.knockback_resistance",Base:1}],DeathLootTable:"asa_animator:no_drop",ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}],PersistenceRequired:1b}
    summon slime ~ ~ ~ {NoGravity:1b,Silent:1b,NoAI:1b,Health:1000f,Size:3,Tags:["MonsterParts","RanposuHealth","RanposuParts","Body1","BodyParts"],Attributes:[{Name:"generic.max_health",Base:1000},{Name:"generic.knockback_resistance",Base:1}],DeathLootTable:"asa_animator:no_drop",ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}],PersistenceRequired:1b}
# 尻尾
    summon slime ~ ~ ~ {NoGravity:1b,Silent:1b,NoAI:1b,Health:1000f,Size:1,Tags:["MonsterParts","RanposuHealth","RanposuParts","Tail0","BodyParts"],Attributes:[{Name:"generic.max_health",Base:1000},{Name:"generic.knockback_resistance",Base:1}],DeathLootTable:"asa_animator:no_drop",ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}],PersistenceRequired:1b}
    summon slime ~ ~ ~ {NoGravity:1b,Silent:1b,NoAI:1b,Health:1000f,Size:1,Tags:["MonsterParts","RanposuHealth","RanposuParts","Tail1","BodyParts"],Attributes:[{Name:"generic.max_health",Base:1000},{Name:"generic.knockback_resistance",Base:1}],DeathLootTable:"asa_animator:no_drop",ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}],PersistenceRequired:1b}

# Tsbライブラリ用init
    execute as @e[tag=RanposuRoot] run function ranposu:manager/0_init/2_library/
