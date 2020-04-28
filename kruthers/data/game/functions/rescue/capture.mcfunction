#called by game:rescue/capture_check
#ran when there a an attacker takes the emerald
#@s = the player who captured the emerald
#sort out tags
execute as @e[type=armor_stand,tag=emerald] run tag @s add capped
execute as @e[type=armor_stand,tag=emerald] run data merge entity @s {Small:1,Glowing:1b}
tag @s add has_emerald

#give effects
effect give @s slowness 1000000 1 true
effect give @s weakness 1000000 1 true
effect give @s glowing 1000000 0 true

#reset scores
scoreboard players reset @a emerald_caping

#update message
tellraw @a ["",{"selector":"@s"},{"text":" has the emerald!","color":"dark_red"}]
