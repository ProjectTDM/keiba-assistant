# 鞭を取り上げる
execute as @a[scores={keiba.clear=1..}] at @s run function keiba_assistant_x18:whip/clear/
# どの鞭がほしいのか
execute as @a[scores={keiba.give=1..9}] at @s run function keiba_assistant_x18:whip/check/dichotomous/1-9
execute as @a[scores={keiba.give=10..18}] at @s run function keiba_assistant_x18:whip/check/dichotomous/10-18