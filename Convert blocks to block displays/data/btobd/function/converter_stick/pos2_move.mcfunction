tellraw @s {"color": "#ffe81c","text": "Pos2 moved"}
execute at @s run playsound block.note_block.xylophone player @s ~ ~ ~ 0.5 1.6
execute align xyz positioned ~.5 ~.5 ~.5 run tp @e[type=block_display,tag=btobd.pos2] ~ ~ ~