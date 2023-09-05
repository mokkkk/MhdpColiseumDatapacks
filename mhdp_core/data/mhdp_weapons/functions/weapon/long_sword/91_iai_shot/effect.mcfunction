#> mhdp_weapons:weapon/long_sword/91_iai_shot/effect
#
# 居合抜刀気刃斬りの処理 攻撃
#

# 演出
    function mhdp_weapons:weapon/long_sword/10_kabuto/attack_particle
    particle flash ~ ~ ~ 0.5 0.5 0.5 0 10
    playsound item.trident.return master @a ~ ~ ~ 1 1.2
    playsound item.trident.return master @a ~ ~ ~ 1 1.5
    playsound item.trident.return master @a ~ ~ ~ 1 1.8
    playsound item.axe.wax_off master @a ~ ~ ~ 1 1.5
    playsound item.axe.wax_off master @a ~ ~ ~ 1 2