#周りの人にブーストかかったことをお知らせ(これで他プレイヤーが戦略を練れるように)
particle minecraft:cloud ~ ~0.5 ~ 0.1 0.1 0.1 0.1 30 force @a
#成功音(リソースパックで鞭の音に変更済み)
playsound minecraft:entity.wolf.howl master @s ~ ~ ~ 80
#ブースト使用回数をアイテムスロットの上に表示
title @s actionbar ["",{"text":"残りブースト数","bold": true},{"score":{"name":"@s","objective":"whip"},"color": "gold"}]