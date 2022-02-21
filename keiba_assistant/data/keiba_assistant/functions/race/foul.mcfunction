#リタイア扱いにするためその人の時間のカウントを止める
tag @s remove keibatime
#effectクリア
effect clear @s
#不正を犯したものをkill
kill @s[type=player]
#不正したことの通知
execute if entity @s[type=player] run tellraw @a {"translate":"tellraw.keiba_assistant.foul","with":[{"selector":"@s[type=player]"}]}