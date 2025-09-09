scoreboard players set #distance btobd.raycast 0

execute if entity @e[type=block_display,tag=btobd.pos1] if entity @e[type=block_display,tag=btobd.pos2] run function btobd:converter_stick/pos2_move
execute if entity @e[type=block_display,tag=btobd.pos1] unless entity @e[type=block_display,tag=btobd.pos2] run function btobd:converter_stick/pos2_set
execute unless entity @e[type=block_display,tag=btobd.pos1] unless entity @e[type=block_display,tag=btobd.pos2] run function btobd:converter_stick/pos1_set
