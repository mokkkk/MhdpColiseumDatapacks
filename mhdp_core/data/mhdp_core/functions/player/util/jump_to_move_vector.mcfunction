#> mhdp_core:player/util/jump_to_move_vector
#
# 移動方向の斜め上方向にむけてDeltaを実行する

# 移動方向取得処理
    # 処理用Marker召喚
        summon marker ~ ~ ~ {Tags:["CalcVector0","Start"]}
        summon marker ~ ~ ~ {Tags:["CalcVector1","Start"]}
    # 処理用MarkerにUidコピー
        scoreboard players operation @e[type=marker,tag=CalcVector0,tag=Start] MhdpPlayerUid = @s MhdpPlayerUid
    # 開始地点
        function oh_my_dat:please
        execute as @e[type=marker,tag=CalcVector0,tag=Start] run data modify entity @s Pos set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Pos.Pre
        execute as @e[type=marker,tag=CalcVector0,tag=Start] at @s run tp @s ~ ~ ~
    # 移動先
        tp @s @s
        execute as @e[type=marker,tag=CalcVector1,tag=Start] run tp @s ~ ~ ~
    # 移動方向検知
        execute as @e[type=marker,tag=CalcVector0,tag=Start] at @s facing entity @e[type=marker,tag=CalcVector1,tag=Start] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
    # プレイヤー移動有無検知
        data modify storage mhdp_core:temp Temp.Pos1 set from entity @e[type=marker,tag=CalcVector0,tag=Start,limit=1] Pos
        data modify storage mhdp_core:temp Temp.Pos2 set from entity @s Pos
        data modify storage mhdp_core:temp Temp.Pos1[1] set value 0.0
        data modify storage mhdp_core:temp Temp.Pos2[1] set value 0.0
        execute store success score #mhdp_temp_success MhdpCore as @e[type=marker,tag=CalcVector0,tag=Start] run data modify storage mhdp_core:temp Temp.Pos1 set from storage mhdp_core:temp Temp.Pos2
        execute unless score #mhdp_temp_success MhdpCore matches 1.. rotated ~ 0 as @e[type=marker,tag=CalcVector0,tag=Start] run tp @s ~ ~ ~ ~ ~
    
# 飛ぶ
    execute rotated as @e[type=marker,tag=CalcVector0,tag=Start] rotated ~ -60 run function delta:api/launch_looking
        
# 終了
    kill @e[type=marker,tag=CalcVector0]
    kill @e[type=marker,tag=CalcVector1]
