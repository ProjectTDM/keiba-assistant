# 失敗処理へ
execute if score @s keiba.remain matches 0 run function keiba_assistant_x18:boost/fail
# 成功処理へ
execute unless score @s keiba.remain matches 0 run function keiba_assistant_x18:boost/success
# 鞭の表示更新
item modify entity @s[predicate=keiba_assistant_x18:whip/have/main] weapon.mainhand keiba_assistant_x18:remain
item modify entity @s[predicate=keiba_assistant_x18:whip/have/off] weapon.offhand keiba_assistant_x18:remain