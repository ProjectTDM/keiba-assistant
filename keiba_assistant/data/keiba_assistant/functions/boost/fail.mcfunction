#ブーストが使用できないことをアイテムスロットの上に表示
title @s actionbar {"text":"もうこれ以上使用できない！","color":"red"}
#失敗音
playsound minecraft:block.dispenser.fail master @s
#周りに失敗したことをおしらせ(これで他プレイヤーが戦略を練れるように)
particle minecraft:smoke ~ ~ ~ 0.1 0.1 0.1 0.1 30 force @s