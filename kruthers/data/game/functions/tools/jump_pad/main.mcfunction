#--called by gane:main
#--ran as jump pads
#--@s = aec which is the jump pad
execute at @e[type=area_effect_cloud,tag=jump_pad,tag=active] align xyz as @a[dx=0,dy=4,dz=0,gamemode=adventure] run tag @s add on_jump_pad
effect give @a[tag=on_jump_pad] minecraft:jump_boost 1 4 true
execute as @a[tag=on_jump_pad] at @s positioned ~-0.5 ~ ~-0.5 unless entity @e[type=area_effect_cloud,tag=jump_pad,tag=active,dx=1,dy=-4,dz=1] run effect clear @s minecraft:jump_boost
execute as @a[tag=on_jump_pad] at @s positioned ~-0.5 ~ ~-0.5 unless entity @e[type=area_effect_cloud,tag=jump_pad,tag=active,dx=1,dy=-4,dz=1] run tag @s remove on_jump_pad

#check dlock
execute as @e[type=area_effect_cloud,tag=jump_pad,tag=active] at @s unless block ~ ~ ~ minecraft:dark_prismarine_slab run kill @s
