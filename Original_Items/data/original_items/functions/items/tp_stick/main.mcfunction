### clear the slow falling
execute as @a[tag=original_tp_stick_temp,nbt={OnGround:true}] run effect clear @s minecraft:slow_falling 

### remove a temp tags
execute as @a[tag=original_tp_stick_temp,nbt={OnGround:true}] run tag @s remove original_tp_stick_temp
execute as @a[tag=original_tp_stick_1time_temp] run tag @s remove original_tp_stick_1time_temp

### tp
execute as @a[scores={origitem_click=1},tag=!original_tp_stick_temp] if data entity @s {SelectedItem:{tag:{originalitems:1}}} at @s run tp @s ~ ~50 ~
 
### add a tags
execute as @a[scores={origitem_click=1},tag=!original_tp_stick_temp] if data entity @s {SelectedItem:{tag:{originalitems:1}}} run tag @s add original_tp_stick_1time_temp
execute as @a[scores={origitem_click=1},tag=!original_tp_stick_temp] if data entity @s {SelectedItem:{tag:{originalitems:1}}} run tag @s add original_tp_stick_temp

### replace the item
execute as @a[tag=original_tp_stick_1time_temp] run replaceitem entity @s weapon air

### particle and sound
execute at @a[tag=original_tp_stick_1time_temp] run particle minecraft:dragon_breath ~ ~ ~ 1 1 1 0.05 25 force
execute at @a[tag=original_tp_stick_1time_temp] run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~

### give the slow falling
execute as @a[tag=original_tp_stick_temp] run effect give @s minecraft:slow_falling 1 1 true
