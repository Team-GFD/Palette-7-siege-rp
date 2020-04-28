#called by game:rescue/has_emerald
#called when the player who has the emerald died
#@s = player with emerald
#update tags
execute as @e[type=armor_stand,tag=emerald] run tag @s remove capped
execute as @e[type=armor_stand,tag=emerald] run data merge entity @s {Small:0,Glowing:0}
tag @s remove has_emerald

#tp it down
execute as @e[type=armor_stand,tag=emerald] at @s run tp ~ ~-1 ~

#clear effetcs
effect clear @s slowness
effect clear @s weakness
effect clear @s glowing

#update message
tellraw @a ["",{"selector":"@s"},{"text":" has dropped emerald!","color":"dark_red"}]
