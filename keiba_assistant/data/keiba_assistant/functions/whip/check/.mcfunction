# 鞭を取り上げる
execute as @a[scores={keiba.clear=1}] at @s run function keiba_assistant:whip/clear/
# どの鞭がほしいのか
execute as @a[scores={keiba.give=1..2}] at @s run function keiba_assistant:whip/check/dichotomous/1-2
execute as @a[scores={keiba.give=3..4}] at @s run function keiba_assistant:whip/check/dichotomous/3-4