#3
title @a subtitle {"text":"スタートまで"}
title @a title {"text":"3","color":"dark_green"}
playsound block.note_block.harp master @a ~ ~ ~ 1 0
#2
schedule function keiba_assistant:countdown/2 20
#1
schedule function keiba_assistant:countdown/1 40
#スタート
schedule function keiba_assistant:countdown/start 60