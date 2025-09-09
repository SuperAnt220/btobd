tellraw @s {"color": "#c2c2c2","text": "Pos1 and Pos2 cleared"}
execute at @s run playsound minecraft:block.fire.extinguish block @s ~ ~ ~ 0.3 2
kill @e[tag=btobd.pos_entity]