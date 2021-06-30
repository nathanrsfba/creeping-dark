import mods.thaumcraft.Infusion;

/* Recipe to activate the water key using the smeltery */
var spiritsapling = <thebetweenlands:sapling_spirit_tree>;
var heart = <thebetweenlands:wight_heart>;
var valonite = <thebetweenlands:items_misc:19>;
var waterkeycore = <contenttweaker:waterkeyfrag>;
var waterkey = <contenttweaker:waterkey>;
var heartessence = <liquid:heart_essence>;
var treeessence = <liquid:spirit_essence>;
var liquidvalonite = <liquid:liquid_valonite>;
var waterkeyessence = <liquid:water_key_essence>;

mods.tconstruct.Melting.addRecipe( heartessence * 144, heart, 400 );
mods.tconstruct.Melting.addRecipe( treeessence * 144, spiritsapling, 400);
mods.tconstruct.Melting.addRecipe( liquidvalonite * 144, valonite, 400);

mods.tconstruct.Alloy.addRecipe( waterkeyessence * 144, 
    [heartessence * 144, treeessence * 144, liquidvalonite * 144] );

mods.tconstruct.Casting.addBasinRecipe( waterkey, waterkeycore, waterkeyessence, 144, true, 200 );

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
