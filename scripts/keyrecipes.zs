import mods.thaumcraft.Infusion;

/* Recipe to activate the water key using the landcraft altar */
val waterkey = <contenttweaker:waterkey>;
val waterkeyfrag = <contenttweaker:waterkeyfrag>;
val heart = <thebetweenlands:wight_heart>;
val valonite = <thebetweenlands:sapling_spirit_tree>;
val spiritsapling = <thebetweenlands:items_misc:19>;

mods.landcraft.machines.addAltarRecipeEntityDeathTrigger( waterkey, 1, [waterkeyfrag, heart, valonite, spiritsapling], "minecraft:squid" );

/* Alter the altar recipe so it doesn't require post-end materials */
val altarmat = <landcraft:landia_altar:1>;
val altarped = <landcraft:landia_altar:2>;
val landium = <landcore:item_ingot:2>;
val morganine = <landcraft:landia_ingot:2>;
val garfax = <landcraft:landia_ingot:1>;
val kelline = <landcraft:landia_ingot:0>;
val rachelineblock = <landcraft:landia_metal:3>;
val friscionblock = <landcraft:landia_metal:4>;
val bunrieu = <landcraft:bun_rieu:1>;
val pho = <landcraft:pho:1>;
val star = <minecraft:nether_star>;
val tower = <landcraft:landia_tower>;

recipes.remove( altarmat );
recipes.remove( altarped );

recipes.addShaped( "landaltar", altarmat * 5, 
[[landium, star, landium],
[garfax, kelline, morganine],
[rachelineblock, rachelineblock, rachelineblock]] );

recipes.addShaped( "landped", altarped,
[[null, null, null], 
[null, friscionblock, null],
[bunrieu, tower, pho]] );

/* Recipe to activate the earth key using the botania altar */
val earthkey = <contenttweaker:earthkey>;
val earthkeyfrag = <contenttweaker:earthkeyfrag>;
val exoplate = <erebus:materials:0>;
val jade = <erebus:materials:1>;
val mahogany = <erebus:sapling_mahogany>;

mods.botania.RuneAltar.addRecipe( earthkey, [earthkeyfrag, mahogany, jade, exoplate], 2000);

// Recipe to activate the air key using Thaumcraft infusion 

val airkey = <contenttweaker:airkey>;
val airkeyfrag = <contenttweaker:airkeyfrag>;
val egg = <aether_legacy:moa_egg>;
val grav = <aether_legacy:enchanted_gravitite>;
val goldsapling = <aether_legacy:golden_oak_sapling>;

mods.thaumcraft.Infusion.registerRecipe( "airkey", "", airkey, 20, [<aspect:aer> * 10], airkeyfrag, [egg, grav, goldsapling] );

// Recipe to make the electrode blueprints craftable :P
// Edit: NM, there's an option for this in the config
/*
val blueprint = <immersiveengineering:blueprint>.withTag( {blueprint: "electrode"} );
val lapis = <minecraft:dye:4>;
val paper = <minecraft:paper>;
val steel = <ore:ingotSteel>;
val blaze = <minecraft:blaze_powder>;

recipes.addShaped( "elecblue", blueprint,
[[blaze, steel, blaze],
[lapis, lapis, lapis],
[paper, paper, paper]] );
*/

// Recipe to activate the fire key using the IE Arc furnace
val firekey = <contenttweaker:firekey>;
val firekeyfrag = <contenttweaker:firekeyfrag>;
val glowstone = <minecraft:glowstone_dust>;
val wart = <minecraft:nether_wart>;
val tear = <minecraft:ghast_tear>;

mods.immersiveengineering.ArcFurnace.addRecipe( 
    firekey, firekeyfrag, null, 2000, 2048, [glowstone, wart, tear] );

// Recipes for the End Key
val endkey = <contenttweaker:endkey>;
val rubykey = <contenttweaker:rubykey>;
val sapphirekey = <contenttweaker:sapphirekey>;
val emeraldkey = <contenttweaker:emeraldkey>;
val diamondkey = <contenttweaker:diamondkey>;
val amethystkey = <contenttweaker:amethystkey>;
val goldkey = <contenttweaker:goldkey>;
val silverkey = <contenttweaker:silverkey>;
val copperkey = <contenttweaker:copperkey>;
val tinkey = <contenttweaker:tinkey>;
val ironkey = <contenttweaker:ironkey>;
val leadkey = <contenttweaker:leadkey>;
val quicksilverkey = <contenttweaker:quicksilverkey>;
val endereye = <minecraft:ender_eye>;

// Create the end key using ... whichever altar that is.
mods.astralsorcery.Altar.addConstellationAltarRecipe(
    "plaguesky:shaped/internal/altar/endkey", endkey, 200, 100, [
    ironkey, // 0
    null, // 1
    tinkey, // 2
    goldkey, // 3
    silverkey, // 4
    copperkey, // 5
    rubykey, // 6
    diamondkey, // 7
    sapphirekey, // 8
    earthkey, // 9
    airkey, // 10
    firekey, // 11
    waterkey, // 12
    leadkey, // 13
    quicksilverkey, // 14
    null, // 15
    null, // 16
    null, // 17
    null, // 18
    emeraldkey, // 19
    amethystkey // 20
]);

// Recipe to duplicate the end key
recipes.addShapeless( "EndKeyDupe", endkey * 2, [endkey, endereye] );
