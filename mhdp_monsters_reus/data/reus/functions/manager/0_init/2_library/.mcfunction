#> reus:manager/0_init/2_library/
#
# 火竜 TSBライブラリ用init処理

# 処理簡略化用タグ付与
    execute on passengers if entity @s[tag=aj.reus.locator_origin.pos_head] run tag @s add LctPosHead
    execute on passengers if entity @s[tag=aj.reus.locator_origin.pos_tail_2] run tag @s add LctPosTail2
    execute on passengers if entity @s[tag=aj.reus.locator_origin.pos_tail_3] run tag @s add LctPosTail3

    execute on passengers if entity @s[tag=aj.reus.locator_origin.head_0] on origin run tag @s add MonsterParts
    execute on passengers if entity @s[tag=aj.reus.locator_origin.head_0] on origin run tag @s add ReusHealth
    execute on passengers if entity @s[tag=aj.reus.locator_origin.head_0] on origin run tag @s add Head0
    execute on passengers if entity @s[tag=aj.reus.locator_origin.head_0] on origin run tag @s add HeadParts
    
    execute on passengers if entity @s[tag=aj.reus.locator_origin.neck_0] on origin run tag @s add MonsterParts
    execute on passengers if entity @s[tag=aj.reus.locator_origin.neck_0] on origin run tag @s add ReusHealth
    execute on passengers if entity @s[tag=aj.reus.locator_origin.neck_0] on origin run tag @s add Neck0
    execute on passengers if entity @s[tag=aj.reus.locator_origin.neck_0] on origin run tag @s add BodyParts
    execute on passengers if entity @s[tag=aj.reus.locator_origin.body_0] on origin run tag @s add MonsterParts
    execute on passengers if entity @s[tag=aj.reus.locator_origin.body_0] on origin run tag @s add ReusHealth
    execute on passengers if entity @s[tag=aj.reus.locator_origin.body_0] on origin run tag @s add Body0
    execute on passengers if entity @s[tag=aj.reus.locator_origin.body_0] on origin run tag @s add BodyParts
    execute on passengers if entity @s[tag=aj.reus.locator_origin.body_1] on origin run tag @s add MonsterParts
    execute on passengers if entity @s[tag=aj.reus.locator_origin.body_1] on origin run tag @s add ReusHealth
    execute on passengers if entity @s[tag=aj.reus.locator_origin.body_1] on origin run tag @s add Body1
    execute on passengers if entity @s[tag=aj.reus.locator_origin.body_1] on origin run tag @s add BodyParts

    execute on passengers if entity @s[tag=aj.reus.locator_origin.leg_left_0] on origin run tag @s add MonsterParts
    execute on passengers if entity @s[tag=aj.reus.locator_origin.leg_left_0] on origin run tag @s add ReusHealth
    execute on passengers if entity @s[tag=aj.reus.locator_origin.leg_left_0] on origin run tag @s add LegL0
    execute on passengers if entity @s[tag=aj.reus.locator_origin.leg_left_0] on origin run tag @s add LegParts
    execute on passengers if entity @s[tag=aj.reus.locator_origin.leg_left_1] on origin run tag @s add MonsterParts
    execute on passengers if entity @s[tag=aj.reus.locator_origin.leg_left_1] on origin run tag @s add ReusHealth
    execute on passengers if entity @s[tag=aj.reus.locator_origin.leg_left_1] on origin run tag @s add LegL1
    execute on passengers if entity @s[tag=aj.reus.locator_origin.leg_left_1] on origin run tag @s add LegParts
    execute on passengers if entity @s[tag=aj.reus.locator_origin.leg_right_0] on origin run tag @s add MonsterParts
    execute on passengers if entity @s[tag=aj.reus.locator_origin.leg_right_0] on origin run tag @s add ReusHealth
    execute on passengers if entity @s[tag=aj.reus.locator_origin.leg_right_0] on origin run tag @s add LegR0
    execute on passengers if entity @s[tag=aj.reus.locator_origin.leg_right_0] on origin run tag @s add LegParts
    execute on passengers if entity @s[tag=aj.reus.locator_origin.leg_right_1] on origin run tag @s add MonsterParts
    execute on passengers if entity @s[tag=aj.reus.locator_origin.leg_right_1] on origin run tag @s add ReusHealth
    execute on passengers if entity @s[tag=aj.reus.locator_origin.leg_right_1] on origin run tag @s add LegR1
    execute on passengers if entity @s[tag=aj.reus.locator_origin.leg_right_1] on origin run tag @s add LegParts

    execute on passengers if entity @s[tag=aj.reus.locator_origin.tail_0] on origin run tag @s add MonsterParts
    execute on passengers if entity @s[tag=aj.reus.locator_origin.tail_0] on origin run tag @s add ReusHealth
    execute on passengers if entity @s[tag=aj.reus.locator_origin.tail_0] on origin run tag @s add Tail0
    execute on passengers if entity @s[tag=aj.reus.locator_origin.tail_0] on origin run tag @s add TailParts
    execute on passengers if entity @s[tag=aj.reus.locator_origin.tail_1] on origin run tag @s add MonsterParts 
    execute on passengers if entity @s[tag=aj.reus.locator_origin.tail_1] on origin run tag @s add ReusHealth
    execute on passengers if entity @s[tag=aj.reus.locator_origin.tail_1] on origin run tag @s add Tail1
    execute on passengers if entity @s[tag=aj.reus.locator_origin.tail_1] on origin run tag @s add TailParts
    execute on passengers if entity @s[tag=aj.reus.locator_origin.tail_2] on origin run tag @s add MonsterParts 
    execute on passengers if entity @s[tag=aj.reus.locator_origin.tail_2] on origin run tag @s add ReusHealth
    execute on passengers if entity @s[tag=aj.reus.locator_origin.tail_2] on origin run tag @s add Tail2
    execute on passengers if entity @s[tag=aj.reus.locator_origin.tail_2] on origin run tag @s add TailParts

# tsb用init
    execute as @e[type=slime,tag=ReusHealth] run function mob_manager:init/

# 部位判定用ID割り振り
    scoreboard players set @e[type=slime,tag=ReusHealth] MhdpMonsterIndex 0
    scoreboard players set @e[type=slime,tag=ReusHealth,tag=HeadParts] MhdpPartsIndex 0
    scoreboard players set @e[type=slime,tag=ReusHealth,tag=BodyParts] MhdpPartsIndex 1
    scoreboard players set @e[type=slime,tag=ReusHealth,tag=LegParts] MhdpPartsIndex 2
    scoreboard players set @e[type=slime,tag=ReusHealth,tag=TailParts] MhdpPartsIndex 3

say init reus