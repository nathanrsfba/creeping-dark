import mods.thaumcraft.Infusion;

// Recipe to activate the air key using Thaumcraft infusion 

val airkey = <contenttweaker:airkey>;
val airkeyfrag = <contenttweaker:airkeyfrag>;
val egg = <aether_legacy:moa_egg>;
val grav = <aether_legacy:enchanted_gravitite>;
val goldsapling = <aether_legacy:golden_oak_sapling>;

mods.thaumcraft.Infusion.registerRecipe( "airkey", "", airkey, 20, [<aspect:aer> * 10], airkeyfrag, [egg, grav, goldsapling] );

