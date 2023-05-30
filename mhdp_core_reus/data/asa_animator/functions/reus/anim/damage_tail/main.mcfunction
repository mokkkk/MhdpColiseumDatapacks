# This function was generated by ArmorstandAnimator
# Main Functions
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1..8}] run tp @s ^0 ^0 ^0.35 ~-1 ~
execute if entity @s[scores={AsaMatrix=9..14}] run tp @s ^0 ^-0.025 ^0.2916667
execute if entity @s[scores={AsaMatrix=15..19}] run tp @s ^0 ^-0.03 ^0.05
execute if entity @s[scores={AsaMatrix=20..35}] run tp @s ^0 ^0 ^0.03749999 ~-1 ~
execute if entity @s[scores={AsaMatrix=36..44}] run tp @s ^0 ^0.01666667 ^-0.01666668 ~-6 ~
execute if entity @s[scores={AsaMatrix=45..55}] run tp @s ^0 ^0.01363636 ^0.004545472 ~-1 ~

# 演出
    execute if entity @s[scores={AsaMatrix=1..3}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
    execute if entity @s[scores={AsaMatrix=19}] run playsound entity.hoglin.step master @a ~ ~ ~ 2 0.7
    execute if entity @s[scores={AsaMatrix=19..21}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
    execute if entity @s[scores={AsaMatrix=35}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7

    execute if entity @s[scores={AsaMatrix=1..5}] run playsound entity.ravager.hurt master @a[distance=..48] ~ ~ ~ 0.5 0.7 0.5
    execute if entity @s[scores={AsaMatrix=1..5}] run playsound entity.ravager.attack master @a[distance=..48] ~ ~ ~ 0.5 0.82 0.5

# 高度調整
    execute at @s if block ~ ~-0.2 ~ #asa_animator:no_collision at @s run function asa_animator:general/check_ground
    execute at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~

# Keyframe Functions
function asa_animator:reus/get_data
execute if entity @s[scores={AsaMatrix=..1}] run function asa_animator:reus/anim/damage_tail/keyframes/1
execute if entity @s[scores={AsaMatrix=2}] run function asa_animator:reus/anim/damage_tail/keyframes/2
execute if entity @s[scores={AsaMatrix=3}] run function asa_animator:reus/anim/damage_tail/keyframes/3
execute if entity @s[scores={AsaMatrix=4}] run function asa_animator:reus/anim/damage_tail/keyframes/4
execute if entity @s[scores={AsaMatrix=5}] run function asa_animator:reus/anim/damage_tail/keyframes/5
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:reus/anim/damage_tail/keyframes/6
execute if entity @s[scores={AsaMatrix=7}] run function asa_animator:reus/anim/damage_tail/keyframes/7
execute if entity @s[scores={AsaMatrix=8}] run function asa_animator:reus/anim/damage_tail/keyframes/8
execute if entity @s[scores={AsaMatrix=9}] run function asa_animator:reus/anim/damage_tail/keyframes/9
execute if entity @s[scores={AsaMatrix=10}] run function asa_animator:reus/anim/damage_tail/keyframes/10
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:reus/anim/damage_tail/keyframes/11
execute if entity @s[scores={AsaMatrix=12}] run function asa_animator:reus/anim/damage_tail/keyframes/12
execute if entity @s[scores={AsaMatrix=13}] run function asa_animator:reus/anim/damage_tail/keyframes/13
execute if entity @s[scores={AsaMatrix=14}] run function asa_animator:reus/anim/damage_tail/keyframes/14
execute if entity @s[scores={AsaMatrix=15}] run function asa_animator:reus/anim/damage_tail/keyframes/15
execute if entity @s[scores={AsaMatrix=16}] run function asa_animator:reus/anim/damage_tail/keyframes/16
execute if entity @s[scores={AsaMatrix=17}] run function asa_animator:reus/anim/damage_tail/keyframes/17
execute if entity @s[scores={AsaMatrix=18}] run function asa_animator:reus/anim/damage_tail/keyframes/18
execute if entity @s[scores={AsaMatrix=19}] run function asa_animator:reus/anim/damage_tail/keyframes/19
execute if entity @s[scores={AsaMatrix=20}] run function asa_animator:reus/anim/damage_tail/keyframes/20
execute if entity @s[scores={AsaMatrix=21}] run function asa_animator:reus/anim/damage_tail/keyframes/21
execute if entity @s[scores={AsaMatrix=22}] run function asa_animator:reus/anim/damage_tail/keyframes/22
execute if entity @s[scores={AsaMatrix=23}] run function asa_animator:reus/anim/damage_tail/keyframes/23
execute if entity @s[scores={AsaMatrix=24}] run function asa_animator:reus/anim/damage_tail/keyframes/24
execute if entity @s[scores={AsaMatrix=25}] run function asa_animator:reus/anim/damage_tail/keyframes/25
execute if entity @s[scores={AsaMatrix=26}] run function asa_animator:reus/anim/damage_tail/keyframes/26
execute if entity @s[scores={AsaMatrix=27}] run function asa_animator:reus/anim/damage_tail/keyframes/27
execute if entity @s[scores={AsaMatrix=28}] run function asa_animator:reus/anim/damage_tail/keyframes/28
execute if entity @s[scores={AsaMatrix=29}] run function asa_animator:reus/anim/damage_tail/keyframes/29
execute if entity @s[scores={AsaMatrix=30}] run function asa_animator:reus/anim/damage_tail/keyframes/30
execute if entity @s[scores={AsaMatrix=31}] run function asa_animator:reus/anim/damage_tail/keyframes/31
execute if entity @s[scores={AsaMatrix=32}] run function asa_animator:reus/anim/damage_tail/keyframes/32
execute if entity @s[scores={AsaMatrix=33}] run function asa_animator:reus/anim/damage_tail/keyframes/33
execute if entity @s[scores={AsaMatrix=34}] run function asa_animator:reus/anim/damage_tail/keyframes/34
execute if entity @s[scores={AsaMatrix=35}] run function asa_animator:reus/anim/damage_tail/keyframes/35
execute if entity @s[scores={AsaMatrix=36}] run function asa_animator:reus/anim/damage_tail/keyframes/36
execute if entity @s[scores={AsaMatrix=37}] run function asa_animator:reus/anim/damage_tail/keyframes/37
execute if entity @s[scores={AsaMatrix=38}] run function asa_animator:reus/anim/damage_tail/keyframes/38
execute if entity @s[scores={AsaMatrix=39}] run function asa_animator:reus/anim/damage_tail/keyframes/39
execute if entity @s[scores={AsaMatrix=40}] run function asa_animator:reus/anim/damage_tail/keyframes/40
execute if entity @s[scores={AsaMatrix=41}] run function asa_animator:reus/anim/damage_tail/keyframes/41
execute if entity @s[scores={AsaMatrix=42}] run function asa_animator:reus/anim/damage_tail/keyframes/42
execute if entity @s[scores={AsaMatrix=43}] run function asa_animator:reus/anim/damage_tail/keyframes/43
execute if entity @s[scores={AsaMatrix=44}] run function asa_animator:reus/anim/damage_tail/keyframes/44
execute if entity @s[scores={AsaMatrix=45}] run function asa_animator:reus/anim/damage_tail/keyframes/45
execute if entity @s[scores={AsaMatrix=46}] run function asa_animator:reus/anim/damage_tail/keyframes/46
execute if entity @s[scores={AsaMatrix=47}] run function asa_animator:reus/anim/damage_tail/keyframes/47
execute if entity @s[scores={AsaMatrix=48}] run function asa_animator:reus/anim/damage_tail/keyframes/48
execute if entity @s[scores={AsaMatrix=49}] run function asa_animator:reus/anim/damage_tail/keyframes/49
execute if entity @s[scores={AsaMatrix=50}] run function asa_animator:reus/anim/damage_tail/keyframes/50
execute if entity @s[scores={AsaMatrix=51}] run function asa_animator:reus/anim/damage_tail/keyframes/51
execute if entity @s[scores={AsaMatrix=52}] run function asa_animator:reus/anim/damage_tail/keyframes/52
execute if entity @s[scores={AsaMatrix=53}] run function asa_animator:reus/anim/damage_tail/keyframes/53
execute if entity @s[scores={AsaMatrix=54}] run function asa_animator:reus/anim/damage_tail/keyframes/54
execute if entity @s[scores={AsaMatrix=55..}] run function asa_animator:reus/anim/damage_tail/keyframes/55
execute if entity @s[scores={AsaMatrix=56..}] run function asa_animator:reus/anim/damage_tail/end
function asa_animator:reus/model