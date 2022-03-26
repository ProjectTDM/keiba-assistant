scoreboard players reset @s keiba.give
data modify storage keiba_assistant: whip.4 set value '{"translate":"item.keiba_assistant.whip","color":"dark_red","with":[{"text":4}]}'
scoreboard players set @s keiba.whip 4
loot spawn ~ ~ ~ loot keiba_assistant:whip/whip4
tellraw @s {"translate":"tellraw.keiba_assistant.give","with":[{"translate":"item.keiba_assistant.whip","color":"dark_green","with":[{"text":"4"}]}]}
scoreboard players enable @s keiba.clear