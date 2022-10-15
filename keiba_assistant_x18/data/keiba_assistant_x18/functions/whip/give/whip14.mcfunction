scoreboard players reset @s keiba.give
data modify storage keiba_assistant_x18: whip.14 set value '{"translate":"item.keiba_assistant.whip","color":"dark_red","with":[{"text":14}]}'
loot spawn ~ -129 ~ loot keiba_assistant_x18:playerhead
data modify storage keiba_assistant_x18: whip.Name.14 set from entity @e[type=item,distance=..1,y=-129,limit=1] Item.tag.SkullOwner.Name
scoreboard players set @s keiba.whip 14
loot give @s loot keiba_assistant_x18:whip/whip14
tellraw @s {"translate":"tellraw.keiba_assistant.give","with":[{"translate":"item.keiba_assistant.whip","color":"light_purple","with":[{"text":"14"}]}]}
scoreboard players enable @s keiba.clear