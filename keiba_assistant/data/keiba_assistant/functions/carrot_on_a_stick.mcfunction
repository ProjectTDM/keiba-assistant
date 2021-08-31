#鞭のニンジン棒の右クリック検知(CustomModelDataごとにどのタグの動物にブーストするか決めてるので変えない)
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}},scores={whip_click=1..}] at @s run function keiba_assistant:boost/check1/uses
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}},scores={whip_click=1..}] at @s run function keiba_assistant:boost/check2/uses
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}}},scores={whip_click=1..}] at @s run function keiba_assistant:boost/check3/uses
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:4}}},scores={whip_click=1..}] at @s run function keiba_assistant:boost/check4/uses