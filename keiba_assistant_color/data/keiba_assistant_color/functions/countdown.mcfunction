#レース開始
scoreboard players reset @a keiba.whip_click
scoreboard players set $race keiba.race 1

#titleの表示時間変更
title @a times 10 15 10

#音を鳴らす装置をワールドに置く(リピーター3つ(最大遅延2つ、2遅延(クリック一回)1つ)挟んで音符ブロックを置くと表示と合うようになります)
#または下のコマンドの座標を鳴らしたい場所にそれぞれ変更してください(playsoundコマンドが書いてあるところをそれぞれのゲートの待機場所の座標に置き換えてください(VSCodeならCtrl+Shift+Hでまとめて置換できます))
##playsound block.note_block.harp master @a [座標を入力] 1 0

#3
title @a subtitle {"translate":"title.keiba_assistant.ready_start","bold": true}
title @a title {"text":"3","bold": true,"color":"dark_green"}
playsound block.note_block.harp master @a 5.50 63.50 10.50 1 0
playsound block.note_block.harp master @a 5.50 63.50 12.50 1 0
playsound block.note_block.harp master @a 5.50 63.50 14.50 1 0
playsound block.note_block.harp master @a 5.50 63.50 16.50 1 0
playsound block.note_block.harp master @a 5.50 63.50 18.50 1 0
playsound block.note_block.harp master @a 5.50 63.50 20.50 1 0
playsound block.note_block.harp master @a 5.50 63.50 22.50 1 0
playsound block.note_block.harp master @a 5.50 63.50 24.50 1 0
playsound block.note_block.harp master @a 5.50 63.50 26.50 1 0
playsound block.note_block.harp master @a 5.50 63.50 28.50 1 0
playsound block.note_block.harp master @a 5.50 63.50 30.50 1 0
playsound block.note_block.harp master @a 5.50 63.50 32.50 1 0
playsound block.note_block.harp master @a 5.50 63.50 34.50 1 0
playsound block.note_block.harp master @a 5.50 63.50 36.50 1 0
playsound block.note_block.harp master @a 5.50 63.50 38.50 1 0
playsound block.note_block.harp master @a 5.50 63.50 40.50 1 0

#2
schedule function keiba_assistant_color:countdown/2 20

#1
schedule function keiba_assistant_color:countdown/1 40

#スタート
schedule function keiba_assistant_color:countdown/start 60