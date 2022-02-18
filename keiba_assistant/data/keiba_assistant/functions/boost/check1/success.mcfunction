#耐久値を減らす
scoreboard players remove @s keiba.remain 1
#ブーストを馬と騎乗者に与える
effect give @e[tag=keibagate1] speed 5 3
#成功音(リソースパックで鞭の音に変更済み)
playsound minecraft:tunakan.whip master @s ~ ~ ~ 80
#周りの人にブーストかかったことをお知らせ
particle minecraft:cloud ~ ~0.5 ~ 0.1 0.1 0.1 0.1 30 force @a
#ブースト使用回数をアイテムスロットの上に表示(残り0なら表示を赤に)
execute if score @s keiba.remain matches 1.. run title @s actionbar ["",{"translate":"title.keiba_assistant.boost","bold":true},{"score":{"name":"@s","objective":"keiba.remain"},"bold":true,"color":"gold"}]
execute unless score @s keiba.remain matches 1.. run title @s actionbar ["",{"translate":"title.keiba_assistant.boost","bold":true,"color":"red"},{"score":{"name":"@s","objective":"keiba.remain"},"bold":true,"color":"red"}]