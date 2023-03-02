# 鞭でない場合
execute at @s[scores={keiba.click=1..},predicate=!keiba_assistant:whip/have/] run scoreboard players reset @s keiba.click
# 鞭の場合
execute at @s[scores={keiba.click=1..},predicate=keiba_assistant:whip/have/] run function keiba_assistant:boost/check