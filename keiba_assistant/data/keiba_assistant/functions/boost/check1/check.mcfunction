#使用可能回数が足りているかのチェック
#失敗処理(統合)へ
execute unless score @s keiba.whip matches 1.. run function keiba_assistant:boost/fail
execute if score @s keiba.whip matches 1.. run function keiba_assistant:boost/check1/success