function #asa_matrix:get_parent_pos
data modify storage asa_temp: Temp.Rotation set from entity @s Rotation
function #asa_matrix:matrix_world
data modify storage asa_temp: Data[0].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[0].Pose.Head set value [24f,-37.33334f,0f]
scoreboard players set #asa_child_pos_x AsaMatrix 981
scoreboard players set #asa_child_pos_y AsaMatrix 36
scoreboard players set #asa_child_pos_z AsaMatrix 3831
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[0].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[0].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[0].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[1].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[1].Pose.Head set value [33.33334f,-37.33334f,0f]
scoreboard players set #asa_child_pos_x AsaMatrix 1250
scoreboard players set #asa_child_pos_y AsaMatrix -74
scoreboard players set #asa_child_pos_z AsaMatrix 4184
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[1].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[1].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[1].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[2].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[2].Pose.Head set value [24.66667f,-28f,0f]
scoreboard players set #asa_child_pos_x AsaMatrix 723
scoreboard players set #asa_child_pos_y AsaMatrix 398
scoreboard players set #asa_child_pos_z AsaMatrix 3347
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[2].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[2].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[2].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[3].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[3].Pose.Head set value [19.66667f,-28f,0f]
scoreboard players set #asa_child_pos_x AsaMatrix 428
scoreboard players set #asa_child_pos_y AsaMatrix 569
scoreboard players set #asa_child_pos_z AsaMatrix 2791
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[3].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[3].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[3].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[4].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[4].Pose.Head set value [14.66667f,-18.66667f,0f]
scoreboard players set #asa_child_pos_x AsaMatrix 231
scoreboard players set #asa_child_pos_y AsaMatrix 782
scoreboard players set #asa_child_pos_z AsaMatrix 2208
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[4].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[4].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[4].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[5].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[5].Pose.Head set value [14.66667f,-9.333335f,0f]
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 1259
scoreboard players set #asa_child_pos_z AsaMatrix 801
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[5].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[5].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[5].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[6].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[6].Pose.Head set value [-0.6666654f,0f,0f]
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 1350
scoreboard players set #asa_child_pos_z AsaMatrix 0
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[6].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[6].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[6].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[7].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[7].Pose.Head set value [0.3333327f,0f,-10f]
scoreboard players set #asa_child_pos_x AsaMatrix 800
scoreboard players set #asa_child_pos_y AsaMatrix 650
scoreboard players set #asa_child_pos_z AsaMatrix 8
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[7].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[7].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[7].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[8].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[8].Pose.Head set value [0.3333327f,0f,10f]
scoreboard players set #asa_child_pos_x AsaMatrix -800
scoreboard players set #asa_child_pos_y AsaMatrix 650
scoreboard players set #asa_child_pos_z AsaMatrix 8
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[8].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[8].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[8].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[9].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[9].Pose.Head set value [9.666668f,0f,-10f]
scoreboard players set #asa_child_pos_x AsaMatrix 938
scoreboard players set #asa_child_pos_y AsaMatrix -138
scoreboard players set #asa_child_pos_z AsaMatrix 3
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[9].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[9].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[9].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[10].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[10].Pose.Head set value [9.666668f,0f,10f]
scoreboard players set #asa_child_pos_x AsaMatrix -939
scoreboard players set #asa_child_pos_y AsaMatrix -138
scoreboard players set #asa_child_pos_z AsaMatrix 3
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[10].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[10].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[10].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[11].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[11].Pose.Head set value [0.333333f,-0.6666654f,0f]
scoreboard players set #asa_child_pos_x AsaMatrix 938
scoreboard players set #asa_child_pos_y AsaMatrix -136
scoreboard players set #asa_child_pos_z AsaMatrix -605
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[11].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[11].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[11].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[12].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[12].Pose.Head set value [0.333333f,0.6666654f,0f]
scoreboard players set #asa_child_pos_x AsaMatrix -939
scoreboard players set #asa_child_pos_y AsaMatrix -136
scoreboard players set #asa_child_pos_z AsaMatrix -605
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[12].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[12].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[12].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[13].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[13].Pose.Head set value [-6.533334f,4.666667f,0f]
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 1234
scoreboard players set #asa_child_pos_z AsaMatrix -1299
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[13].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[13].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[13].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[14].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[14].Pose.Head set value [-18.06667f,4.666667f,0f]
scoreboard players set #asa_child_pos_x AsaMatrix 121
scoreboard players set #asa_child_pos_y AsaMatrix 1064
scoreboard players set #asa_child_pos_z AsaMatrix -2785
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[14].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[14].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[14].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[15].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[15].Pose.Head set value [-29.6f,9.333335f,0f]
scoreboard players set #asa_child_pos_x AsaMatrix 260
scoreboard players set #asa_child_pos_y AsaMatrix 505
scoreboard players set #asa_child_pos_z AsaMatrix -4490
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[15].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[15].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[15].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[16].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[16].Pose.Head set value [79.66667f,-9.333335f,8.666669f]
scoreboard players set #asa_child_pos_x AsaMatrix 930
scoreboard players set #asa_child_pos_y AsaMatrix 1031
scoreboard players set #asa_child_pos_z AsaMatrix 1530
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[16].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[16].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[16].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[17].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[17].Pose.Head set value [79.66667f,-9.333335f,-8.666669f]
scoreboard players set #asa_child_pos_x AsaMatrix -649
scoreboard players set #asa_child_pos_y AsaMatrix 1031
scoreboard players set #asa_child_pos_z AsaMatrix 1789
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[17].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[17].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[17].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[18].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[18].Pose.Head set value [79.66667f,-9.333335f,14.66667f]
scoreboard players set #asa_child_pos_x AsaMatrix 2845
scoreboard players set #asa_child_pos_y AsaMatrix 752
scoreboard players set #asa_child_pos_z AsaMatrix 1282
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[18].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[18].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[18].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[19].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[19].Pose.Head set value [79.66667f,-9.333335f,-14.66667f]
scoreboard players set #asa_child_pos_x AsaMatrix -2542
scoreboard players set #asa_child_pos_y AsaMatrix 755
scoreboard players set #asa_child_pos_z AsaMatrix 2174
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[19].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[19].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[19].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[20].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[20].Pose.Head set value [79.66667f,-9.333335f,14.66667f]
scoreboard players set #asa_child_pos_x AsaMatrix 3929
scoreboard players set #asa_child_pos_y AsaMatrix 765
scoreboard players set #asa_child_pos_z AsaMatrix 2705
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[20].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[20].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[20].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[21].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[21].Pose.Head set value [79.66667f,-9.333335f,-14.66667f]
scoreboard players set #asa_child_pos_x AsaMatrix -3131
scoreboard players set #asa_child_pos_y AsaMatrix 897
scoreboard players set #asa_child_pos_z AsaMatrix 3857
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[21].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[21].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[21].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
