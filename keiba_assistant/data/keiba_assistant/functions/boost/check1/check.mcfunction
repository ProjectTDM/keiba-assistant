#使用可能回数が足りているかのチェック
#失敗処理(統合)へ
execute unless score @s keiba.remain matches 1.. run function keiba_assistant:boost/fail
#成功処理(個別)へ
execute if score @s keiba.remain matches 1.. run function keiba_assistant:boost/check1/success