scoreboard players remove #distance btobd.raycast 1
execute unless block ~ ~ ~ #btobd:raycast_ignore run return run function btobd:raycast/hit_block
execute if score #distance btobd.raycast matches 1.. positioned ^ ^ ^0.1 run function btobd:raycast/ray