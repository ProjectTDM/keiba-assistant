# 本の表示更新前準備
loot replace entity @s[predicate=keiba_assistant:book/main] weapon.mainhand loot keiba_assistant:commandbook
loot replace entity @s[predicate=keiba_assistant:book/off] weapon.offhand loot keiba_assistant:commandbook
# advancementの剥奪
advancement revoke @s only keiba_assistant:commandbook