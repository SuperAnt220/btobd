$scoreboard players set .x btobd.convert_area $(x)
$scoreboard players set .y btobd.convert_area $(y)
$scoreboard players set .z btobd.convert_area $(z)
$scoreboard players set .x2 btobd.convert_area $(x2)
$scoreboard players set .y2 btobd.convert_area $(y2)
$scoreboard players set .z2 btobd.convert_area $(z2)
execute if score .x btobd.convert_area > .x2 btobd.convert_area run scoreboard players operation .x btobd.convert_area >< .x2 btobd.convert_area
execute if score .y btobd.convert_area > .y2 btobd.convert_area run scoreboard players operation .y btobd.convert_area >< .y2 btobd.convert_area
execute if score .z btobd.convert_area > .z2 btobd.convert_area run scoreboard players operation .z btobd.convert_area >< .z2 btobd.convert_area
# Calculating area volume
scoreboard players operation #length btobd.convert_area = .x2 btobd.convert_area
scoreboard players operation #length btobd.convert_area -= .x btobd.convert_area
scoreboard players operation #length btobd.convert_area += #1 btobd.convert_area

scoreboard players operation #height btobd.convert_area = .y2 btobd.convert_area
scoreboard players operation #height btobd.convert_area -= .y btobd.convert_area
scoreboard players operation #height btobd.convert_area += #1 btobd.convert_area

scoreboard players operation #width btobd.convert_area = .z2 btobd.convert_area
scoreboard players operation #width btobd.convert_area -= .z btobd.convert_area
scoreboard players operation #width btobd.convert_area += #1 btobd.convert_area

scoreboard players operation #volume btobd.convert_area = #length btobd.convert_area
scoreboard players operation #volume btobd.convert_area *= #width btobd.convert_area
scoreboard players operation #volume btobd.convert_area *= #height btobd.convert_area

execute if score $area_limit btobd.settings matches 1 if score #volume btobd.convert_area matches 2000.. run return run tellraw @s [{"color": "gold","text":""},{"color":"red","text":"Area volume exceeds 2000 blocks! "},"Things might break or lag severely. If you still want to proceed, turn off \"Area limit\" in the ",{"color":"#1793ff","underlined":true,"text":"settings","clickEvent":{"action":"run_command","value":"/function btobd:admin/settings"}},"."]

execute store result storage btobd:convert_area x int 1 run scoreboard players get .x btobd.convert_area
execute store result storage btobd:convert_area y int 1 run scoreboard players get .y btobd.convert_area
execute store result storage btobd:convert_area z int 1 run scoreboard players get .z btobd.convert_area
execute store result storage btobd:convert_area x2 int 1 run scoreboard players get .x2 btobd.convert_area
execute store result storage btobd:convert_area y2 int 1 run scoreboard players get .y2 btobd.convert_area
execute store result storage btobd:convert_area z2 int 1 run scoreboard players get .z2 btobd.convert_area

kill @e[tag=btobd.pos_entity]
function btobd:summon with storage btobd:convert_area

kill @e[type=item_display,tag=btobd.converter,limit=1]
tellraw @s {"color": "green", "text": "Conversion finished!"}