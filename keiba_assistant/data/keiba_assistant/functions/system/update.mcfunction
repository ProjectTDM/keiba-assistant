#v2.0
scoreboard objectives remove runk
#v2.1
scoreboard objectives remove whip
scoreboard objectives remove whip_click
scoreboard objectives remove whip_Temporary
scoreboard objectives remove rank
scoreboard objectives remove time
#v2.2
scoreboard objectives remove keiba.whip_Temp
#v4.0.0
scoreboard objectives remove keiba.whip
scoreboard objectives remove keiba.whip1
scoreboard objectives remove keiba.whip2
scoreboard objectives remove keiba.whip3
scoreboard objectives remove keiba.whip4
scoreboard objectives remove keiba.whip.clear
scoreboard objectives remove keiba.whip_click
tag @a remove keibakill
tag @a remove whipSucces1
tag @a remove whipSucces2
tag @a remove whipSucces3
tag @a remove whipSucces4
tag @e remove keibagate1
tag @e remove keibagate2
tag @e remove keibagate3
tag @e remove keibagate4
clear @a carrot_on_a_stick{CustomModelData:1}
clear @a carrot_on_a_stick{CustomModelData:2}
clear @a carrot_on_a_stick{CustomModelData:3}
clear @a carrot_on_a_stick{CustomModelData:4}
#アップデート済みにする
scoreboard players set $keiba keiba.update 1
#アップデート完了
reload
tellraw @a {"text":"[Server] Update completed!"}