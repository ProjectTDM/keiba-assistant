#コマンドログを無効化
gamerule commandBlockOutput false
#初期設定
scoreboard objectives add keiba.whip dummy {"translate":"scoreboard.keiba_assistant.whip"}
scoreboard objectives add keiba.whip_click used:carrot_on_a_stick
scoreboard objectives add keiba.rank dummy
scoreboard objectives add keiba.tick dummy
scoreboard objectives add keiba.race dummy
scoreboard objectives add keiba.time dummy {"translate":"scoreboard.keiba_assistant.time"}
scoreboard objectives setdisplay sidebar keiba.time
scoreboard objectives add keiba. dummy
execute unless score $keiba keiba. matches 1 run function keiba_assistant:reset_all
scoreboard players set $keiba keiba. 1
#本関連
scoreboard objectives add keiba.whip1 trigger {"translate":"item.keiba_assistant.whip1"}
scoreboard objectives add keiba.whip2 trigger {"translate":"item.keiba_assistant.whip2"}
scoreboard objectives add keiba.whip3 trigger {"translate":"item.keiba_assistant.whip3"}
scoreboard objectives add keiba.whip4 trigger {"translate":"item.keiba_assistant.whip4"}
scoreboard objectives add keiba.whip.clear trigger "Clear"
execute as @a at @s run function keiba_assistant:enable