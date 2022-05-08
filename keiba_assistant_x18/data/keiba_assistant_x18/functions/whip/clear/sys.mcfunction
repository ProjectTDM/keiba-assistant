# 鞭の回収
scoreboard players reset @s keiba.clear
clear @s carrot_on_a_stick{tag:keibawhip}
# 鞭が返却されたことの通知
tellraw @s {"translate":"tellraw.keiba_assistant.clear.system","color":"red"}
# 鞭取得の有効化
scoreboard players enable @s keiba.give