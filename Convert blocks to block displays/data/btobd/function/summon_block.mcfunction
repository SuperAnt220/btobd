playsound minecraft:entity.item.pickup block @a ~ ~ ~ 0.1
loot replace entity @s contents loot blockstate:get
summon block_display ~ ~ ~ {transformation:{translation:[-0.5f,-0.5f,-0.5f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f]},Tags:["btobd.converted"]}
data modify entity @e[type=block_display,distance=..0.01,limit=1] block_state set from entity @s item.components."minecraft:custom_data"