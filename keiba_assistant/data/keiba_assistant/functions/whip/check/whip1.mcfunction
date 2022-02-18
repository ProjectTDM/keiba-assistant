#予約チェック
##予約されていた場合
execute as @s unless data storage keiba_assistant:whip {1:0} run function keiba_assistant:whip/reserve/whip1
##予約されていない場合
execute as @s if data storage keiba_assistant:whip {1:0} run advancement grant @s only keiba_assistant:whip/whip1