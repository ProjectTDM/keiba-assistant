# 赤石愛さん作1秒毎実行コマンドを利用
# 概要→https://twitter.com/AiAkaishi/status/1308719263885094912
# 詳細→https://discord.com/channels/378467571051134976/425993528183881745/758695504187752468

execute store result storage keiba_assistant: countdown int 1 run data get storage keiba_assistant: countdown 0.9999999999
execute unless data storage keiba_assistant: {countdown:0} run schedule function keiba_assistant:countdown/ 1t