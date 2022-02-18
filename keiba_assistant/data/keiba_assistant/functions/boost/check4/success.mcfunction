scoreboard players remove @s keiba.remain 1
effect give @e[tag=keibagate4] speed 5 3
playsound minecraft:tunakan.whip master @s ~ ~ ~ 80
particle minecraft:cloud ~ ~0.5 ~ 0.1 0.1 0.1 0.1 30 force @a
execute if score @s keiba.remain matches 1.. run title @s actionbar ["",{"translate":"title.keiba_assistant.boost","bold":true},{"score":{"name":"@s","objective":"keiba.remain"},"bold":true,"color":"gold"}]
execute unless score @s keiba.remain matches 1.. run title @s actionbar ["",{"translate":"title.keiba_assistant.boost","bold":true,"color":"red"},{"score":{"name":"@s","objective":"keiba.remain"},"bold":true,"color":"red"}]