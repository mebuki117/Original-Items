### craft recipes
execute if block ~ ~ ~ dropper[facing=up]{Items:[{Slot: 1b, id: "minecraft:quartz", Count: 1b}, {Slot: 2b, id: "minecraft:ender_pearl", Count: 1b}, {Slot: 4b, id: "minecraft:gold_block", Count: 1b}, {Slot: 5b, id: "minecraft:quartz", Count: 1b}, {Slot: 6b, id: "minecraft:stick", Count: 1b}]} run function original_items:crafting_table/results/craft1
execute if block ~ ~ ~ dropper[facing=up]{Items:[{Slot: 1b, id: "minecraft:obsidian", Count: 1b}, {Slot: 3b, id: "minecraft:obsidian", Count: 1b}, {Slot: 4b, id: "minecraft:warped_fungus_on_a_stick", Count: 1b, tag: {originalitems: 1, CustomModelData: 1, Damage: 0}}, {Slot: 5b, id: "minecraft:obsidian", Count: 1b}, {Slot: 7b, id: "minecraft:obsidian", Count: 1b}]} run function original_items:crafting_table/results/craft2
execute if block ~ ~ ~ dropper[facing=up]{Items:[RECIPE]} run function original_items:craft/

### remove rotation item
data merge entity @s {ItemRotation:0b}