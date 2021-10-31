#リタイア扱いにするためその人の時間のカウントを止める
tag @s remove keibatime
#シメる
kill @s
#全体にコースの内側に入ったことの通知
tellraw @a {"translate":"tellraw.keiba_assistant.foul","with":[{"selector":"@s"}]}