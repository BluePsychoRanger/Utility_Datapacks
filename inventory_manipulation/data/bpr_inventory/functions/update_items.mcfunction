# prepares the items in storage for iteration
# @s = player that needs an updated inventory
# located at @s
# run from bpr_inventory:update_inv

data remove storage bpr:inventory new_items
function bpr_inventory:iterate
data modify storage bpr:inventory items set from storage bpr:inventory new_items
