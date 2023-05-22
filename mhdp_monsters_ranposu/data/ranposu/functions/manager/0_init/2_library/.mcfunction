#> asa_animator:ranposu/manager/0_init/2_library/
#
# 青鳥竜 TSBライブラリ用init処理

# tsb用init
    execute as @e[type=slime,tag=RanposuHealth] run function mob_manager:init/

# 部位判定用ID割り振り
    scoreboard players set @e[type=slime,tag=MonsterParts,tag=RanposuHealth] MhdpMonsterIndex 0
    scoreboard players set @e[type=slime,tag=MonsterParts,tag=RanposuHealth,tag=HeadParts] MhdpPartsIndex 0
    scoreboard players set @e[type=slime,tag=MonsterParts,tag=RanposuHealth,tag=BodyParts] MhdpPartsIndex 1
