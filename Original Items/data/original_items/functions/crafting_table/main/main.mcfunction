### craft the crafting table
execute as @e[type=minecraft:item_frame,tag=!My_crafter,nbt={Facing:1b,Item:{id:"minecraft:iron_ingot"}}] at @s if block ~ ~-1 ~ crafting_table run function original_items:crafting_table/main/make_crafter 

### right click to craft
execute as @e[type=minecraft:item_frame,tag=My_crafter,nbt={ItemRotation:1b,Item:{id:"minecraft:white_stained_glass_pane",tag:{Tags:["My_crafter"]}}}] at @s positioned ~ ~-1 ~ if block ~ ~ ~ dropper[facing=up] run function original_items:crafting_table/main/crafting

### condition to break the crafting table
execute at @e[type=minecraft:item_frame,tag=My_crafter] unless entity @e[type=item_frame,distance=..0.2,limit=1,sort=nearest,nbt={Facing:1b,Item:{id:"minecraft:white_stained_glass_pane",tag:{Tags:["My_crafter"]}}}] run function original_items:crafting_table/main/condition
execute at @e[type=minecraft:item_frame,tag=My_crafter] unless block ~ ~ ~ air run function original_items:crafting_table/main/condition
execute at @e[type=minecraft:item_frame,tag=My_crafter] unless block ~ ~-1 ~ dropper[facing=up] run function original_items:crafting_table/main/condition
