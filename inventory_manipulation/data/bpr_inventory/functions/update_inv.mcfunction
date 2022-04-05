# stores the inventory of the player
# @s = player that needs an updated inventory
# located at @s
# run from bpr_inventory:get_inv

# modify offhand
data modify storage bpr:inventory item set from storage bpr:inventory Offhand
execute if data storage bpr:inventory Offhand run function bpr_inventory:update_item
execute if data storage bpr:inventory Offhand run data modify storage bpr:inventory Offhand set from storage bpr:inventory item

# modify armor
data modify storage bpr:inventory items set from storage bpr:inventory Armor
execute if data storage bpr:inventory Armor[-1] run function bpr_inventory:update_items
execute if data storage bpr:inventory Armor[-1] run data modify storage bpr:inventory Armor set from storage bpr:inventory items

# modify bottom row of inventory
data modify storage bpr:inventory items set from storage bpr:inventory BottomRow
execute if data storage bpr:inventory BottomRow[-1] run function bpr_inventory:update_items
execute if data storage bpr:inventory BottomRow[-1] run data modify storage bpr:inventory BottomRow set from storage bpr:inventory items

# modify hotbar and top two rows of inventory
data modify storage bpr:inventory items set from block 0 0 0 Items
execute if data block 0 0 0 Items run function bpr_inventory:update_items
execute if data block 0 0 0 Items run data modify block 0 0 0 Items set from storage bpr:inventory items

# move modified inventory into the player's inventory
function bpr_inventory:move_inv
