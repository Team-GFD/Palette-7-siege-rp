#--called by gane:main
#--ran to place and setup a steve trap
#--@s = aec which is the steve trap
#checks if it can be placed
execute unless block ~ ~ ~ #game:no_collide run tag @s add no_place
execute as @s[tag=no_place] run function game:tools/steve_trap/place_fail

#place pad
execute as @s[tag=!no_place] run setblock ~ ~ ~ minecraft:white_carpet destroy
execute as @s[tag=!no_place] run summon area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["steve_trap","active"]}
execute as @s[tag=!no_place] run playsound minecraft:block.tnt.place block @a[distance=..10] ~ ~ ~ 0.5

#kills the aec
kill @s
