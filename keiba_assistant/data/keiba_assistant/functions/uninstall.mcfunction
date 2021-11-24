#load.mcfunctionで作ったスコアボードの値を削除
scoreboard objectives remove keiba.whip
scoreboard objectives remove keiba.whip_click
scoreboard objectives remove keiba.rank
scoreboard objectives remove keiba.tick
scoreboard objectives remove keiba.race
scoreboard objectives remove keiba.time
scoreboard objectives remove keiba.
#本関連
scoreboard objectives remove keiba.whip1
scoreboard objectives remove keiba.whip2
scoreboard objectives remove keiba.whip3
scoreboard objectives remove keiba.whip4
scoreboard objectives remove keiba.whip.clear
tag @a remove keibabook
#reset.mcfunctionとscoreboard以外同じものを実行
gamerule commandBlockOutput true
gamerule keepInventory false
gamerule showDeathMessages true
tag @a remove keibatime
tag @a remove keibakill
tag @e remove gate1
tag @e remove gate2
tag @e remove gate3
tag @e remove gate4
title @a times 10 70 20
#データパックの無効化
datapack disable "file/keiba_assistant"
datapack disable "file/keiba_assistant.zip"
tellraw @a ["",{"text":"競馬アシスタント","color": "gold"},{"text":"のアンインストールが完了しました！datapackフォルダから削除してください"}]
tellraw @a {"text":"プレイしていただきありがとうございました！","color": "green"}
tellraw @a ["",{"text":"Uninstalling "},{"text":"Horse Racing Assistant ","color": "gold"},{"text":"is complete! Please remove it from the datapack folder."}]
tellraw @a {"text":"Thank you for playing!","color": "green"}