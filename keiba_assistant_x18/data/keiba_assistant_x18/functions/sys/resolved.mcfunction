# 本の表示更新前準備
loot replace entity @s[predicate=keiba_assistant_x18:book/main] weapon.mainhand loot keiba_assistant_x18:commandbook
loot replace entity @s[predicate=keiba_assistant_x18:book/off] weapon.offhand loot keiba_assistant_x18:commandbook
# advancementの剥奪
advancement revoke @s only keiba_assistant_x18:commandbook