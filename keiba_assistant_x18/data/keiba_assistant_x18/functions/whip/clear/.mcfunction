# 鞭の回収
scoreboard players reset @s keiba.clear
clear @s carrot_on_a_stick{tag:keibawhip}
# scoreによってstorageをリセット
execute as @s[scores={keiba.whip=1..9}] run function keiba_assistant_x18:whip/clear/dichotomous/1-9
execute as @s[scores={keiba.whip=10..18}] run function keiba_assistant_x18:whip/clear/dichotomous/10-18
# 鞭番号をリセット
scoreboard players reset @s keiba.whip
# 鞭を返却したことの通知
tellraw @s {"translate":"tellraw.keiba_assistant.clear"}
# 鞭取得の有効化
scoreboard players enable @s keiba.give