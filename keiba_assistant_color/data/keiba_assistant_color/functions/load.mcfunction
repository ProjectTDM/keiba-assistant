#コマンドログを無効化
gamerule commandBlockOutput false
#初期設定
scoreboard objectives add keiba.whip dummy "ブースト使用可能回数"
scoreboard objectives add keiba.whip_click used:carrot_on_a_stick
scoreboard objectives add keiba.whip_Temp dummy
scoreboard objectives add keiba.rank dummy "順位"
scoreboard objectives add keiba.time dummy "競馬"
scoreboard objectives setdisplay sidebar keiba.time
scoreboard players set $whip_uses keiba.whip_Temp 1
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