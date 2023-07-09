### tp
execute as @a[scores={origitem_click=1},tag=!origitem_tp_stick] if data entity @s {SelectedItem:{tag:{originalitems:1}}} at @s run tp @s ~ ~30 ~

### partincle and sound
execute as @a[scores={origitem_click=1},tag=!origitem_tp_stick] if data entity @s {SelectedItem:{tag:{originalitems:1}}} at @s run particle minecraft:dragon_breath ~ ~ ~ 1 1 1 0.05 25 force
execute as @a[scores={origitem_click=1},tag=!origitem_tp_stick] if data entity @s {SelectedItem:{tag:{originalitems:1}}} at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~

### add temp tag
execute as @a[scores={origitem_click=1},tag=!origitem_tp_stick] if data entity @s {SelectedItem:{tag:{originalitems:1}}} run tag @s add origitem_tp_stick

### replace the item
execute as @a[scores={origitem_click=1},tag=origitem_tp_stick,tag=!origitem_tp_stick_2] run replaceitem entity @s weapon air

### add temp tag 2
execute as @a[scores={origitem_click=1},tag=origitem_tp_stick,tag=!origitem_tp_stick_2] run tag @s add origitem_tp_stick_2


### give a slow falling
execute as @a[tag=origitem_tp_stick] run effect give @s minecraft:slow_falling 1 1 true

### various remove
execute as @a[tag=origitem_tp_stick] run schedule function original_items:items/tp_stick/removes 2t append