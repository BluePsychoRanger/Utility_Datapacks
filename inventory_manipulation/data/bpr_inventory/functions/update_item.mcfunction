# updates the specific item in the storage
# @s = player that needs an updated inventory
# located at @s
# run from bpr_inventory:iterate
# and from bpr_inventory:update_inv

# example: add a specific tag to untagged bread
execute if data storage bpr:inventory item{id:"minecraft:bread"} unless data storage bpr:inventory item{tag:{}} run data modify storage bpr:inventory item.tag.random_tag set value 1b

# example: remove the sharpness enchantment from all items
data remove storage bpr:inventory item.tag.Enchantments[{id:"minecraft:sharpness"}]

# replace a leather helmet with a diamond helmet (keeps enchantments)
execute if data storage bpr:inventory item{id:"minecraft:leather_helmet"} run data modify storage bpr:inventory item.id set value "minecraft:diamond_helmet"
