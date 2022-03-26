scoreboard players reset @s keiba.give
data modify storage keiba_assistant: whip.2 set value '{"translate":"item.keiba_assistant.whip","color":"dark_red","with":[{"text":2}]}'
scoreboard players set @s keiba.whip 2
loot spawn ~ ~ ~ loot keiba_assistant:whip/whip2
tellraw @s {"translate":"tellraw.keiba_assistant.give","with":[{"translate":"item.keiba_assistant.whip","color":"blue","with":[{"text":"2"}]}]}
scoreboard players enable @s keiba.clear