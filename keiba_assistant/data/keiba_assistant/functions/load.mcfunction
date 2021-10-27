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
scoreboard objectives add keiba.whip.clear trigger "Clear"
execute as @a at @s run function keiba_assistant:enable