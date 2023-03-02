# 鞭の回収
clear @s carrot_on_a_stick{tag:keibawhip}
# 鞭を所持していないことに
tag @s remove keibahave
# 鞭を返却したことの通知
tellraw @s {"translate":"tellraw.keiba_assistant.clear"}