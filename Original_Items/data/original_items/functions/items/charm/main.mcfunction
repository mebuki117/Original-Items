### add a temp tag
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{originalitems:4}}]}] if score @s origitem_HP <= origitem_debug origitem_HP_10 run tag @s add original_charm_gold_1time_temp

### replace the item
execute as @a[tag=original_charm_gold_1time_temp] run replaceitem entity @s weapon.offhand air

### particle and sound
execute at @a[tag=original_charm_gold_1time_temp] run particle minecraft:totem_of_undying ~ ~ ~ 1 1 1 0.05 25 force
execute at @a[tag=original_charm_gold_1time_temp] run playsound minecraft:item.totem.use master @a ~ ~ ~ 0.5

### give a regeneration
execute as @a[tag=original_charm_gold_1time_temp] run effect give @s minecraft:regeneration 10 0 false

### remove a temp tag
tag @a remove original_charm_gold_1time_temp