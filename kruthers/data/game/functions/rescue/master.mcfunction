#--called by a master game functions
#--runs the core mechanics for the rescue gamemode

#emerald handling (un capped)
execute as @e[type=armor_stand,tag=emerald,tag=!capped] at @s run function game:rescue/emerald_handling

#capture dection
execute as @e[type=armor_stand,tag=emerald,tag=!capped] at @s if entity @a[distance=..1.5,team=red,gamemode=adventure] run function game:rescue/capture_check

#player handling (if they have the emerald)
execute as @a[tag=has_emerald,team=red] at @s run function game:rescue/has_emerald


