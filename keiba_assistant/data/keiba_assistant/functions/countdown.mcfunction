#レース開始
scoreboard players reset @a keiba.whip_click
scoreboard players set $race keiba.race 1
#titleの表示時間変更
title @a times 10 15 10
#音を鳴らす装置をワールドに置くか(リピーター3つ挟んで音符ブロックを置くと表示と合うようになります)下のコマンドの座標を鳴らしたい場所にそれぞれ変更してください(playsoundコマンドが書いてあるところをそれぞれのゲートの待機場所の座標に置き換えてください)
##playsound block.note_block.harp master @a [座標を入力] 1 0
#3
title @a subtitle {"translate":"title.keiba_assistant.ready_start"}
title @a title {"text":"3","color":"dark_green"}
playsound block.note_block.harp master @a -33.5 70.5 419.5 1 0
playsound block.note_block.harp master @a -35.5 70.5 419.5 1 0
playsound block.note_block.harp master @a -37.5 70.5 419.5 1 0
playsound block.note_block.harp master @a -39.5 70.5 419.5 1 0
#2
schedule function keiba_assistant:countdown/2 20
#1
schedule function keiba_assistant:countdown/1 40
#スタート
schedule function keiba_assistant:countdown/start 60