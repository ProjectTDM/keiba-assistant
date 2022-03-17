# 失敗音
playsound minecraft:block.dispenser.fail master @s
# 周りに失敗したことをおしらせ
particle minecraft:dust 0 0 0 1 ~ ~0.5 ~ 0.5 0.5 0.5 1 50 force @a
# ブーストが使用できないことをアイテムスロットの上に表示
title @s actionbar [{"translate":"title.keiba_assistant.boost","bold":true,"color":"red","with":[{"text":"0"}]}]