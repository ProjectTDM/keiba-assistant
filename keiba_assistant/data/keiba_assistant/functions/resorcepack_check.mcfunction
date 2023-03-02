# CustomModelDataを使っているカスタムアイテムをすべて渡す
## 鞭
loot give @s loot keiba_assistant:whip
## 看板
function keiba_assistant:sign
## 本
loot give @s loot keiba_assistant:commandbook
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
tellraw @s {"translate":"book.keiba_assistant.default"}
tellraw @s {"translate":"item.keiba_assistant.commandbook"}
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
tellraw @s {"translate":"tellraw.keiba_assistant.welcome"}
tellraw @s {"translate":"tellraw.keiba_assistant.clear"}
tellraw @s {"translate":"tellraw.keiba_assistant.give"}
tellraw @s {"translate":"tellraw.keiba_assistant.foul"}
tellraw @s {"translate":"tellraw.keiba_assistant.winner"}
tellraw @s {"translate":"tellraw.keiba_assistant.rank"}
## 終了
tellraw @s {"text":"---ここまで(to here)---","color":"green"}
# カスタムで用意している音を鳴らす
playsound keiba_assistant:whip master @s
## 終了メッセージ
tellraw @s {"text":"音のチェック終了(End of sound check)","color":"yellow"}