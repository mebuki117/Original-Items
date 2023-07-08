### delete crafting table
kill @e[distance=..0.2,type=item_frame,limit=1,sort=nearest]
fill ~ ~-1 ~ ~ ~-1 ~ air destroy
kill @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:dropper",Count:1b}}]
kill @e[type=item,distance=..0.2,limit=1,sort=nearest,nbt={Item:{id:"minecraft:white_stained_glass_pane",Count:1b}}]

### materials return
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:crafting_table",Count:1b}}
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:item_frame",Count:1b}}
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_ingot",Count:1b}}
