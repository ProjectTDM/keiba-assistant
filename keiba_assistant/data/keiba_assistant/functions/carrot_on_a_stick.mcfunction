#鞭のニンジン棒の右クリック検知(CustomModelDataごとにどのタグの動物にブーストするか決めてるので変えない)
execute as @a[predicate=keiba_assistant:carrot/click1] at @s run function keiba_assistant:boost/check1/uses
execute as @a[predicate=keiba_assistant:carrot/click2] at @s run function keiba_assistant:boost/check2/uses
execute as @a[predicate=keiba_assistant:carrot/click3] at @s run function keiba_assistant:boost/check3/uses
execute as @a[predicate=keiba_assistant:carrot/click4] at @s run function keiba_assistant:boost/check4/uses