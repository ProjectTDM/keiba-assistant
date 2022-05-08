# 鞭のクリック回数リセット
scoreboard players reset @s keiba.click
# 鞭番号を持っていない場合鞭を返却(予約削除はなし)
execute unless score @s keiba.whip matches 1.. run function keiba_assistant_x18:whip/clear/sys
# 使用可能回数が足りているかのチェック
execute if score @s keiba.whip matches 1.. run function keiba_assistant_x18:boost/check