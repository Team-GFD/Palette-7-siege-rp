#--called by game:rescue/has_emerald
#--called when the player who has the emerald died
#--@s = player with emerald
scoreboard players add #rotation emerald_caping 1
execute if score #rotation emerald_caping matches 180.. run scoreboard players remove #rotation emerald_caping 360
execute store result entity f40ab9f4-163f-4cfe-9f15-700deded0403 Rotation[0] float 1 run scoreboard players get #rotation emerald_caping
