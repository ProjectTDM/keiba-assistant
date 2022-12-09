# 失敗処理へ
execute if score @s keiba.remain matches 0 run function keiba_assistant:boost/fail
# 成功処理へ
execute unless score @s keiba.remain matches 0 run function keiba_assistant:boost/success
# 鞭の表示更新
item modify entity @s[predicate=keiba_assistant:whip/have/main] weapon.mainhand keiba_assistant:remain
item modify entity @s[predicate=keiba_assistant:whip/have/off] weapon.offhand keiba_assistant:remain