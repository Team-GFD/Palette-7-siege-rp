#--called by gane:main
#--ran to place and setup a jump pad
#--@s = aec which is the jump pad
#checks if it can be placed
execute unless block ~ ~ ~ #game:no_collide run tag @s add no_place
execute if block ~ ~-1 ~ #minecraft:slab[type=top] run tag @s add no_place
execute unless block ~ ~-1 ~ #game:jump_pad_solid run tag @s add no_place

#places jump pad or fails it
execute as @s[tag=no_place] run function game:tools/jump_pad/place_fail
execute as @s[tag=!no_place] run setblock ~ ~ ~ minecraft:dark_prismarine_slab destroy
execute as @s[tag=!no_place] run summon area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["jump_pad","active"]}
execute as @s[tag=!no_place] run playsound minecraft:block.slime_block.place block @a[distance=..10] ~ ~ ~ 0.5

#kills the aec
kill @s
