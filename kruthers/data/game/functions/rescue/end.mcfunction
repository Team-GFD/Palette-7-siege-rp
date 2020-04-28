#THIS IS A TEMPORY FILE
#TO BE REPLACED
#CALLED WHEN EMERALD IS RETURNED
#--called by: game:rescue/returning
#remove tag from player
tag @s remove has_emerald

#kill stand
kill @e[type=armor_stand,tag=emerald]

#clear effetcs
effect clear @s slowness
effect clear @s weakness
effect clear @s glowing

tellraw @a ["",{"text":"red have won?","bold":true,"color":"gold"}]
