# This function was generated by ArmorstandAnimator
# Main Functions
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0.00 ^-0.11 ^0.00
execute if entity @s[scores={AsaMatrix=6..10}] run tp @s ^0.00 ^0.29 ^0.00
execute if entity @s[scores={AsaMatrix=11..20}] run tp @s ^0.00 ^-0.09 ^-0.02

# 移動
    function asa_animator:reus/manager/4_general/rotate

# 演出
    execute if entity @s[scores={AsaMatrix=8}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7

# 高度調整
    execute at @s if block ~ ~-3 ~ #asa_animator:no_collision at @s run tp @s ~ ~-0.5 ~ ~ ~
    execute at @s unless block ~ ~-2 ~ #asa_animator:no_collision at @s run tp @s ~ ~0.5 ~ ~ ~
    
# Keyframe Functions
function asa_animator:reus/get_data
execute if entity @s[scores={AsaMatrix=..1}] run function asa_animator:reus/anim/flying_turn/keyframes/1
execute if entity @s[scores={AsaMatrix=2}] run function asa_animator:reus/anim/flying_turn/keyframes/2
execute if entity @s[scores={AsaMatrix=3}] run function asa_animator:reus/anim/flying_turn/keyframes/3
execute if entity @s[scores={AsaMatrix=4}] run function asa_animator:reus/anim/flying_turn/keyframes/4
execute if entity @s[scores={AsaMatrix=5}] run function asa_animator:reus/anim/flying_turn/keyframes/5
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:reus/anim/flying_turn/keyframes/6
execute if entity @s[scores={AsaMatrix=7}] run function asa_animator:reus/anim/flying_turn/keyframes/7
execute if entity @s[scores={AsaMatrix=8}] run function asa_animator:reus/anim/flying_turn/keyframes/8
execute if entity @s[scores={AsaMatrix=9}] run function asa_animator:reus/anim/flying_turn/keyframes/9
execute if entity @s[scores={AsaMatrix=10}] run function asa_animator:reus/anim/flying_turn/keyframes/10
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:reus/anim/flying_turn/keyframes/11
execute if entity @s[scores={AsaMatrix=12}] run function asa_animator:reus/anim/flying_turn/keyframes/12
execute if entity @s[scores={AsaMatrix=13}] run function asa_animator:reus/anim/flying_turn/keyframes/13
execute if entity @s[scores={AsaMatrix=14}] run function asa_animator:reus/anim/flying_turn/keyframes/14
execute if entity @s[scores={AsaMatrix=15}] run function asa_animator:reus/anim/flying_turn/keyframes/15
execute if entity @s[scores={AsaMatrix=16}] run function asa_animator:reus/anim/flying_turn/keyframes/16
execute if entity @s[scores={AsaMatrix=17}] run function asa_animator:reus/anim/flying_turn/keyframes/17
execute if entity @s[scores={AsaMatrix=18}] run function asa_animator:reus/anim/flying_turn/keyframes/18
execute if entity @s[scores={AsaMatrix=19}] run function asa_animator:reus/anim/flying_turn/keyframes/19
execute if entity @s[scores={AsaMatrix=20..}] run function asa_animator:reus/anim/flying_turn/keyframes/20
execute if entity @s[scores={AsaMatrix=21..}] run function asa_animator:reus/anim/flying_turn/end
function asa_animator:reus/model