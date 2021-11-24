#本関連
execute as @a[tag=!keibabook] at @s run function keiba_assistant:enable
function keiba_assistant:trigger
#レース中かどうか
execute if score $race keiba.race matches 1 run function keiba_assistant:race