# カスタムで用意している音を鳴らす
playsound keiba_assistant:whip master @s
# CustomModelDataを使っているカスタムアイテムをすべて渡す
## 鞭
## すぐ消せるように返却を先に実行
trigger keiba.clear set 1
loot give @s loot keiba_assistant_x18:whip/whip1
loot give @s loot keiba_assistant_x18:whip/whip2
loot give @s loot keiba_assistant_x18:whip/whip3
loot give @s loot keiba_assistant_x18:whip/whip4
loot give @s loot keiba_assistant_x18:whip/whip5
loot give @s loot keiba_assistant_x18:whip/whip6
loot give @s loot keiba_assistant_x18:whip/whip7
loot give @s loot keiba_assistant_x18:whip/whip8
loot give @s loot keiba_assistant_x18:whip/whip9
loot give @s loot keiba_assistant_x18:whip/whip10
loot give @s loot keiba_assistant_x18:whip/whip11
loot give @s loot keiba_assistant_x18:whip/whip12
loot give @s loot keiba_assistant_x18:whip/whip13
loot give @s loot keiba_assistant_x18:whip/whip14
loot give @s loot keiba_assistant_x18:whip/whip15
loot give @s loot keiba_assistant_x18:whip/whip16
loot give @s loot keiba_assistant_x18:whip/whip17
loot give @s loot keiba_assistant_x18:whip/whip18
# 全メッセージの表示
## 開始
tellraw @s {"text":"---ここからリソースパックのテスト\n(Test the resource pack from here)---","color":"green"}
## 共通
tellraw @s {"translate":"tellraw.tunakan.welcome"}
tellraw @s {"translate":"tellraw.tunakan.creator"}
## 個別
tellraw @s {"translate":"book.keiba_assistant.command"}
tellraw @s {"translate":"book.keiba_assistant.start"}
tellraw @s {"translate":"book.keiba_assistant.reset"}
tellraw @s {"translate":"book.keiba_assistant.emergency"}
tellraw @s {"translate":"book.keiba_assistant.reset_whip"}
tellraw @s {"translate":"book.keiba_assistant.default"}
tellraw @s {"translate":"book.keiba_assistant.usage"}
tellraw @s {"translate":"book.keiba_assistant.detail"}
tellraw @s {"translate":"book.keiba_assistant.available"}
tellraw @s {"translate":"book.keiba_assistant.using"}
tellraw @s {"translate":"book.keiba_assistant.clear"}
tellraw @s {"translate":"book.keiba_assistant.whip"}
tellraw @s {"translate":"item.keiba_assistant.commandbook"}
tellraw @s {"translate":"item.keiba_assistant.whipbook"}
tellraw @s {"translate":"item.keiba_assistant.resetsign"}
tellraw @s {"translate":"item.keiba_assistant.whipsign"}
tellraw @s {"translate":"item.keiba_assistant.returnsign"}
tellraw @s {"translate":"item.keiba_assistant.remain"}
tellraw @s {"translate":"item.keiba_assistant.whip"}
tellraw @s {"translate":"scoreboard.keiba_assistant.remain"}
tellraw @s {"translate":"scoreboard.keiba_assistant.time"}
tellraw @s {"translate":"sign.keiba_assistant.click"}
tellraw @s {"translate":"sign.keiba_assistant.reset"}
tellraw @s {"translate":"sign.keiba_assistant.return"}
tellraw @s {"translate":"sign.keiba_assistant.whip"}
tellraw @s {"translate":"storage.keiba_assistant.countdown"}
tellraw @s {"translate":"storage.keiba_assistant.race"}
tellraw @s {"translate":"storage.keiba_assistant.stop"}
tellraw @s {"translate":"storage.keiba_assistant.wait"}
tellraw @s {"translate":"title.keiba_assistant.ready"}
tellraw @s {"translate":"title.keiba_assistant.boost"}
tellraw @s {"translate":"title.keiba_assistant.start"}
tellraw @s {"translate":"tellraw.keiba_assistant_x18.welcome"}
tellraw @s {"translate":"tellraw.keiba_assistant.clear"}
tellraw @s {"translate":"tellraw.keiba_assistant.clear.system"}
tellraw @s {"translate":"tellraw.keiba_assistant.give"}
tellraw @s {"translate":"tellraw.keiba_assistant.reserve"}
tellraw @s {"translate":"tellraw.keiba_assistant.foul"}
tellraw @s {"translate":"tellraw.keiba_assistant.winner"}
tellraw @s {"translate":"tellraw.keiba_assistant.rank"}
## 終了
tellraw @s {"text":"---ここまで(to here)---","color":"green"}
# 見せたいメッセージ
tellraw @s {"text":"音のチェック終了(End of sound check)","color":"yellow"}
tellraw @s {"text":"渡された鞭は持って右クリックするとまとめて消えます\n(The whip that is given to you will disappear all together if you hold it and right click on it.)","color":"light_purple"}