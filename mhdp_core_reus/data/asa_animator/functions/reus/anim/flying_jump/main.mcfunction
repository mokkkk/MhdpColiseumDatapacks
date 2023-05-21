# This function was generated by ArmorstandAnimator
# Main Functions
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1..6}] run tp @s ^0 ^1.2 ^-0.1
execute if entity @s[scores={AsaMatrix=7..11}] run tp @s ^0 ^0.8 ^0.04
execute if entity @s[scores={AsaMatrix=12..17}] run tp @s ^0 ^0.4 ^0.03333334
execute if entity @s[scores={AsaMatrix=18..23}] run tp @s ^0 ^0.2 ^0
execute if entity @s[scores={AsaMatrix=24..39}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=40..44}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=45..67}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=68..76}] run tp @s ^0 ^0.02222222 ^0
execute if entity @s[scores={AsaMatrix=77..83}] run tp @s ^0 ^0.01428571 ^0
execute if entity @s[scores={AsaMatrix=84..97}] run tp @s ^0 ^0.003571429 ^0
execute if entity @s[scores={AsaMatrix=98..110}] run tp @s ^0 ^0.003846154 ^0

# 移動
    execute if entity @s[scores={AsaMatrix=1..20}] run function asa_animator:reus/manager/4_general/rotate
    execute if entity @s[scores={AsaMatrix=24}] run function asa_animator:reus/anim/flying_jump/events/pos/set_pos
    execute if entity @s[scores={AsaMatrix=34..44}] run function asa_animator:reus/anim/flying_jump/events/pos/offset

