# 鞭確認用
## 鞭でない場合
execute at @s[scores={keiba.click=1..},predicate=!keiba_assistant_x18:whip/have/] run scoreboard players reset @s keiba.click
## 鞭の場合
execute at @s[scores={keiba.click=1..},predicate=keiba_assistant_x18:whip/have/] run function keiba_assistant_x18:boost/click