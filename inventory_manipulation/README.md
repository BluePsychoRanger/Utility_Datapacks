# Inventory Manipulation
This data pack allows for inventory manipulation upon a player obtaining an item. This allows for replacement or modification of certain items within a player's inventory, without modifying other items.

## Setup

### Updates to the MC world
This data pack assumes there is a yellow shulker box at `0 0 0`. Either place a yellow shulker box at that location or find and replace `0 0 0` to match coordinates of a known location of a yellow shulker box.

### Files to update
`bpr_inventory/tags/items/tracked_items.json`

This is a list of items that will trigger the inventory checks. This means if a player picks up or drops this item, the function to check if the inventory needs to update will trigger. Update this list to any items that you want to check (usually these would be the ones that you'd replace or update).

--

`bpr_inventory/functions/check_inv.mcfunction` 

This function runs the checks to verify that the inventory should be updated. There are some examples found in the function file. Update that file to check the items you need.

--

`bpr_inventory/functions/update_item.mcfunction` 

This runs the modifications of each individual item. These updates will apply to all items in the player's inventory. There are some examples found in the function file. Update that file to modify the items as you need.
