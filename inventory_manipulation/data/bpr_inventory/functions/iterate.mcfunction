# loops through all items in the storage to update it
# @s = player that needs an updated inventory
# located at @s
# run from bpr_inventory:update_items

data modify storage bpr:inventory item set from storage bpr:inventory items[-1]
function bpr_inventory:update_item
data modify storage bpr:inventory new_items append from storage bpr:inventory item

data remove storage bpr:inventory items[-1]
execute if data storage bpr:inventory items[-1] run function bpr_inventory:iterate
