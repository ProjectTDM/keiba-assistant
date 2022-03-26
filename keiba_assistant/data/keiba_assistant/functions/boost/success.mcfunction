# どの鞭を持った人がクリックしたか判別してブーストする
execute as @s[scores={keiba.whip=1..2}] run function keiba_assistant:boost/dichotomous/1-2
execute as @s[scores={keiba.whip=3..4}] run function keiba_assistant:boost/dichotomous/3-4
# 成功音(リソースパックで鞭の音に変更済み)
playsound keiba_assistant:whip master @s ~ ~ ~ 80
# 周りの人にブーストかかったことをお知らせ
particle minecraft:cloud ~ ~1 ~ 0.5 0.5 0.5 0.1 30 force @a
# ブースト有限用
execute if score @s keiba.remain matches 0.. run function keiba_assistant:boost/remain
# ブースト無限用(-1以下)
execute unless score @s keiba.remain matches 0.. run title @s actionbar [{"translate":"title.keiba_assistant.boost","bold":true,"with":[{"text":"∞","color":"gold"}]}]
# 鞭の表示更新
item modify entity @s[predicate=keiba_assistant:whip/main] weapon.mainhand keiba_assistant:remain
item modify entity @s[predicate=keiba_assistant:whip/off] weapon.offhand keiba_assistant:remain