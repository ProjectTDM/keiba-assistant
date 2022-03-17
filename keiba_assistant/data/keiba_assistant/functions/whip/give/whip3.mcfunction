#gamerule sendCommandFeedback false
scoreboard players reset @s keiba.whip
advancement grant @s only keiba_assistant:whip/root
function keiba_assistant:whip/give/
data modify storage keiba_assistant: reserve.3 set from entity @e[tag=keibahead,sort=nearest,limit=1] Inventory[0].tag.SkullOwner.Name
tp @e[tag=keibahead,sort=nearest,limit=1] ~ -129 ~
loot spawn ~ ~ ~ loot keiba_assistant:whip/whip3
tellraw @s {"translate":"tellraw.keiba_assistant.give","with":[{"translate":"item.keiba_assistant.whip","color":"light_purple","with":[{"text":"3"}]}]}
scoreboard players enable @s keiba.clear