# 演出
    execute if entity @s[scores={AsaMatrix=6}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
    execute if entity @s[scores={AsaMatrix=17}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
    execute if entity @s[scores={AsaMatrix=76}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
    execute if entity @s[scores={AsaMatrix=76}] run function asa_animator:reus/manager/5_extra/change_to_normal

# 攻撃
    execute if entity @s[scores={AsaMatrix=44}] positioned ^ ^ ^1 run function asa_animator:reus/anim/jump/events/damage

# 高度調整
    execute if entity @s[scores={AsaMatrix=83..}] at @s if block ~ ~-0.2 ~ #asa_animator:no_collision at @s run function asa_animator:general/check_ground
    execute if entity @s[scores={AsaMatrix=83..}] at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~

# Keyframe Functions
function asa_animator:reus/get_data
execute if entity @s[scores={AsaMatrix=..1}] run function asa_animator:reus/anim/flying_jump/keyframes/1
execute if entity @s[scores={AsaMatrix=2}] run function asa_animator:reus/anim/flying_jump/keyframes/2
execute if entity @s[scores={AsaMatrix=3}] run function asa_animator:reus/anim/flying_jump/keyframes/3
execute if entity @s[scores={AsaMatrix=4}] run function asa_animator:reus/anim/flying_jump/keyframes/4
execute if entity @s[scores={AsaMatrix=5}] run function asa_animator:reus/anim/flying_jump/keyframes/5
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:reus/anim/flying_jump/keyframes/6
execute if entity @s[scores={AsaMatrix=7}] run function asa_animator:reus/anim/flying_jump/keyframes/7
execute if entity @s[scores={AsaMatrix=8}] run function asa_animator:reus/anim/flying_jump/keyframes/8
execute if entity @s[scores={AsaMatrix=9}] run function asa_animator:reus/anim/flying_jump/keyframes/9
execute if entity @s[scores={AsaMatrix=10}] run function asa_animator:reus/anim/flying_jump/keyframes/10
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:reus/anim/flying_jump/keyframes/11
execute if entity @s[scores={AsaMatrix=12}] run function asa_animator:reus/anim/flying_jump/keyframes/12
execute if entity @s[scores={AsaMatrix=13}] run function asa_animator:reus/anim/flying_jump/keyframes/13
execute if entity @s[scores={AsaMatrix=14}] run function asa_animator:reus/anim/flying_jump/keyframes/14
execute if entity @s[scores={AsaMatrix=15}] run function asa_animator:reus/anim/flying_jump/keyframes/15
execute if entity @s[scores={AsaMatrix=16}] run function asa_animator:reus/anim/flying_jump/keyframes/16
execute if entity @s[scores={AsaMatrix=17}] run function asa_animator:reus/anim/flying_jump/keyframes/17
execute if entity @s[scores={AsaMatrix=18}] run function asa_animator:reus/anim/flying_jump/keyframes/18
execute if entity @s[scores={AsaMatrix=19}] run function asa_animator:reus/anim/flying_jump/keyframes/19
execute if entity @s[scores={AsaMatrix=20}] run function asa_animator:reus/anim/flying_jump/keyframes/20
execute if entity @s[scores={AsaMatrix=21}] run function asa_animator:reus/anim/flying_jump/keyframes/21
execute if entity @s[scores={AsaMatrix=22}] run function asa_animator:reus/anim/flying_jump/keyframes/22
execute if entity @s[scores={AsaMatrix=23}] run function asa_animator:reus/anim/flying_jump/keyframes/23
execute if entity @s[scores={AsaMatrix=24}] run function asa_animator:reus/anim/flying_jump/keyframes/24
execute if entity @s[scores={AsaMatrix=25}] run function asa_animator:reus/anim/flying_jump/keyframes/25
execute if entity @s[scores={AsaMatrix=26}] run function asa_animator:reus/anim/flying_jump/keyframes/26
execute if entity @s[scores={AsaMatrix=27}] run function asa_animator:reus/anim/flying_jump/keyframes/27
execute if entity @s[scores={AsaMatrix=28}] run function asa_animator:reus/anim/flying_jump/keyframes/28
execute if entity @s[scores={AsaMatrix=29}] run function asa_animator:reus/anim/flying_jump/keyframes/29
execute if entity @s[scores={AsaMatrix=30}] run function asa_animator:reus/anim/flying_jump/keyframes/30
execute if entity @s[scores={AsaMatrix=31}] run function asa_animator:reus/anim/flying_jump/keyframes/31
execute if entity @s[scores={AsaMatrix=32}] run function asa_animator:reus/anim/flying_jump/keyframes/32
execute if entity @s[scores={AsaMatrix=33}] run function asa_animator:reus/anim/flying_jump/keyframes/33
execute if entity @s[scores={AsaMatrix=34}] run function asa_animator:reus/anim/flying_jump/keyframes/34
execute if entity @s[scores={AsaMatrix=35}] run function asa_animator:reus/anim/flying_jump/keyframes/35
execute if entity @s[scores={AsaMatrix=36}] run function asa_animator:reus/anim/flying_jump/keyframes/36
execute if entity @s[scores={AsaMatrix=37}] run function asa_animator:reus/anim/flying_jump/keyframes/37
execute if entity @s[scores={AsaMatrix=38}] run function asa_animator:reus/anim/flying_jump/keyframes/38
execute if entity @s[scores={AsaMatrix=39}] run function asa_animator:reus/anim/flying_jump/keyframes/39
execute if entity @s[scores={AsaMatrix=40}] run function asa_animator:reus/anim/flying_jump/keyframes/40
execute if entity @s[scores={AsaMatrix=41}] run function asa_animator:reus/anim/flying_jump/keyframes/41
execute if entity @s[scores={AsaMatrix=42}] run function asa_animator:reus/anim/flying_jump/keyframes/42
execute if entity @s[scores={AsaMatrix=43}] run function asa_animator:reus/anim/flying_jump/keyframes/43
execute if entity @s[scores={AsaMatrix=44}] run function asa_animator:reus/anim/flying_jump/keyframes/44
execute if entity @s[scores={AsaMatrix=45}] run function asa_animator:reus/anim/flying_jump/keyframes/45
execute if entity @s[scores={AsaMatrix=46}] run function asa_animator:reus/anim/flying_jump/keyframes/46
execute if entity @s[scores={AsaMatrix=47}] run function asa_animator:reus/anim/flying_jump/keyframes/47
execute if entity @s[scores={AsaMatrix=48}] run function asa_animator:reus/anim/flying_jump/keyframes/48
execute if entity @s[scores={AsaMatrix=49}] run function asa_animator:reus/anim/flying_jump/keyframes/49
execute if entity @s[scores={AsaMatrix=50}] run function asa_animator:reus/anim/flying_jump/keyframes/50
execute if entity @s[scores={AsaMatrix=51}] run function asa_animator:reus/anim/flying_jump/keyframes/51
execute if entity @s[scores={AsaMatrix=52}] run function asa_animator:reus/anim/flying_jump/keyframes/52
execute if entity @s[scores={AsaMatrix=53}] run function asa_animator:reus/anim/flying_jump/keyframes/53
execute if entity @s[scores={AsaMatrix=54}] run function asa_animator:reus/anim/flying_jump/keyframes/54
execute if entity @s[scores={AsaMatrix=55}] run function asa_animator:reus/anim/flying_jump/keyframes/55
execute if entity @s[scores={AsaMatrix=56}] run function asa_animator:reus/anim/flying_jump/keyframes/56
execute if entity @s[scores={AsaMatrix=57}] run function asa_animator:reus/anim/flying_jump/keyframes/57
execute if entity @s[scores={AsaMatrix=58}] run function asa_animator:reus/anim/flying_jump/keyframes/58
execute if entity @s[scores={AsaMatrix=59}] run function asa_animator:reus/anim/flying_jump/keyframes/59
execute if entity @s[scores={AsaMatrix=60}] run function asa_animator:reus/anim/flying_jump/keyframes/60
execute if entity @s[scores={AsaMatrix=61}] run function asa_animator:reus/anim/flying_jump/keyframes/61
execute if entity @s[scores={AsaMatrix=62}] run function asa_animator:reus/anim/flying_jump/keyframes/62
execute if entity @s[scores={AsaMatrix=63}] run function asa_animator:reus/anim/flying_jump/keyframes/63
execute if entity @s[scores={AsaMatrix=64}] run function asa_animator:reus/anim/flying_jump/keyframes/64
execute if entity @s[scores={AsaMatrix=65}] run function asa_animator:reus/anim/flying_jump/keyframes/65
execute if entity @s[scores={AsaMatrix=66}] run function asa_animator:reus/anim/flying_jump/keyframes/66
execute if entity @s[scores={AsaMatrix=67}] run function asa_animator:reus/anim/flying_jump/keyframes/67
execute if entity @s[scores={AsaMatrix=68}] run function asa_animator:reus/anim/flying_jump/keyframes/68
execute if entity @s[scores={AsaMatrix=69}] run function asa_animator:reus/anim/flying_jump/keyframes/69
execute if entity @s[scores={AsaMatrix=70}] run function asa_animator:reus/anim/flying_jump/keyframes/70
execute if entity @s[scores={AsaMatrix=71}] run function asa_animator:reus/anim/flying_jump/keyframes/71
execute if entity @s[scores={AsaMatrix=72}] run function asa_animator:reus/anim/flying_jump/keyframes/72
execute if entity @s[scores={AsaMatrix=73}] run function asa_animator:reus/anim/flying_jump/keyframes/73
execute if entity @s[scores={AsaMatrix=74}] run function asa_animator:reus/anim/flying_jump/keyframes/74
execute if entity @s[scores={AsaMatrix=75}] run function asa_animator:reus/anim/flying_jump/keyframes/75
execute if entity @s[scores={AsaMatrix=76}] run function asa_animator:reus/anim/flying_jump/keyframes/76
execute if entity @s[scores={AsaMatrix=77}] run function asa_animator:reus/anim/flying_jump/keyframes/77
execute if entity @s[scores={AsaMatrix=78}] run function asa_animator:reus/anim/flying_jump/keyframes/78
execute if entity @s[scores={AsaMatrix=79}] run function asa_animator:reus/anim/flying_jump/keyframes/79
execute if entity @s[scores={AsaMatrix=80}] run function asa_animator:reus/anim/flying_jump/keyframes/80
execute if entity @s[scores={AsaMatrix=81}] run function asa_animator:reus/anim/flying_jump/keyframes/81
execute if entity @s[scores={AsaMatrix=82}] run function asa_animator:reus/anim/flying_jump/keyframes/82
execute if entity @s[scores={AsaMatrix=83}] run function asa_animator:reus/anim/flying_jump/keyframes/83
execute if entity @s[scores={AsaMatrix=84}] run function asa_animator:reus/anim/flying_jump/keyframes/84
execute if entity @s[scores={AsaMatrix=85}] run function asa_animator:reus/anim/flying_jump/keyframes/85
execute if entity @s[scores={AsaMatrix=86}] run function asa_animator:reus/anim/flying_jump/keyframes/86
execute if entity @s[scores={AsaMatrix=87}] run function asa_animator:reus/anim/flying_jump/keyframes/87
execute if entity @s[scores={AsaMatrix=88}] run function asa_animator:reus/anim/flying_jump/keyframes/88
execute if entity @s[scores={AsaMatrix=89}] run function asa_animator:reus/anim/flying_jump/keyframes/89
execute if entity @s[scores={AsaMatrix=90}] run function asa_animator:reus/anim/flying_jump/keyframes/90
execute if entity @s[scores={AsaMatrix=91}] run function asa_animator:reus/anim/flying_jump/keyframes/91
execute if entity @s[scores={AsaMatrix=92}] run function asa_animator:reus/anim/flying_jump/keyframes/92
execute if entity @s[scores={AsaMatrix=93}] run function asa_animator:reus/anim/flying_jump/keyframes/93
execute if entity @s[scores={AsaMatrix=94}] run function asa_animator:reus/anim/flying_jump/keyframes/94
execute if entity @s[scores={AsaMatrix=95}] run function asa_animator:reus/anim/flying_jump/keyframes/95
execute if entity @s[scores={AsaMatrix=96}] run function asa_animator:reus/anim/flying_jump/keyframes/96
execute if entity @s[scores={AsaMatrix=97}] run function asa_animator:reus/anim/flying_jump/keyframes/97
execute if entity @s[scores={AsaMatrix=98}] run function asa_animator:reus/anim/flying_jump/keyframes/98
execute if entity @s[scores={AsaMatrix=99}] run function asa_animator:reus/anim/flying_jump/keyframes/99
execute if entity @s[scores={AsaMatrix=100..}] run function asa_animator:reus/anim/flying_jump/keyframes/100
execute if entity @s[scores={AsaMatrix=101..}] run function asa_animator:reus/anim/flying_jump/end
function asa_animator:reus/model
