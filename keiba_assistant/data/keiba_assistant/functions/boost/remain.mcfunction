# 使用可能回数を減らす
scoreboard players remove @s keiba.remain 1
# ブースト使用可能回数の表示
execute if score @s keiba.remain matches 1.. run title @s actionbar [{"translate":"title.keiba_assistant.boost","bold":true,"with":[{"score":{"name":"@s","objective":"keiba.remain"},"color":"gold"}]}]
execute if score @s keiba.remain matches 0 run title @s actionbar [{"translate":"title.keiba_assistant.boost","bold":true,"color":"red","with":[{"text":"0"}]}]