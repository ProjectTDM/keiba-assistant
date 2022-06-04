# v1.2.1
tag @a remove Questioner
# v2.0
scoreboard objectives remove runk
# v2.1
scoreboard objectives remove whip
scoreboard objectives remove whip_click
scoreboard objectives remove whip_Temporary
scoreboard objectives remove rank
scoreboard objectives remove time
tag @a remove time
tag @a remove kill
# v2.2
scoreboard objectives remove keiba.whip_Temp
# v4.0.0
scoreboard objectives remove keiba.
scoreboard objectives remove keiba.whip1
scoreboard objectives remove keiba.whip2
scoreboard objectives remove keiba.whip3
scoreboard objectives remove keiba.whip4
scoreboard objectives remove keiba.whip5
scoreboard objectives remove keiba.whip6
scoreboard objectives remove keiba.whip7
scoreboard objectives remove keiba.whip8
scoreboard objectives remove keiba.whip9
scoreboard objectives remove keiba.whip10
scoreboard objectives remove keiba.whip11
scoreboard objectives remove keiba.whip12
scoreboard objectives remove keiba.whip13
scoreboard objectives remove keiba.whip14
scoreboard objectives remove keiba.whip15
scoreboard objectives remove keiba.whip16
scoreboard objectives remove keiba.whip.clear
scoreboard objectives remove keiba.tick
scoreboard objectives remove keiba.whip_click
tag @a remove keibabook
tag @a remove keibakill
tag @a remove whipSucces1
tag @a remove whipSucces2
tag @a remove whipSucces3
tag @a remove whipSucces4
tag @a remove whipSucces5
tag @a remove whipSucces6
tag @a remove whipSucces7
tag @a remove whipSucces8
tag @a remove whipSucces9
tag @a remove whipSucces10
tag @a remove whipSucces11
tag @a remove whipSucces12
tag @a remove whipSucces13
tag @a remove whipSucces14
tag @a remove whipSucces15
tag @a remove whipSucces16
tag @e remove gate1
tag @e remove gate2
tag @e remove gate3
tag @e remove gate4
tag @e remove gate5
tag @e remove gate6
tag @e remove gate7
tag @e remove gate8
tag @e remove gate9
tag @e remove gate10
tag @e remove gate11
tag @e remove gate12
tag @e remove gate13
tag @e remove gate14
tag @e remove gate15
tag @e remove gate16
clear @a minecraft:written_book{title:Whip,author:tunakaniri}
clear @a carrot_on_a_stick{CustomModelData:1}
clear @a carrot_on_a_stick{CustomModelData:2}
clear @a carrot_on_a_stick{CustomModelData:3}
clear @a carrot_on_a_stick{CustomModelData:4}
clear @a carrot_on_a_stick{CustomModelData:5}
clear @a carrot_on_a_stick{CustomModelData:6}
clear @a carrot_on_a_stick{CustomModelData:7}
clear @a carrot_on_a_stick{CustomModelData:8}
clear @a carrot_on_a_stick{CustomModelData:9}
clear @a carrot_on_a_stick{CustomModelData:10}
clear @a carrot_on_a_stick{CustomModelData:11}
clear @a carrot_on_a_stick{CustomModelData:12}
clear @a carrot_on_a_stick{CustomModelData:13}
clear @a carrot_on_a_stick{CustomModelData:14}
clear @a carrot_on_a_stick{CustomModelData:15}
clear @a carrot_on_a_stick{CustomModelData:16}
# リセット
function keiba_assistant_x18:reset
# バージョン設定
data modify storage keiba_assistant_x18: ver set value 4.0.3
# アップデート完了表示(インストールされていた場合)
execute if data storage keiba_assistant_x18: {installed:1} run tellraw @a {"text":"[Server] Update completed!"}