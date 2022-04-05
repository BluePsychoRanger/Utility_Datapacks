# stores the inventory of the player
# @s = player that needs an updated inventory
# located at @s
# run from bpr_inventory:check_inv

# clear previous stored inventory
data remove block 0 0 0 Items
data merge storage bpr:inventory {Armor:[],BottomRow:[]}

# copy offhand
item replace block 0 0 0 container.0 from entity @s weapon.offhand
data modify storage bpr:inventory Offhand set from block 0 0 0 Items[]

# copy armor
item replace block 0 0 0 container.0 from entity @s armor.feet
item replace block 0 0 0 container.1 from entity @s armor.legs
item replace block 0 0 0 container.2 from entity @s armor.chest
item replace block 0 0 0 container.3 from entity @s armor.head
data modify storage bpr:inventory Armor append from block 0 0 0 Items[]

# copy bottom row of inventory
item replace block 0 0 0 container.0 from entity @s inventory.18
item replace block 0 0 0 container.1 from entity @s inventory.19
item replace block 0 0 0 container.2 from entity @s inventory.20
item replace block 0 0 0 container.3 from entity @s inventory.21
item replace block 0 0 0 container.4 from entity @s inventory.22
item replace block 0 0 0 container.5 from entity @s inventory.23
item replace block 0 0 0 container.6 from entity @s inventory.24
item replace block 0 0 0 container.7 from entity @s inventory.25
item replace block 0 0 0 container.8 from entity @s inventory.26
data modify storage bpr:inventory BottomRow append from block 0 0 0 Items[]

# copy hotbar and top two rows of the inventory
data remove block 0 0 0 Items
data modify block 0 0 0 Items append from entity @s Inventory[]

# update the inventory
function bpr_inventory:update_inv
