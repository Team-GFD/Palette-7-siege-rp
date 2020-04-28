#--called by game:rescue/master
#--handels the player with the emerald
#--@s = player with emerald
#check if there returning it
execute if entity @e[type=area_effect_cloud,tag=return_point,distance=..2.3] run scoreboard players add @s emerald_caping 1
execute if entity @e[type=area_effect_cloud,tag=return_point,distance=..2.3] if score @s emerald_caping matches 60.. run function game:rescue/end

#tp the emerald abover the players head
execute if score @s sneaking matches 1 run tp @e[type=armor_stand,tag=emerald] ~ ~1.75 ~
execute if score @s sneaking matches 0 run tp @e[type=armor_stand,tag=emerald] ~ ~2.05 ~

#check if they died
execute as @s[tag=dead] run function game:rescue/drop_emerald
