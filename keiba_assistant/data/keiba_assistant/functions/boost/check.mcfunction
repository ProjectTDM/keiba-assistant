# 失敗処理へ
execute if score @s keiba.remain matches 0 run function keiba_assistant:boost/fail
# 成功処理へ
execute unless score @s keiba.remain matches 0 run function keiba_assistant:boost/success