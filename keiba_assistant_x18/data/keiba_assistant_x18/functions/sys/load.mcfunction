# アップデート用
execute unless data storage keiba_assistant_x18: {ver:4.1.4} run function keiba_assistant_x18:sys/update
# 初回インストール用
execute unless data storage keiba_assistant_x18: {installed:1} run function keiba_assistant_x18:sys/welcome