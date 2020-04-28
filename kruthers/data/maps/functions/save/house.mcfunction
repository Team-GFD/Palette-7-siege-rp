#--called to save the house map--#
#--called by player (no parent)--#
#change the structure block to save mode
data merge block 269 61 27 {mode:"SAVE"}
data merge block 269 61 59 {mode:"SAVE"}
data merge block 301 61 27 {mode:"SAVE"}
data merge block 301 61 59 {mode:"SAVE"}

#set redstone blocks above them to trigger them
setblock 269 62 27 redstone_block
setblock 269 62 59 redstone_block
setblock 301 62 27 redstone_block
setblock 301 62 59 redstone_block

#replace redstone blocks with stone to depower them
setblock 269 62 27 stone
setblock 269 62 59 stone
setblock 301 62 27 stone
setblock 301 62 59 stone

#change the structure blocks to load to allow them map to be loaded
data merge block 269 61 27 {mode:"LOAD"}
data merge block 269 61 59 {mode:"LOAD"}
data merge block 301 61 27 {mode:"LOAD"}
data merge block 301 61 59 {mode:"LOAD"}
