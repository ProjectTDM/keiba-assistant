execute store result storage keiba_assistant:count 1tick int 1 run data get storage keiba_assistant:count 1tick 0.9999999999
execute unless data storage keiba_assistant:count {1tick:0} run schedule function keiba_assistant:countdown/ 1t