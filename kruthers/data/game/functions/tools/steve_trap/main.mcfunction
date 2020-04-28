#--called by gane:main
#--ran as steve traps
#detection
execute as @e[type=area_effect_cloud,tag=steve_trap,tag=active] at @s align xyz if entity @a[dx=0,dy=1,dz=0,gamemode=adventure,team=red] run function game:tools/steve_trap/blow_up


#check block
execute as @e[type=area_effect_cloud,tag=steve_trap,tag=active] at @s unless block ~ ~ ~ minecraft:acacia_pressure_plate run kill @s
