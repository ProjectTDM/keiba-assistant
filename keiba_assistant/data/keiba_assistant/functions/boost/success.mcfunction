#どの鞭を持った人がクリックしたか判別してブーストする
execute as @s[advancements={keiba_assistant:whip/whip1=true}] run effect give @e[predicate=keiba_assistant:gate/gate1] speed 4 3
execute as @s[advancements={keiba_assistant:whip/whip2=true}] run effect give @e[predicate=keiba_assistant:gate/gate2] speed 4 3
execute as @s[advancements={keiba_assistant:whip/whip3=true}] run effect give @e[predicate=keiba_assistant:gate/gate3] speed 4 3
execute as @s[advancements={keiba_assistant:whip/whip4=true}] run effect give @e[predicate=keiba_assistant:gate/gate4] speed 4 3
#耐久値を減らす
scoreboard players remove @s keiba.remain 1
#成功音(リソースパックで鞭の音に変更済み)
playsound minecraft:tunakan.whip master @s ~ ~ ~ 80
#周りの人にブーストかかったことをお知らせ
particle minecraft:cloud ~ ~0.5 ~ 0.1 0.1 0.1 0.1 30 force @a
#ブースト使用回数をアイテムスロットの上に表示(残り0なら表示を赤に)
execute if score @s keiba.remain matches 1.. run title @s actionbar [{"translate":"title.keiba_assistant.boost","bold":true,"with":[{"score":{"name":"@s","objective":"keiba.remain"},"color":"gold"}]}]
execute unless score @s keiba.remain matches 1.. run title @s actionbar [{"translate":"title.keiba_assistant.boost","bold":true,"color":"red","with":[{"score":{"name":"@s","objective":"keiba.remain"}}]}]