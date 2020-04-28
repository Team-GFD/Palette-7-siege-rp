#--called by gane:main
#--ran as cactus traps
#--@s = aec which is the cactus traps
#effetcs
execute at @e[type=area_effect_cloud,tag=cactus_trap,tag=active] as @a[distance=..1.35,gamemode=adventure,team=red] run tag @s add on_cactus_trap
tag @a[tag=on_cactus_trap,tag=on_web_trap] remove on_web_trap
effect give @a[tag=on_cactus_trap] minecraft:blindness 3 1 true
effect give @a[tag=on_cactus_trap] minecraft:wither 2 0 true
effect give @a[tag=on_cactus_trap] minecraft:slowness 1 5 true
effect give @a[tag=on_cactus_trap] minecraft:jump_boost 1 227 true
execute as @a[tag=on_cactus_trap] at @s unless entity @e[type=area_effect_cloud,tag=cactus_trap,tag=active,distance=..1.35] run effect clear @s blindness
execute as @a[tag=on_cactus_trap] at @s unless entity @e[type=area_effect_cloud,tag=cactus_trap,tag=active,distance=..1.35] run effect clear @s wither
execute as @a[tag=on_cactus_trap] at @s unless entity @e[type=area_effect_cloud,tag=cactus_trap,tag=active,distance=..1.35] run tag @s remove on_cactus_trap

#check dlock
execute as @e[type=area_effect_cloud,tag=cactus_trap,tag=active] at @s unless block ~ ~ ~ minecraft:white_carpet run kill @s
