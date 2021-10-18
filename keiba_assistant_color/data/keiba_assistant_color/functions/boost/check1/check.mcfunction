#使用可能回数が足りているかのチェック
#失敗処理(統合)へ
execute unless score @s whip >= $whip_uses whip_Temporary run function keiba_assistant_color:boost/fail
#成功処理(統合)へ
execute if score @s whip >= $whip_uses whip_Temporary run function keiba_assistant_color:boost/check1/success