# カウント
scoreboard players add @a[tag=keibatime] keiba.time 1
# ループ
execute if score $keiba keiba.race matches 1 run schedule function keiba_assistant_x18:sys/time 1s