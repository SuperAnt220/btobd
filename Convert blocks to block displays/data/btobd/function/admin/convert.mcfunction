execute unless entity @e[type=block_display,tag=btobd.pos_entity] run return run tellraw @s {"color": "red", "text":"Error! Both pos entities do not exist/are not loaded."}
execute unless entity @e[type=block_display,tag=btobd.pos1] run return run tellraw @s {"color": "red", "text":"Error! One or both pos entities do not exist/are not loaded."}
execute unless entity @e[type=block_display,tag=btobd.pos2] run return run tellraw @s {"color": "red", "text":"Error! One or both pos entities do not exist/are not loaded."}

execute store result storage btobd:convert_area_input x int 1 run data get entity @e[type=block_display,limit=1,tag=btobd.pos1] Pos[0]
execute store result storage btobd:convert_area_input y int 1 run data get entity @e[type=block_display,limit=1,tag=btobd.pos1] Pos[1]
execute store result storage btobd:convert_area_input z int 1 run data get entity @e[type=block_display,limit=1,tag=btobd.pos1] Pos[2]

execute store result storage btobd:convert_area_input x2 int 1 run data get entity @e[type=block_display,limit=1,tag=btobd.pos2] Pos[0]
execute store result storage btobd:convert_area_input y2 int 1 run data get entity @e[type=block_display,limit=1,tag=btobd.pos2] Pos[1]
execute store result storage btobd:convert_area_input z2 int 1 run data get entity @e[type=block_display,limit=1,tag=btobd.pos2] Pos[2]

function btobd:conversion with storage btobd:convert_area_input