# This function was generated by ArmorstandAnimator
# Main Functions
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1..6}] run tp @s ^0.00 ^0.50 ^-0.75
execute if entity @s[scores={AsaMatrix=7..12}] run tp @s ^0.00 ^-0.27 ^-0.25
execute if entity @s[scores={AsaMatrix=13..18}] run tp @s ^0.00 ^-0.28 ^-0.08
execute if entity @s[scores={AsaMatrix=19..25}] run tp @s ^0.00 ^0.04 ^-0.17

# 移動
    function asa_animator:reus/manager/4_general/rotate

# 演出
    execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:reus/manager/5_extra/change_to_fly
    execute if entity @s[scores={AsaMatrix=7}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
    execute if entity @s[scores={AsaMatrix=24}] run function asa_animator:reus/manager/5_extra/change_to_normal
    execute if entity @s[scores={AsaMatrix=18..20}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
    execute if entity @s[scores={AsaMatrix=18}] run playsound entity.hoglin.step master @a ~ ~ ~ 2 0.7

# 高度調整
    execute if entity @s[scores={AsaMatrix=19..25}] at @s if block ~ ~-0.2 ~ #asa_animator:no_collision at @s run function asa_animator:general/check_ground
    execute if entity @s[scores={AsaMatrix=19..25}] at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~

# Keyframe Functions
function asa_animator:reus/get_data
execute if entity @s[scores={AsaMatrix=..1}] run function asa_animator:reus/anim/bstep/keyframes/1
execute if entity @s[scores={AsaMatrix=2}] run function asa_animator:reus/anim/bstep/keyframes/2
execute if entity @s[scores={AsaMatrix=3}] run function asa_animator:reus/anim/bstep/keyframes/3
execute if entity @s[scores={AsaMatrix=4}] run function asa_animator:reus/anim/bstep/keyframes/4
execute if entity @s[scores={AsaMatrix=5}] run function asa_animator:reus/anim/bstep/keyframes/5
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:reus/anim/bstep/keyframes/6
execute if entity @s[scores={AsaMatrix=7}] run function asa_animator:reus/anim/bstep/keyframes/7
execute if entity @s[scores={AsaMatrix=8}] run function asa_animator:reus/anim/bstep/keyframes/8
execute if entity @s[scores={AsaMatrix=9}] run function asa_animator:reus/anim/bstep/keyframes/9
execute if entity @s[scores={AsaMatrix=10}] run function asa_animator:reus/anim/bstep/keyframes/10
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:reus/anim/bstep/keyframes/11
execute if entity @s[scores={AsaMatrix=12}] run function asa_animator:reus/anim/bstep/keyframes/12
execute if entity @s[scores={AsaMatrix=13}] run function asa_animator:reus/anim/bstep/keyframes/13
execute if entity @s[scores={AsaMatrix=14}] run function asa_animator:reus/anim/bstep/keyframes/14
execute if entity @s[scores={AsaMatrix=15}] run function asa_animator:reus/anim/bstep/keyframes/15
execute if entity @s[scores={AsaMatrix=16}] run function asa_animator:reus/anim/bstep/keyframes/16
execute if entity @s[scores={AsaMatrix=17}] run function asa_animator:reus/anim/bstep/keyframes/17
execute if entity @s[scores={AsaMatrix=18}] run function asa_animator:reus/anim/bstep/keyframes/18
execute if entity @s[scores={AsaMatrix=19}] run function asa_animator:reus/anim/bstep/keyframes/19
execute if entity @s[scores={AsaMatrix=20}] run function asa_animator:reus/anim/bstep/keyframes/20
execute if entity @s[scores={AsaMatrix=21}] run function asa_animator:reus/anim/bstep/keyframes/21
execute if entity @s[scores={AsaMatrix=22}] run function asa_animator:reus/anim/bstep/keyframes/22
execute if entity @s[scores={AsaMatrix=23}] run function asa_animator:reus/anim/bstep/keyframes/23
execute if entity @s[scores={AsaMatrix=24}] run function asa_animator:reus/anim/bstep/keyframes/24
execute if entity @s[scores={AsaMatrix=25..}] run function asa_animator:reus/anim/bstep/keyframes/25
execute if entity @s[scores={AsaMatrix=26..}] run function asa_animator:reus/anim/bstep/end
function asa_animator:reus/model
