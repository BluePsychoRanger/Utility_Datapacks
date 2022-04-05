# stores the inventory of the player
# @s = player that needs an updated inventory
# located at @s
# run from bpr_inventory:update_inv

# clear the player's old inventory
clear @s

# copy hotbar and top two rows of the inventory
loot replace entity @s hotbar.0 27 mine 0 0 0 minecraft:air{drop_contents:1b}

# copy bottom row of inventory
data modify block 0 0 0 Items set from storage bpr:inventory BottomRow
loot replace entity @s inventory.18 9 mine 0 0 0 minecraft:air{drop_contents:1b}

# copy armor
data modify block 0 0 0 Items set from storage bpr:inventory Armor
loot replace entity @s armor.feet 4 mine 0 0 0 minecraft:air{drop_contents:1b}

# copy offhand
data modify block 0 0 0 Items append from storage bpr:inventory Offhand
loot replace entity @s weapon.offhand 1 mine 0 0 0 minecraft:air{drop_contents:1b}
