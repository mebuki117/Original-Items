### clear a slow falling
execute as @a[tag=origitem_tp_stick,nbt={OnGround:true}] run effect clear @s minecraft:slow_falling 

### remove a temp tags
execute as @a[tag=origitem_tp_stick,nbt={OnGround:true}] run tag @s remove origitem_tp_stick
execute as @a[tag=origitem_tp_stick_2,nbt={OnGround:true}] run tag @s remove origitem_tp_stick_2