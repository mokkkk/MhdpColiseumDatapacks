#> ranposu:manager/0_init/2_library/
#
# 青鳥竜 TSBライブラリ用init処理

# 処理簡略化用タグ付与
    execute on passengers if entity @s[tag=aj.ranposu.locator_origin.pos_head] on origin run tag @s add LctPosHead

    execute on passengers if entity @s[tag=aj.ranposu.locator_origin.head_0] on origin run tag @s add MonsterParts
    execute on passengers if entity @s[tag=aj.ranposu.locator_origin.head_0] on origin run tag @s add RanposuHealth
    execute on passengers if entity @s[tag=aj.ranposu.locator_origin.head_0] on origin run tag @s add Head0
    execute on passengers if entity @s[tag=aj.ranposu.locator_origin.head_0] on origin run tag @s add HeadParts
    
    execute on passengers if entity @s[tag=aj.ranposu.locator_origin.body_0] on origin run tag @s add MonsterParts
    execute on passengers if entity @s[tag=aj.ranposu.locator_origin.body_0] on origin run tag @s add RanposuHealth
    execute on passengers if entity @s[tag=aj.ranposu.locator_origin.body_0] on origin run tag @s add Body0
    execute on passengers if entity @s[tag=aj.ranposu.locator_origin.body_0] on origin run tag @s add BodyParts

    execute on passengers if entity @s[tag=aj.ranposu.locator_origin.body_1] on origin run tag @s add MonsterParts
    execute on passengers if entity @s[tag=aj.ranposu.locator_origin.body_1] on origin run tag @s add RanposuHealth
    execute on passengers if entity @s[tag=aj.ranposu.locator_origin.body_1] on origin run tag @s add Body1
    execute on passengers if entity @s[tag=aj.ranposu.locator_origin.body_1] on origin run tag @s add BodyParts

    execute on passengers if entity @s[tag=aj.ranposu.locator_origin.tail_0] on origin run tag @s add MonsterParts
    execute on passengers if entity @s[tag=aj.ranposu.locator_origin.tail_0] on origin run tag @s add RanposuHealth
    execute on passengers if entity @s[tag=aj.ranposu.locator_origin.tail_0] on origin run tag @s add Tail0
    execute on passengers if entity @s[tag=aj.ranposu.locator_origin.tail_0] on origin run tag @s add BodyParts

    execute on passengers if entity @s[tag=aj.ranposu.locator_origin.tail_1] on origin run tag @s add MonsterParts 
    execute on passengers if entity @s[tag=aj.ranposu.locator_origin.tail_1] on origin run tag @s add RanposuHealth
    execute on passengers if entity @s[tag=aj.ranposu.locator_origin.tail_1] on origin run tag @s add Tail1
    execute on passengers if entity @s[tag=aj.ranposu.locator_origin.tail_1] on origin run tag @s add BodyParts

# tsb用init
    execute as @e[type=slime,tag=RanposuHealth] run function mob_manager:init/

# 部位判定用ID割り振り
    scoreboard players set @e[type=slime,tag=RanposuHealth] MhdpMonsterIndex 0
    scoreboard players set @e[type=slime,tag=RanposuHealth,tag=HeadParts] MhdpPartsIndex 0
    scoreboard players set @e[type=slime,tag=RanposuHealth,tag=BodyParts] MhdpPartsIndex 1

say init ranposu