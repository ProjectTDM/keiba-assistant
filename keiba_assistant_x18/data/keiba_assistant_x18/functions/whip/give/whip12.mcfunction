scoreboard players reset @s keiba.give
data modify storage keiba_assistant_x18: whip.12 set value '{"translate":"item.keiba_assistant.whip","color":"dark_red","with":[{"text":12}]}'
loot spawn ~ -129 ~ loot keiba_assistant_x18:playerhead
data modify storage keiba_assistant_x18: whip.Name.12 set from entity @e[type=item,distance=..1,y=-129,limit=1] Item.tag.SkullOwner.Name
scoreboard players set @s keiba.whip 12
loot give @s loot keiba_assistant_x18:whip/whip12
tellraw @s {"translate":"tellraw.keiba_assistant.give","with":[{"translate":"item.keiba_assistant.whip","color":"#724d30","with":[{"text":"12"}]}]}
scoreboard players enable @s keiba.clear