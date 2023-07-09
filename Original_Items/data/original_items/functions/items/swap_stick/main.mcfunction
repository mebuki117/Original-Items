### summon dummy
execute as @a[scores={origitem_click=1}] if data entity @s {SelectedItem:{tag:{originalitems:2}}} at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,Marker:true,Tags:["swap_dummy"]}

### tp me to nearest player
execute as @a[scores={origitem_click=1}] if data entity @s {SelectedItem:{tag:{originalitems:2}}} at @s run tp @s @p[gamemode=survival,distance=..30]

### partincle and sound
execute as @a[scores={origitem_click=1}] if data entity @s {SelectedItem:{tag:{originalitems:2}}} at @s run particle minecraft:dragon_breath ~ ~ ~ 1 1 1 0.05 25 force
execute as @a[scores={origitem_click=1}] if data entity @s {SelectedItem:{tag:{originalitems:2}}} at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~

### tp nearest player to dummy
execute as @a[scores={origitem_click=1}] if data entity @s {SelectedItem:{tag:{originalitems:2}}} at @s run tp @p[gamemode=survival] @e[type=minecraft:armor_stand,tag=swap_dummy,sort=nearest,distance=..30,limit=1]

### partincle and sound
execute as @a[scores={origitem_click=1}] if data entity @s {SelectedItem:{tag:{originalitems:2}}} at @e[type=minecraft:armor_stand,tag=swap_dummy,sort=nearest,limit=1] run particle minecraft:dragon_breath ~ ~ ~ 1 1 1 0.05 25 force
execute as @a[scores={origitem_click=1}] if data entity @s {SelectedItem:{tag:{originalitems:2}}} at @e[type=minecraft:armor_stand,tag=swap_dummy,sort=nearest,limit=1] run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~

### kill dummy
execute as @a[scores={origitem_click=1}] if data entity @s {SelectedItem:{tag:{originalitems:2}}} run kill @e[type=minecraft:armor_stand,tag=swap_dummy,sort=nearest,limit=1]

### replace the item
execute as @a[scores={origitem_click=1}] if data entity @s {SelectedItem:{tag:{originalitems:2}}} run replaceitem entity @s weapon air