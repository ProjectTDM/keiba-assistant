# scoreboardの内容を削除
scoreboard objectives remove keiba.
scoreboard objectives remove keiba.clear
scoreboard objectives remove keiba.click
scoreboard objectives remove keiba.race
scoreboard objectives remove keiba.rank
scoreboard objectives remove keiba.remain
scoreboard objectives remove keiba.tick
scoreboard objectives remove keiba.time
scoreboard objectives remove keiba.ver
scoreboard objectives remove keiba.whip
# storageの削除
data remove storage keiba_assistant: countdown
data remove storage keiba_assistant: reserve
data remove storage keiba_assistant:sign whip
# アイテムの削除
clear @s carrot_on_a_stick{tag:keibawhip}
clear @s written_book{tag:keibabook}
# tagの削除
tag @a remove keibatime
# title表示のリセット
title @a reset
# gameruleのリセット
gamerule keepInventory false
gamerule showDeathMessages true
gamerule sendCommandFeedback true
# データパックの無効化
datapack disable "file/keiba_assistant"
datapack disable "file/keiba_assistant.zip"
# アンインストール完了メッセージ(リソースパック不要)
tellraw @a [{"text":"競馬アシスタント","color":"gold"},{"text":"のアンインストールが完了しました！"}]
tellraw @a {"text":"プレイしていただきありがとうございました！","color":"green"}
tellraw @a [{"text":"Uninstalled "},{"text":"Horse Racing Assistant","color":"gold"},{"text":" is complete!"}]
tellraw @a {"text":"Thank you for playing!","color":"green"}