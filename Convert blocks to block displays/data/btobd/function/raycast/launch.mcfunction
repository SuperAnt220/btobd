tag @s add btobd.raycaster
scoreboard players set #distance btobd.raycast 1000
execute at @s anchored eyes positioned ^ ^ ^ run function btobd:raycast/ray
tag @s remove btobd.raycaster