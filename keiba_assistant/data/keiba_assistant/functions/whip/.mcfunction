# 鞭を取り上げる
execute as @a if score @s keiba.clear matches 1 run function keiba_assistant:whip/clear_whip
# どの鞭がほしいのか
execute as @a if score @s keiba.whip matches 1 run function keiba_assistant:whip/check/whip1
execute as @a if score @s keiba.whip matches 2 run function keiba_assistant:whip/check/whip2
execute as @a if score @s keiba.whip matches 3 run function keiba_assistant:whip/check/whip3
execute as @a if score @s keiba.whip matches 4 run function keiba_assistant:whip/check/whip4