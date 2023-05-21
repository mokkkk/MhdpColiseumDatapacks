# This function was generated by ArmorstandAnimator
# Main Functions
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0.00 ^0.00 ^0.00 ~1.5 ~
execute if entity @s[scores={AsaMatrix=6..19}] run tp @s ^0.00 ^0.00 ^0.00 ~0.7 ~
execute if entity @s[scores={AsaMatrix=20..30}] run tp @s ^0.00 ^0.03 ^-0.04
execute if entity @s[scores={AsaMatrix=31..36}] run tp @s ^0.00 ^0.01 ^-0.03 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=37..40}] run tp @s ^0.00 ^0.01 ^-0.02 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=41..45}] run tp @s ^0.00 ^0.00 ^-0.02 ~-0.5 ~

# 高度調整
    execute if entity @s[scores={AsaMatrix=31..}] if block ~ ~-0.2 ~ #asa_animator:no_collision run function asa_animator:general/check_ground
    execute if entity @s[scores={AsaMatrix=31..}] unless block ~ ~ ~ #asa_animator:no_collision run tp @s ~ ~0.1 ~ ~ ~

# 演出
    execute if entity @s[scores={AsaMatrix=20}] run function asa_animator:zinogre/manager/5_extra/step

# Keyframe Functions
function asa_animator:zinogre/get_data
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:zinogre/anim/hand_l_end/keyframes/1
execute if entity @s[scores={AsaMatrix=2}] run function asa_animator:zinogre/anim/hand_l_end/keyframes/2
execute if entity @s[scores={AsaMatrix=3}] run function asa_animator:zinogre/anim/hand_l_end/keyframes/3
execute if entity @s[scores={AsaMatrix=4}] run function asa_animator:zinogre/anim/hand_l_end/keyframes/4
execute if entity @s[scores={AsaMatrix=5}] run function asa_animator:zinogre/anim/hand_l_end/keyframes/5
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:zinogre/anim/hand_l_end/keyframes/6
execute if entity @s[scores={AsaMatrix=7}] run function asa_animator:zinogre/anim/hand_l_end/keyframes/7
execute if entity @s[scores={AsaMatrix=8}] run function asa_animator:zinogre/anim/hand_l_end/keyframes/8
execute if entity @s[scores={AsaMatrix=9}] run function asa_animator:zinogre/anim/hand_l_end/keyframes/9
execute if entity @s[scores={AsaMatrix=10}] run function asa_animator:zinogre/anim/hand_l_end/keyframes/10
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:zinogre/anim/hand_l_end/keyframes/11
execute if entity @s[scores={AsaMatrix=12}] run function asa_animator:zinogre/anim/hand_l_end/keyframes/12
execute if entity @s[scores={AsaMatrix=13}] run function asa_animator:zinogre/anim/hand_l_end/keyframes/13
execute if entity @s[scores={AsaMatrix=14}] run function asa_animator:zinogre/anim/hand_l_end/keyframes/14
execute if entity @s[scores={AsaMatrix=15}] run function asa_animator:zinogre/anim/hand_l_end/keyframes/15
execute if entity @s[scores={AsaMatrix=16}] run function asa_animator:zinogre/anim/hand_l_end/keyframes/16
execute if entity @s[scores={AsaMatrix=17}] run function asa_animator:zinogre/anim/hand_l_end/keyframes/17
execute if entity @s[scores={AsaMatrix=18}] run function asa_animator:zinogre/anim/hand_l_end/keyframes/18
execute if entity @s[scores={AsaMatrix=19}] run function asa_animator:zinogre/anim/hand_l_end/keyframes/19
execute if entity @s[scores={AsaMatrix=20}] run function asa_animator:zinogre/anim/hand_l_end/keyframes/20
execute if entity @s[scores={AsaMatrix=21}] run function asa_animator:zinogre/anim/hand_l_end/keyframes/21
execute if entity @s[scores={AsaMatrix=22}] run function asa_animator:zinogre/anim/hand_l_end/keyframes/22
execute if entity @s[scores={AsaMatrix=23}] run function asa_animator:zinogre/anim/hand_l_end/keyframes/23
execute if entity @s[scores={AsaMatrix=24}] run function asa_animator:zinogre/anim/hand_l_end/keyframes/24
execute if entity @s[scores={AsaMatrix=25}] run function asa_animator:zinogre/anim/hand_l_end/keyframes/25
execute if entity @s[scores={AsaMatrix=26}] run function asa_animator:zinogre/anim/hand_l_end/keyframes/26
execute if entity @s[scores={AsaMatrix=27}] run function asa_animator:zinogre/anim/hand_l_end/keyframes/27
execute if entity @s[scores={AsaMatrix=28}] run function asa_animator:zinogre/anim/hand_l_end/keyframes/28
execute if entity @s[scores={AsaMatrix=29}] run function asa_animator:zinogre/anim/hand_l_end/keyframes/29
execute if entity @s[scores={AsaMatrix=30}] run function asa_animator:zinogre/anim/hand_l_end/keyframes/30
execute if entity @s[scores={AsaMatrix=31}] run function asa_animator:zinogre/anim/hand_l_end/keyframes/31
execute if entity @s[scores={AsaMatrix=32}] run function asa_animator:zinogre/anim/hand_l_end/keyframes/32
execute if entity @s[scores={AsaMatrix=33}] run function asa_animator:zinogre/anim/hand_l_end/keyframes/33
execute if entity @s[scores={AsaMatrix=34}] run function asa_animator:zinogre/anim/hand_l_end/keyframes/34
execute if entity @s[scores={AsaMatrix=35}] run function asa_animator:zinogre/anim/hand_l_end/keyframes/35
execute if entity @s[scores={AsaMatrix=36}] run function asa_animator:zinogre/anim/hand_l_end/keyframes/36
execute if entity @s[scores={AsaMatrix=37}] run function asa_animator:zinogre/anim/hand_l_end/keyframes/37
execute if entity @s[scores={AsaMatrix=38}] run function asa_animator:zinogre/anim/hand_l_end/keyframes/38
execute if entity @s[scores={AsaMatrix=39}] run function asa_animator:zinogre/anim/hand_l_end/keyframes/39
execute if entity @s[scores={AsaMatrix=40}] run function asa_animator:zinogre/anim/hand_l_end/keyframes/40
execute if entity @s[scores={AsaMatrix=41}] run function asa_animator:zinogre/anim/hand_l_end/keyframes/41
execute if entity @s[scores={AsaMatrix=42}] run function asa_animator:zinogre/anim/hand_l_end/keyframes/42
execute if entity @s[scores={AsaMatrix=43}] run function asa_animator:zinogre/anim/hand_l_end/keyframes/43
execute if entity @s[scores={AsaMatrix=44}] run function asa_animator:zinogre/anim/hand_l_end/keyframes/44
execute if entity @s[scores={AsaMatrix=45..}] run function asa_animator:zinogre/anim/hand_l_end/keyframes/45
function asa_animator:zinogre/model
execute if entity @s[scores={AsaMatrix=46..}] run function asa_animator:zinogre/anim/hand_l_end/end
