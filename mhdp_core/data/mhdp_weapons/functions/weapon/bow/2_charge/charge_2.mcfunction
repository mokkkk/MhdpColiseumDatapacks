#> mhdp_weapons:weapon/bow/2_charge/charge_2
#
# 弓：溜め段階上昇

# 演出
    tag @s add WpnBowCharge2
    tag @s remove WpnBowCharge1
    playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1
    particle crit ^ ^1.65 ^0.5 0 0 0 1 5
