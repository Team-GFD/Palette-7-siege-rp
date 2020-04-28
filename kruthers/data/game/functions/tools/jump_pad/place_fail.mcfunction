#--called by gane:tools/jump_pad/place
#--ran to remove the pad if it could not be placed
#--@s = aec which is the jump pad
execute at @s run tag @a[scores={egg_place=1},sort=nearest] add user

playsound minecraft:block.note_block.bit block @a[tag=user] ~ ~ ~ 1000 0
title @a[tag=user] actionbar {"text":"You can't place a jump pad here","color":"red","bold":"true"}

execute as @a[gamemode=adventure,tag=user] run function debug:jump_pad

scoreboard players set @a[tag=user] egg_place 0

tag @a[tag=user] remove user
