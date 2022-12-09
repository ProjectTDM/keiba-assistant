# どの鞭を持った人がクリックしたか判別してブーストする
## 使用者にタグ付け
tag @s add keibaboost
## 使用者と乗り物にブースト
effect give @e[predicate=keiba_assistant:whip/boost] speed 5 3
## 使用者のタグ削除
tag @s remove keibaboost
# 成功音(リソースパックで鞭の音に変更済み)
playsound keiba_assistant:whip master @s ~ ~ ~ 80
# 周りの人にブーストかかったことをお知らせ
particle cloud ~ ~1 ~ 0.5 0.5 0.5 0.1 30 force @a
# ブースト有限用
execute if score @s keiba.remain matches 0.. run function keiba_assistant:boost/remain
# ブースト無限用(-1以下)
execute unless score @s keiba.remain matches 0.. run title @s actionbar [{"translate":"title.keiba_assistant.boost","bold":true,"with":[{"text":"∞","color":"gold"}]}]
# 鞭の表示更新
item modify entity @s[predicate=keiba_assistant:whip/have/main] weapon.mainhand keiba_assistant:remain
item modify entity @s[predicate=keiba_assistant:whip/have/off] weapon.offhand keiba_assistant:remain