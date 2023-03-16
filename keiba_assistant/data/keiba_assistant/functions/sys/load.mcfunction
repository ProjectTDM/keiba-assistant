# アップデート用
execute unless data storage keiba_assistant: {ver:4.2.1} run function keiba_assistant:sys/update
# 初回インストール用
execute unless data storage keiba_assistant: {installed:1} run function keiba_assistant:sys/welcome