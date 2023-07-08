### clear a slow falling
execute as @a[tag=origitem_rise,nbt={OnGround:true}] run effect clear @s minecraft:slow_falling 

### remove a temp tags
execute as @a[tag=origitem_rise,nbt={OnGround:true}] run tag @s remove origitem_rise
execute as @a[tag=origitem_rise_2,nbt={OnGround:true}] run tag @s remove origitem_rise_2