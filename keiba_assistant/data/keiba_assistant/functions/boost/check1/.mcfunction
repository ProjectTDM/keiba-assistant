#使用可能回数が足りているかのチェック(デフォルトだと1未満で失敗)
execute unless score @s whip >= $whip_uses whip_Temporary run function keiba_assistant:boost/fail
execute if score @s whip >= $whip_uses whip_Temporary run function keiba_assistant:boost/check1/success