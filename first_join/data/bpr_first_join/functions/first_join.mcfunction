# runs a function for every player when they first join the world
# @s = player who just joined
# located at @s
# run from advancement bpr_first_join/first_join

# set the player's spawnpoint to a specific location
spawnpoint @s 0 64 0

# give new players an id
execute store result score @s bpr_id run scoreboard players add $max bpr_id 1

# give new players a starter kit
loot give @s loot bpr_first_join:starter_kit
## equip player with armor
item replace entity @s armor.head with minecraft:leather_helmet
item replace entity @s armor.chest with minecraft:leather_chestplate
item replace entity @s armor.legs with minecraft:leather_leggings
item replace entity @s armor.feet with minecraft:leather_boots

# give new players a dog
summon wolf ~ ~ ~ {Tags:["bpr_new_wolf"]}
data modify entity @e[type=wolf,tag=bpr_new_wolf,limit=1] Owner set from entity @s UUID
tag @e[type=wolf,distance=..1] remove bpr_new_wolf
