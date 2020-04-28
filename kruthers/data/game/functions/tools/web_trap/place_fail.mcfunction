#--called by gane:tools/web_trap/place
#--ran to remove the trap if it could not be placed
#--@s = aec which is the web trap
execute at @s run tag @a[scores={egg_place=1},sort=nearest] add user

playsound minecraft:block.note_block.bit block @a[tag=user] ~ ~ ~ 1000 0
title @a[tag=user] actionbar {"text":"You can't place a web trap here","color":"red","bold":"true"}

execute as @a[gamemode=adventure,tag=user] run function debug:web_trap

scoreboard players set @a[tag=user] egg_place 0

tag @a[tag=user] remove user
