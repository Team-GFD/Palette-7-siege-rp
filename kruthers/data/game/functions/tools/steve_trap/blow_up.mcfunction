#--called by game:tools/steve_trap/main
#--called to blow up the trap
#--@s = aec which is the steve traps
tellraw @a ["",{"text":"bomb!","bold":true,"color":"dark_red"}]

setblock ~ ~ ~ air

kill @s
