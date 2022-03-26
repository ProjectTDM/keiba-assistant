# 鞭の回収
scoreboard players reset @s keiba.clear
clear @s carrot_on_a_stick{tag:keibawhip}
# scoreによってstorageをリセット
execute as @s[scores={keiba.whip=1..2}] run function keiba_assistant:whip/clear/dichotomous/1-2
execute as @s[scores={keiba.whip=3..4}] run function keiba_assistant:whip/clear/dichotomous/3-4
# 鞭のadvancementを削除
advancement revoke @s through keiba_assistant:whip/root
# 鞭番号をリセット
scoreboard players reset @s keiba.whip
# 鞭を返却したことの通知
tellraw @s {"translate":"tellraw.keiba_assistant.clear"}
# 鞭取得の有効化
scoreboard players enable @s keiba.give