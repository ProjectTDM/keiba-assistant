#load.mcfunctionでの変更をリセット
scoreboard objectives remove keiba.remain
scoreboard objectives remove keiba.rank
scoreboard objectives remove keiba.tick
scoreboard objectives remove keiba.time
scoreboard objectives remove keiba.race
scoreboard objectives remove keiba.effect
scoreboard objectives remove keiba.whip
scoreboard objectives remove keiba.clear
scoreboard objectives remove keiba.
scoreboard objectives remove keiba.ver
#reset_all.mcfunctionのうち上記と競合するもの以外を実行
data remove storage keiba_assistant: whip
data remove storage keiba_assistant: countdown
clear @s crossbow{tag:keibawhip}
tag @a remove keibatime
title @a reset
gamerule keepInventory false
gamerule showDeathMessages true
gamerule sendCommandFeedback true
#データパックの無効化
datapack disable "file/keiba_assistant"
datapack disable "file/keiba_assistant.zip"
#アンインストール完了メッセージ(リソースパック不要)
tellraw @a [{"text":"競馬アシスタント [v4.0.0] ","color":"gold"},{"text":"のアンインストールが完了しました！"}]
tellraw @a {"text":"プレイしていただきありがとうございました！","color":"green"}
tellraw @a [{"text":"Uninstalled "},{"text":"Horse Racing Assistant [v4.0.0] ","color":"gold"},{"text":"is complete!"}]
tellraw @a {"text":"Thank you for playing!","color":"green"}