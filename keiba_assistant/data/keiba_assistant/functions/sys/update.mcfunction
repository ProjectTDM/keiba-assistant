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
scoreboard objectives remove keiba.give
scoreboard objectives remove keiba.whip1
scoreboard objectives remove keiba.whip2
scoreboard objectives remove keiba.whip3
scoreboard objectives remove keiba.whip4
scoreboard objectives remove keiba.whip.clear
scoreboard objectives remove keiba.tick
scoreboard objectives remove keiba.whip_click
tag @a remove keibabook
tag @a remove keibakill
tag @a remove whipSucces1
tag @a remove whipSucces2
tag @a remove whipSucces3
tag @a remove whipSucces4
tag @e remove gate1
tag @e remove gate2
tag @e remove gate3
tag @e remove gate4
clear @a minecraft:written_book{title:Whip,author:tunakaniri}
clear @a carrot_on_a_stick{CustomModelData:1}
clear @a carrot_on_a_stick{CustomModelData:2}
clear @a carrot_on_a_stick{CustomModelData:3}
clear @a carrot_on_a_stick{CustomModelData:4}
# リセット
function keiba_assistant:reset
# バージョン設定
data modify storage keiba_assistant: ver set value 4.0.0
# アップデート完了表示(インストールされていた場合)
execute if data storage keiba_assistant: {installed:1} run tellraw @a {"text":"[Server] Update completed!"}