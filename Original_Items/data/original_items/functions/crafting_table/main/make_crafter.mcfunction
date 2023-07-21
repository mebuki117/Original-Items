### crafting the crafting table
setblock ~ ~-1 ~ air
execute positioned ~ ~-1 ~ run kill @e[type=item,nbt={Item:{id:"minecraft:dropper",Count:1b}},limit=1,sort=nearest]
setblock ~ ~-1 ~ dropper[facing=up]{CustomName:'{"text":"Original Crafting Table"}'}
data merge entity @s {Invulnerable:1,Item:{id:"minecraft:white_stained_glass_pane",tag:{CustomModelData:1,Tags:["My_crafter"]}}}
tag @s add My_crafter
playsound minecraft:block.anvil.use master @a