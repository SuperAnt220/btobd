tp @s ~ ~ ~
execute if score $keep_air_displays btobd.settings matches 1 if block ~ ~ ~ #air run function btobd:summon_block
execute unless block ~ ~ ~ #air run function btobd:summon_block
execute store result score @s btobd.x run data get entity @s Pos[0]
execute store result score @s btobd.y run data get entity @s Pos[1]
execute store result score @s btobd.z run data get entity @s Pos[2]
execute if score @s btobd.x < .x2 btobd.convert_area positioned ~1 ~ ~ run function btobd:process_area with storage btobd:convert_area
$execute if score @s btobd.z < .z2 btobd.convert_area if score @s btobd.x = .x2 btobd.convert_area positioned $(x).5 ~ ~1 run function btobd:process_area with storage btobd:convert_area
$execute if score @s btobd.y < .y2 btobd.convert_area if score @s btobd.z = .z2 btobd.convert_area if score @s btobd.x = .x2 btobd.convert_area positioned $(x).5 ~1 $(z).5 run function btobd:process_area with storage btobd:convert_area