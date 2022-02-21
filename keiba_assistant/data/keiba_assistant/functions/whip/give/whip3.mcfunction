gamerule sendCommandFeedback false
scoreboard players reset @s keiba.whip
advancement grant @s only keiba_assistant:whip/root
function keiba_assistant:whip/give/
data modify storage keiba_assistant:whip 3 set from entity @e[tag=keibahead,sort=nearest,limit=1] Items[0].tag.SkullOwner.Name
item replace entity @e[tag=keibahead,sort=nearest,limit=1] container.0 with air
kill @e[tag=keibahead,sort=nearest,limit=1]
loot spawn ~ ~ ~ loot keiba_assistant:whip/whip3
tellraw @s {"translate":"tellraw.keiba_assistant.give","with":[{"translate":"item.keiba_assistant.whip3","color":"light_purple"}]}
scoreboard players enable @s keiba.clear