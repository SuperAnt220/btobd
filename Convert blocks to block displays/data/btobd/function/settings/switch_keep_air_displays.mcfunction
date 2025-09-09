# By substracting 1 and multiplying by -1 the number will switch between 1 and 0
scoreboard players operation $keep_air_displays btobd.settings += #-1 btobd.settings
scoreboard players operation $keep_air_displays btobd.settings *= #-1 btobd.settings

function btobd:admin/settings