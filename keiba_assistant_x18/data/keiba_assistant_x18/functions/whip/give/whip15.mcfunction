scoreboard players reset @s keiba.give
data modify storage keiba_assistant_x18: whip.15 set value '{"translate":"item.keiba_assistant.whip","color":"dark_red","with":[{"text":15}]}'
loot spawn ~ -129 ~ loot keiba_assistant_x18:playerhead
data modify storage keiba_assistant_x18: whip.Name.15 set from entity @e[type=item,distance=..1,y=-129,limit=1] Item.tag.SkullOwner.Name
scoreboard players set @s keiba.whip 15
loot give @s loot keiba_assistant_x18:whip/whip15
tellraw @s {"translate":"tellraw.keiba_assistant.give","with":[{"translate":"item.keiba_assistant.whip","color":"dark_purple","with":[{"text":"15"}]}]}
scoreboard players enable @s keiba.clear