scoreboard players reset @s keiba.give
data modify storage keiba_assistant_x18: whip.10 set value '{"translate":"item.keiba_assistant.whip","color":"dark_red","with":[{"text":10}]}'
loot spawn ~ -129 ~ loot keiba_assistant_x18:playerhead
data modify storage keiba_assistant_x18: whip.Name.10 set from entity @e[type=item,distance=..1,y=-129,limit=1] Item.tag.SkullOwner.Name
scoreboard players set @s keiba.whip 10
loot give @s loot keiba_assistant_x18:whip/whip10
tellraw @s {"translate":"tellraw.keiba_assistant.give","with":[{"translate":"item.keiba_assistant.whip","color":"#223a6e","with":[{"text":"10"}]}]}
scoreboard players enable @s keiba.clear