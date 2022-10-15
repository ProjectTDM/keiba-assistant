# 鞭の取得状況表示(名前表示)
tellraw @s {"translate":"book.keiba_assistant.usage"}
tellraw @s [{"translate":"item.keiba_assistant.whip","color":"red","with":[{"text":"1"}]},{"text":"→ "},{"nbt":"whip.Name.1","storage":"keiba_assistant:","interpret":false,"color":"white"}]
tellraw @s [{"translate":"item.keiba_assistant.whip","color":"blue","with":[{"text":"2"}]},{"text":"→ "},{"nbt":"whip.Name.2","storage":"keiba_assistant:","interpret":false,"color":"white"}]
tellraw @s [{"translate":"item.keiba_assistant.whip","color":"light_purple","with":[{"text":"3"}]},{"text":"→ "},{"nbt":"whip.Name.3","storage":"keiba_assistant:","interpret":false,"color":"white"}]
tellraw @s [{"translate":"item.keiba_assistant.whip","color":"dark_green","with":[{"text":"4"}]},{"text":"→ "},{"nbt":"whip.Name.4","storage":"keiba_assistant:","interpret":false,"color":"white"}]