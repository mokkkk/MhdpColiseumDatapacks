# This function was generated by ArmorstandAnimator
# Main Functions
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1..7}] run tp @s ^0.00 ^0.00 ^0.00
execute if entity @s[scores={AsaMatrix=8..12}] run tp @s ^0.00 ^0.00 ^0.00

# 移動
    function asa_animator:reus/manager/4_general/rotate

# 演出
    execute if entity @s[scores={AsaMatrix=1..3}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7

# Keyframe Functions
function asa_animator:reus/get_data
execute if entity @s[scores={AsaMatrix=..1}] run function asa_animator:reus/anim/dash_start/keyframes/1
execute if entity @s[scores={AsaMatrix=2}] run function asa_animator:reus/anim/dash_start/keyframes/2
execute if entity @s[scores={AsaMatrix=3}] run function asa_animator:reus/anim/dash_start/keyframes/3
execute if entity @s[scores={AsaMatrix=4}] run function asa_animator:reus/anim/dash_start/keyframes/4
execute if entity @s[scores={AsaMatrix=5}] run function asa_animator:reus/anim/dash_start/keyframes/5
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:reus/anim/dash_start/keyframes/6
execute if entity @s[scores={AsaMatrix=7}] run function asa_animator:reus/anim/dash_start/keyframes/7
execute if entity @s[scores={AsaMatrix=8}] run function asa_animator:reus/anim/dash_start/keyframes/8
execute if entity @s[scores={AsaMatrix=9}] run function asa_animator:reus/anim/dash_start/keyframes/9
execute if entity @s[scores={AsaMatrix=10}] run function asa_animator:reus/anim/dash_start/keyframes/10
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:reus/anim/dash_start/keyframes/11
execute if entity @s[scores={AsaMatrix=12..}] run function asa_animator:reus/anim/dash_start/keyframes/12
execute if entity @s[scores={AsaMatrix=13..}] run function asa_animator:reus/anim/dash_start/end
function asa_animator:reus/model
