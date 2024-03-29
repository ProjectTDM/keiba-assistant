# scoreboardの削除
scoreboard objectives remove keiba.click
scoreboard objectives remove keiba.have
scoreboard objectives remove keiba.race
scoreboard objectives remove keiba.rank
scoreboard objectives remove keiba.remain
scoreboard objectives remove keiba.time
# storageの削除
data remove storage keiba_assistant: countdown
data remove storage keiba_assistant: installed
data remove storage keiba_assistant: player
data remove storage keiba_assistant: status
data remove storage keiba_assistant: ver
# アイテムの削除
clear @a carrot_on_a_stick{tag:keibawhip}
clear @a written_book{tag:keibacommandbook}
clear @a written_book{tag:keibawhipbook}
clear @a oak_sign{tag:keibasign}
# tagの削除
tag @a remove keibaboost
tag @a remove keibatime
# title表示のリセット
title @a reset
# gameruleのリセット
gamerule keepInventory false
gamerule showDeathMessages true
gamerule doImmediateRespawn false
# データパックの無効化
datapack disable "file/keiba_assistant"
datapack disable "file/keiba_assistant.zip"
# アンインストール完了メッセージ(リソースパック不要)
tellraw @a [{"text":"競馬アシスタント","color":"gold"},{"text":"のアンインストールが完了しました！"}]
tellraw @a {"text":"プレイしていただきありがとうございました！","color":"green"}
tellraw @a [{"text":"Uninstalled "},{"text":"Horse Racing Assistant","color":"gold"},{"text":" is complete!"}]
tellraw @a {"text":"Thank you for playing!","color":"green"}