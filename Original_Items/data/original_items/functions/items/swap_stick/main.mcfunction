### add a temp tags
execute as @a[scores={origitem_click=1},gamemode=survival] if data entity @s {SelectedItem:{tag:{originalitems:2}}} at @s at @p[distance=0.001..,gamemode=survival] run tag @s add original_swap_player_1time_temp_1
execute as @a[tag=original_swap_player_1time_temp_1] at @s run tag @p[distance=0.001..,gamemode=survival] add original_swap_player_1time_temp_2

### summon a dummy 1
execute as @a[tag=original_swap_player_1time_temp_1] at @s run summon minecraft:armor_stand ~ ~ ~ {Small:true,Marker:true,Tags:["original_swap_dummy_1"]}
execute as @a[tag=original_swap_player_1time_temp_1] at @s run tp @e[type=minecraft:armor_stand,tag=original_swap_dummy_1,sort=nearest,limit=1] @s

### summon a dummy 2
execute as @a[tag=original_swap_player_1time_temp_2] at @s run summon minecraft:armor_stand ~ ~ ~ {Small:true,Marker:true,Tags:["original_swap_dummy_2"]}
execute as @a[tag=original_swap_player_1time_temp_2] at @s run tp @e[type=minecraft:armor_stand,tag=original_swap_dummy_2,sort=nearest,limit=1] @s

### tp a target to dummy
execute as @a[tag=original_swap_player_1time_temp_1] run tp @s @e[type=minecraft:armor_stand,tag=original_swap_dummy_2,sort=nearest,limit=1]
execute as @a[tag=original_swap_player_1time_temp_2] run tp @s @e[type=minecraft:armor_stand,tag=original_swap_dummy_1,sort=nearest,limit=1]

### replace the item
execute as @a[tag=original_swap_player_1time_temp_1] run replaceitem entity @s weapon air

### particle and sound 1
execute at @a[tag=original_swap_player_1time_temp_1] run particle minecraft:dragon_breath ~ ~ ~ 1 1 1 0.05 25 force
execute at @a[tag=original_swap_player_1time_temp_1] run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~

### particle and sound 2
execute at @a[tag=original_swap_player_1time_temp_2] run particle minecraft:dragon_breath ~ ~ ~ 1 1 1 0.05 25 force
execute at @a[tag=original_swap_player_1time_temp_2] run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~

### kill a dummys
execute as @a[tag=original_swap_player_1time_temp_1] run kill @e[type=minecraft:armor_stand,tag=original_swap_dummy_1]
execute as @a[tag=original_swap_player_1time_temp_2] run kill @e[type=minecraft:armor_stand,tag=original_swap_dummy_2]

### remove a tags
tag @a remove original_swap_player_1time_temp_1
tag @a remove original_swap_player_1time_temp_2