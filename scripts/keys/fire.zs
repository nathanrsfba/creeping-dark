// Recipe to activate the fire key using the IE Arc furnace
val firekey = <contenttweaker:firekey>;
val firekeyfrag = <contenttweaker:firekeyfrag>;
val glowstone = <minecraft:glowstone_dust>;
val wart = <minecraft:nether_wart>;
val tear = <minecraft:ghast_tear>;

mods.immersiveengineering.ArcFurnace.addRecipe( 
    firekey, firekeyfrag, null, 2000, 2048, [glowstone, wart, tear] );
