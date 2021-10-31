#コマンドログを無効化
gamerule commandBlockOutput false
#初期設定
scoreboard objectives add keiba.whip dummy {"translate":"scoreboard.keiba_assistant.whip"}
scoreboard objectives add keiba.whip_click used:carrot_on_a_stick
scoreboard objectives add keiba.rank dummy
scoreboard objectives add keiba.tick dummy {"translate":"scoreboard.keiba_assistant.tick"}
scoreboard objectives add keiba.time dummy {"translate":"scoreboard.keiba_assistant.time"}
scoreboard objectives setdisplay sidebar keiba.time
scoreboard objectives add keiba. dummy
scoreboard players add $keiba keiba. 1
execute if score $keiba keiba. matches 1 run function keiba_assistant_color:reset_all
#本関連
scoreboard objectives add keiba.whip1 trigger {"translate":"item.keiba_assistant.whip1"}
scoreboard objectives add keiba.whip2 trigger {"translate":"item.keiba_assistant.whip2"}
scoreboard objectives add keiba.whip3 trigger {"translate":"item.keiba_assistant.whip3"}
scoreboard objectives add keiba.whip4 trigger {"translate":"item.keiba_assistant.whip4"}
scoreboard objectives add keiba.whip5 trigger {"translate":"item.keiba_assistant.whip5"}
scoreboard objectives add keiba.whip6 trigger {"translate":"item.keiba_assistant.whip6"}
scoreboard objectives add keiba.whip7 trigger {"translate":"item.keiba_assistant.whip7"}
scoreboard objectives add keiba.whip8 trigger {"translate":"item.keiba_assistant.whip8"}
scoreboard objectives add keiba.whip9 trigger {"translate":"item.keiba_assistant.whip9"}
scoreboard objectives add keiba.whip10 trigger {"translate":"item.keiba_assistant.whip10"}
scoreboard objectives add keiba.whip11 trigger {"translate":"item.keiba_assistant.whip11"}
scoreboard objectives add keiba.whip12 trigger {"translate":"item.keiba_assistant.whip12"}
scoreboard objectives add keiba.whip13 trigger {"translate":"item.keiba_assistant.whip13"}
scoreboard objectives add keiba.whip14 trigger {"translate":"item.keiba_assistant.whip14"}
scoreboard objectives add keiba.whip15 trigger {"translate":"item.keiba_assistant.whip15"}
scoreboard objectives add keiba.whip16 trigger {"translate":"item.keiba_assistant.whip16"}
scoreboard objectives add keiba.whip.clear trigger "Clear"
scoreboard objectives add keiba.whip.all trigger "Get All"
execute as @a at @s run function keiba_assistant_color:enable