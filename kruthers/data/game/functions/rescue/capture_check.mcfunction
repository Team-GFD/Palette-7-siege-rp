#called by game:rescue/master
#ran when there a an attacker close to the emerald
#@s = the emerald armour stand
execute as @a[scores={emerald_caping=1..}] unless entity @s[scores={sneaking=1},distance=..0.5] run scoreboard players reset @s emerald_caping
execute as @a[distance=..0.5,scores={sneaking=1},team=red,gamemode=adventure] run scoreboard players add @s emerald_caping 1
execute as @a[distance=..0.5,scores={emerald_caping=50..},limit=1] if score @s emerald_caping >= emerald_capture_time game run function game:rescue/capture
