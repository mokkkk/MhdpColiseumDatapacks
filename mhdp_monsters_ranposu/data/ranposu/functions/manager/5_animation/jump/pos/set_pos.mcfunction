
# markerセット
summon marker ^ ^ ^12 {Tags:["RanposuMovePos"]}
execute rotated ~ 0 positioned as @e[tag=RanposuAttackTarget] positioned ^ ^ ^3 run tp @e[type=marker,tag=RanposuMovePos] ~ ~ ~

# ポジション差分取得
data merge storage mhdp: {PosTemp:[], MarkerPosTemp:[]}
data modify storage mhdp: PosTemp set from entity @s Pos
data modify storage mhdp: MarkerPosTemp set from entity @e[type=marker,tag=RanposuMovePos,limit=1] Pos

execute store result score #ranposu_mine_x AsaMatrix run data get storage mhdp: MarkerPosTemp[0] 100
execute store result score #ranposu_height_target AsaMatrix run data get storage mhdp: PosTemp[0] 100
scoreboard players operation #ranposu_mine_x AsaMatrix -= #ranposu_height_target AsaMatrix

execute store result score #ranposu_mine_y AsaMatrix run data get storage mhdp: MarkerPosTemp[1] 100
execute store result score #ranposu_height_target AsaMatrix run data get storage mhdp: PosTemp[1] 100
scoreboard players operation #ranposu_mine_y AsaMatrix -= #ranposu_height_target AsaMatrix

execute store result score #ranposu_mine_z AsaMatrix run data get storage mhdp: MarkerPosTemp[2] 100
execute store result score #ranposu_height_target AsaMatrix run data get storage mhdp: PosTemp[2] 100
scoreboard players operation #ranposu_mine_z AsaMatrix -= #ranposu_height_target AsaMatrix

scoreboard players set #ranposu_height_target AsaMatrix 18
scoreboard players operation #ranposu_mine_x AsaMatrix /= #ranposu_height_target AsaMatrix
scoreboard players operation #ranposu_mine_y AsaMatrix /= #ranposu_height_target AsaMatrix
scoreboard players operation #ranposu_mine_z AsaMatrix /= #ranposu_height_target AsaMatrix

data remove storage mhdp: PosTemp
data remove storage mhdp: MarkerPosTemp

# 終了
kill @e[type=marker,tag=RanposuMovePos]