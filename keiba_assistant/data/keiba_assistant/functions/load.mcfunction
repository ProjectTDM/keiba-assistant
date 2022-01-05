#コマンドログを無効化
gamerule commandBlockOutput false
#スコアボード設定
#使用可能回数
scoreboard objectives add keiba.whip dummy {"translate":"scoreboard.keiba_assistant.whip"}
#にんじん付き棒のクリック検知
scoreboard objectives add keiba.whip_click used:carrot_on_a_stick
#順位
scoreboard objectives add keiba.rank dummy
#レース時間(tick)
scoreboard objectives add keiba.tick dummy
#レース時間(秒)
scoreboard objectives add keiba.time dummy {"translate":"scoreboard.keiba_assistant.time"}
scoreboard objectives setdisplay sidebar keiba.time
#レース中かどうか
scoreboard objectives add keiba.race dummy
#インストールされているかどうか(されていなければ初期化)
scoreboard objectives add keiba. dummy
execute unless score $keiba keiba. matches 1 run function keiba_assistant:welcome
scoreboard players set $keiba keiba. 1
#本関連
scoreboard objectives add keiba.whip1 trigger {"translate":"item.keiba_assistant.whip1"}
scoreboard objectives add keiba.whip2 trigger {"translate":"item.keiba_assistant.whip2"}
scoreboard objectives add keiba.whip3 trigger {"translate":"item.keiba_assistant.whip3"}
scoreboard objectives add keiba.whip4 trigger {"translate":"item.keiba_assistant.whip4"}
scoreboard objectives add keiba.whip.clear trigger "Clear"
#再インストール時用
execute as @a at @s run function keiba_assistant:enable