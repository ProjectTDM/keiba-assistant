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
scoreboard objectives remove keiba.whip5
scoreboard objectives remove keiba.whip6
scoreboard objectives remove keiba.whip7
scoreboard objectives remove keiba.whip8
scoreboard objectives remove keiba.whip9
scoreboard objectives remove keiba.whip10
scoreboard objectives remove keiba.whip11
scoreboard objectives remove keiba.whip12
scoreboard objectives remove keiba.whip13
scoreboard objectives remove keiba.whip14
scoreboard objectives remove keiba.whip15
scoreboard objectives remove keiba.whip16
scoreboard objectives remove keiba.whip.clear
scoreboard objectives remove keiba.whip.all
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
tag @e remove gate5
tag @e remove gate6
tag @e remove gate7
tag @e remove gate8
tag @e remove gate9
tag @e remove gate10
tag @e remove gate11
tag @e remove gate12
tag @e remove gate13
tag @e remove gate14
tag @e remove gate15
tag @e remove gate16
title @a times 10 70 20
#データパックの無効化
datapack disable "file/keiba_assistant_color"
datapack disable "file/keiba_assistant_color.zip"
tellraw @a ["",{"text":"競馬アシスタント- カラー版 - ","color": "gold"},{"text":"のアンインストールが完了しました！datapackフォルダから削除してください"}]
tellraw @a {"text":"プレイしていただきありがとうございました！","color": "green"}
tellraw @a ["",{"text":"Uninstalling "},{"text":"Horse Racing Assistant - Color Edition - ","color": "gold"},{"text":"is complete! Please remove it from the datapack folder."}]
tellraw @a {"text":"Thank you for playing!","color": "green"}