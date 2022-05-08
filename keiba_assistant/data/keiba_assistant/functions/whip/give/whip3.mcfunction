scoreboard players reset @s keiba.give
data modify storage keiba_assistant: whip.3 set value '{"translate":"item.keiba_assistant.whip","color":"dark_red","with":[{"text":3}]}'
loot spawn ~ -129 ~ loot keiba_assistant:playerhead
data modify storage keiba_assistant: whip.Name.3 set from entity @e[type=item,distance=..1,y=-129,limit=1] Item.tag.SkullOwner.Name
scoreboard players set @s keiba.whip 3
loot spawn ~ ~ ~ loot keiba_assistant:whip/whip3
tellraw @s {"translate":"tellraw.keiba_assistant.give","with":[{"translate":"item.keiba_assistant.whip","color":"light_purple","with":[{"text":"3"}]}]}
scoreboard players enable @s keiba.clear