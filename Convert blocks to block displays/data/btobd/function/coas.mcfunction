scoreboard players reset @s btobd.coas
execute if items entity @s weapon.mainhand carrot_on_a_stick if predicate btobd:is_sneaking run return run function btobd:converter_stick/pos_clear
execute if items entity @s weapon.mainhand carrot_on_a_stick run function btobd:raycast/launch