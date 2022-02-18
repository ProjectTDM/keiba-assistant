#リタイア扱いにするためその人の時間のカウントを止める
tag @s remove keibatime
#シメる
kill @s
#不正したことの通知
tellraw @a {"translate":"tellraw.keiba_assistant.foul","with":[{"selector":"@s"}]}