scoreboard players reset @s keiba.give
data modify storage keiba_assistant_x18: whip.5 set value '{"translate":"item.keiba_assistant.whip","color":"dark_red","with":[{"text":5}]}'
loot spawn ~ -129 ~ loot keiba_assistant_x18:playerhead
data modify storage keiba_assistant_x18: whip.Name.5 set from entity @e[type=item,distance=..1,y=-129,limit=1] Item.tag.SkullOwner.Name
scoreboard players set @s keiba.whip 5
loot spawn ~ ~ ~ loot keiba_assistant_x18:whip/whip5
tellraw @s {"translate":"tellraw.keiba_assistant.give","with":[{"translate":"item.keiba_assistant.whip","color":"#b8c42e","with":[{"text":"5"}]}]}
scoreboard players enable @s keiba.clear