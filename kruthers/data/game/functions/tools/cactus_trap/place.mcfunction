#--called by gane:main
#--ran to place and setup a cactus trap
#--@s = aec which is the cactus trap
#checks if it can be placed
execute unless block ~ ~ ~ #game:no_collide run tag @s add no_place
execute as @s[tag=no_place] run function game:tools/cactus_trap/place_fail

#place pad
execute as @s[tag=!no_place] run setblock ~ ~ ~ minecraft:white_carpet destroy
execute as @s[tag=!no_place] run summon area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["cactus_trap","active"]}
execute as @s[tag=!no_place] run playsound minecraft:block.wool.place block @a[distance=..10] ~ ~ ~ 0.5

#kills the aec
kill @s
