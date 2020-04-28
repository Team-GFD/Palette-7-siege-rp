#--called by gane:main
#--ran as web traps
#--@s = aec which is the web traps
#effetcs
execute at @e[type=area_effect_cloud,tag=web_trap,tag=active] as @a[distance=..1.35,gamemode=adventure,team=red,tag=!on_cactus_trap] run tag @s add on_web_trap
effect give @a[tag=on_web_trap] minecraft:slowness 1 4 true
effect give @a[tag=on_web_trap] minecraft:jump_boost 1 252 true
execute as @a[tag=on_web_trap] at @s unless entity @e[type=area_effect_cloud,tag=web_trap,tag=active,distance=..1.35] run tag @s remove on_web_trap

#check dlock
execute as @e[type=area_effect_cloud,tag=web_trap,tag=active] at @s unless block ~ ~ ~ minecraft:powered_rail run kill @s
