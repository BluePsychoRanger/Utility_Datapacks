# checks the inventory for items that needs to be updated
# @s = player that moved an item in their inventory
# located at @s
# run from advancement "bpr_inventory:check_inventory"

# revoke the advancement
advancement revoke @s only bpr_inventory:check_inventory

scoreboard players reset $needs_update bpr_inv

# example: check if the player has any bread that has no nbt (normal bread)
execute store result score $total bpr_inv run clear @s bread 0
execute store result score $tagged bpr_inv run clear @s bread{} 0
execute if score $total bpr_inv > $tagged bpr_inv run scoreboard players set $needs_update bpr_inv 1

# example: check if the player has a stone sword with sharpness
execute if data entity @s Inventory[{id:"minecraft:stone_sword",tag:{Enchantments:[{id:"minecraft:sharpness"}]}}] run scoreboard players set $needs_update bpr_inv 1

# example: check if the player is wearing a leather helmet
execute if data entity @s Inventory[{Slot:103b,id:"minecraft:leather_helmet"}] run scoreboard players set $needs_update bpr_inv 1

execute if score $needs_update bpr_inv matches 1.. run function bpr_inventory:get_inv
