execute as @s if data storage keiba_assistant: {whip:{4:'{"translate":"item.keiba_assistant.whip","color":"dark_red","with":[{"text":4}]}'}} run function keiba_assistant:whip/reserved
execute as @s if data storage keiba_assistant: {whip:{4:'{"translate":"item.keiba_assistant.whip","color":"dark_green","with":[{"text":4}]}'}} run advancement grant @s until keiba_assistant:whip/whip4