#使用可能回数が足りているかのチェック
#失敗処理(統合)へ
execute unless score @s keiba.whip >= $whip_uses keiba.whip_Temp run function keiba_assistant_color:boost/fail
execute if score @s keiba.whip >= $whip_uses keiba.whip_Temp run function keiba_assistant_color:boost/check1/success