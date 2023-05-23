#> ranposu:manager/2_health/
#
# 青鳥竜 当たり判定移動

# RootのPos取得
    function #asa_matrix:get_parent_pos
    data modify storage asa_temp: Temp.Pos set value [0d,0d,0d]
# RootのRotation取得・回転行列を計算
    data modify storage asa_temp: Temp.Rotation set from entity @s Rotation
    function #asa_matrix:matrix_world

# 位置調整
    # Head 0
        execute on passengers if entity @s[tag=Head0] run data modify storage asa_temp: Temp.Vector set from entity @s transformation.translation
        execute store result score #asa_child_pos_x AsaMatrix run data get storage asa_temp: Temp.Vector[0] 1000
        execute store result score #asa_child_pos_y AsaMatrix run data get storage asa_temp: Temp.Vector[1] 1000
        execute store result score #asa_child_pos_z AsaMatrix run data get storage asa_temp: Temp.Vector[2] 1000
        function #asa_matrix:rotate_world
        function #asa_matrix:get_child_pos
        execute store result storage asa_temp: Temp.Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
        execute store result storage asa_temp: Temp.Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
        execute store result storage asa_temp: Temp.Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
        execute as @e[type=slime,tag=RanposuParts,tag=Head0] run data modify entity @s Pos set from storage asa_temp: Temp.Pos
    # Body 0
        execute on passengers if entity @s[tag=Body0] run data modify storage asa_temp: Temp.Vector set from entity @s transformation.translation
        execute store result score #asa_child_pos_x AsaMatrix run data get storage asa_temp: Temp.Vector[0] 1000
        execute store result score #asa_child_pos_y AsaMatrix run data get storage asa_temp: Temp.Vector[1] 1000
        execute store result score #asa_child_pos_z AsaMatrix run data get storage asa_temp: Temp.Vector[2] 1000
        function #asa_matrix:rotate_world
        function #asa_matrix:get_child_pos
        execute store result storage asa_temp: Temp.Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
        execute store result storage asa_temp: Temp.Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
        execute store result storage asa_temp: Temp.Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
        execute as @e[type=slime,tag=RanposuParts,tag=Body0] run data modify entity @s Pos set from storage asa_temp: Temp.Pos
    # Body 1
        execute on passengers if entity @s[tag=Body1] run data modify storage asa_temp: Temp.Vector set from entity @s transformation.translation
        execute store result score #asa_child_pos_x AsaMatrix run data get storage asa_temp: Temp.Vector[0] 1000
        execute store result score #asa_child_pos_y AsaMatrix run data get storage asa_temp: Temp.Vector[1] 1000
        execute store result score #asa_child_pos_z AsaMatrix run data get storage asa_temp: Temp.Vector[2] 1000
        function #asa_matrix:rotate_world
        function #asa_matrix:get_child_pos
        execute store result storage asa_temp: Temp.Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
        execute store result storage asa_temp: Temp.Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
        execute store result storage asa_temp: Temp.Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
        execute as @e[type=slime,tag=RanposuParts,tag=Body1] run data modify entity @s Pos set from storage asa_temp: Temp.Pos
    # Tail 0
        execute on passengers if entity @s[tag=Tail0] run data modify storage asa_temp: Temp.Vector set from entity @s transformation.translation
        execute store result score #asa_child_pos_x AsaMatrix run data get storage asa_temp: Temp.Vector[0] 1000
        execute store result score #asa_child_pos_y AsaMatrix run data get storage asa_temp: Temp.Vector[1] 1000
        execute store result score #asa_child_pos_z AsaMatrix run data get storage asa_temp: Temp.Vector[2] 1000
        function #asa_matrix:rotate_world
        function #asa_matrix:get_child_pos
        execute store result storage asa_temp: Temp.Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
        execute store result storage asa_temp: Temp.Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
        execute store result storage asa_temp: Temp.Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
        execute as @e[type=slime,tag=RanposuParts,tag=Tail0] run data modify entity @s Pos set from storage asa_temp: Temp.Pos
    # Tail 1
        execute on passengers if entity @s[tag=Tail1] run data modify storage asa_temp: Temp.Vector set from entity @s transformation.translation
        execute store result score #asa_child_pos_x AsaMatrix run data get storage asa_temp: Temp.Vector[0] 1000
        execute store result score #asa_child_pos_y AsaMatrix run data get storage asa_temp: Temp.Vector[1] 1000
        execute store result score #asa_child_pos_z AsaMatrix run data get storage asa_temp: Temp.Vector[2] 1000
        function #asa_matrix:rotate_world
        function #asa_matrix:get_child_pos
        execute store result storage asa_temp: Temp.Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
        execute store result storage asa_temp: Temp.Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
        execute store result storage asa_temp: Temp.Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
        execute as @e[type=slime,tag=RanposuParts,tag=Tail1] run data modify entity @s Pos set from storage asa_temp: Temp.Pos

    execute rotated as @s as @e[type=slime,tag=RanposuParts] positioned as @s run tp @s ~ ~ ~ ~ ~

# HP確認
    # execute if entity @s[nbt=!{Health:1000f},tag=!Death] run function asa_animator:reus/manager/3_damage/check
