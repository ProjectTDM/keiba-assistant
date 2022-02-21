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
tag @a remove keibatime
gamerule keepInventory false
gamerule showDeathMessages true
gamerule sendCommandFeedback true
title @a reset
execute as @a run function keiba_assistant:whip/take/whip1
execute as @a run function keiba_assistant:whip/take/whip2
execute as @a run function keiba_assistant:whip/take/whip3
execute as @a run function keiba_assistant:whip/take/whip4
#データパックの無効化
datapack disable "file/keiba_assistant"
datapack disable "file/keiba_assistant.zip"
#アンインストール完了メッセージ(リソースパック不要)
tellraw @a [{"text":"競馬アシスタント[v4.0.0]","color":"gold"},{"text":"のアンインストールが完了しました！"}]
tellraw @a {"text":"プレイしていただきありがとうございました！","color":"green"}
tellraw @a [{"text":"Uninstalling "},{"text":"Horse Racing Assistant[v4.0.0] ","color":"gold"},{"text":"is complete!"}]
tellraw @a {"text":"Thank you for playing!","color":"green"}