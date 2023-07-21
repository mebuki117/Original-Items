### create a scoreboards
## stick
scoreboard objectives add origitem_click minecraft.used:minecraft.warped_fungus_on_a_stick

## HP
scoreboard objectives add origitem_HP health
scoreboard objectives add origitem_HP_10 dummy

### reset/set a scoreboards
## stick
scoreboard players reset @a origitem_click

## HP
scoreboard players set origitem_debug origitem_HP_10 10