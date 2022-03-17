# どの鞭を持った人がクリックしたか判別してブーストする
execute as @s[advancements={keiba_assistant:whip/whip1=true}] run effect give @e[predicate=keiba_assistant:gate/gate1] speed 4 3
execute as @s[advancements={keiba_assistant:whip/whip2=true}] run effect give @e[predicate=keiba_assistant:gate/gate2] speed 4 3
execute as @s[advancements={keiba_assistant:whip/whip3=true}] run effect give @e[predicate=keiba_assistant:gate/gate3] speed 4 3
execute as @s[advancements={keiba_assistant:whip/whip4=true}] run effect give @e[predicate=keiba_assistant:gate/gate4] speed 4 3
# 成功音(リソースパックで鞭の音に変更済み)
playsound keiba_assistant:whip master @s ~ ~ ~ 80
# 周りの人にブーストかかったことをお知らせ
particle minecraft:cloud ~ ~0.5 ~ 0.1 0.1 0.1 0.1 30 force @a
# ブースト有限用
execute if score @s keiba.remain matches 0.. run function keiba_assistant:boost/remain
# ブースト無限用(-1以下)
execute unless score @s keiba.remain matches 0.. run title @s actionbar [{"translate":"title.keiba_assistant.boost","bold":true,"with":[{"text":"∞","color":"gold"}]}]
# 鞭の表示更新
execute as @a[predicate=keiba_assistant:whip/mainhand] run item modify entity @s weapon.mainhand keiba_assistant:remain
execute as @a[predicate=keiba_assistant:whip/offhand] run item modify entity @s weapon.offhand keiba_assistant:remain