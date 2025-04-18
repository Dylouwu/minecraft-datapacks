execute as @a[gamemode=!spectator,predicate=multiplayer_sleep:overworld] if data entity @s sleeping_pos run tag @s add mpSleep.sleeping
execute store success score #sleeping mpSleep.dummy if entity @a[tag=mpSleep.sleeping]
execute if score #sleeping mpSleep.dummy matches 0 run tellraw @s {"text":"There are no sleeping players.","color":"red"}
execute unless score #sleeping mpSleep.dummy matches 0 run tellraw @s [{"text":"Sleeping players: ","color":"gold"},{"selector":"@a[tag=mpSleep.sleeping]","color":"yellow"}]
tag @a remove mpSleep.sleeping