execute store result score $kattersstructures.birch_village.beekeeper.trade kattersstructures.technical run random value 1..2

execute if score $kattersstructures.birch_village.beekeeper.trade kattersstructures.technical matches 1 run data modify entity @s Offers.Recipes append value {rewardExp:1b,xp:10,priceMultiplier:0.05f,demand:-12,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:honeycomb",count:3}}
execute if score $kattersstructures.birch_village.beekeeper.trade kattersstructures.technical matches 2 run data modify entity @s Offers.Recipes append value {rewardExp:1b,xp:10,priceMultiplier:0.05f,demand:-12,buy:{id:"minecraft:emerald",count:2},sell:{id:"minecraft:honey_bottle",count:1}}

tag @s remove katters_structures.beekeeper
tag @s add katters_structures.beekeeper_2