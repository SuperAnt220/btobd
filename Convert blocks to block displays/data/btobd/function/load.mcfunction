scoreboard objectives add btobd.settings dummy
scoreboard objectives add btobd.coas used:carrot_on_a_stick
scoreboard objectives add btobd.raycast dummy
scoreboard objectives add btobd.convert_area dummy
scoreboard objectives add btobd.x dummy
scoreboard objectives add btobd.y dummy
scoreboard objectives add btobd.z dummy

tellraw @a {"color":"gold","text": "\"Convert blocks to block displays\" datapack loaded!"}
execute unless score #setup btobd.settings matches 1 run function btobd:setup