scoreboard players reset @s keiba.give
data modify storage keiba_assistant_x18: whip.6 set value '{"translate":"item.keiba_assistant.whip","color":"dark_red","with":[{"text":6}]}'
loot spawn ~ -129 ~ loot keiba_assistant_x18:playerhead
data modify storage keiba_assistant_x18: whip.Name.6 set from entity @e[type=item,distance=..1,y=-129,limit=1] Item.tag.SkullOwner.Name
scoreboard players set @s keiba.whip 6
loot give @s loot keiba_assistant_x18:whip/whip6
tellraw @s {"translate":"tellraw.keiba_assistant.give","with":[{"translate":"item.keiba_assistant.whip","color":"green","with":[{"text":"6"}]}]}
scoreboard players enable @s keiba.clear