// ----------------------------------------
// Recipes to convert presses amongst each other
// Taken from ATM3 Remix

var calc = <appliedenergistics2:material:13>;
var engi = <appliedenergistics2:material:14>;
var logi = <appliedenergistics2:material:15>;
var sili = <appliedenergistics2:material:19>;
var skyblock = <appliedenergistics2:sky_stone_block>;
var skydust = <appliedenergistics2:material:45>;
var crystalCertusPure = <appliedenergistics2:material:10>;
var siliconEIO = <enderio:item_material:5>;

mods.mekanism.enrichment.addRecipe( skyblock, skydust );
mods.mekanism.crusher.addRecipe( skyblock, skydust );
mods.thermalexpansion.Pulverizer.addRecipe( skydust, skyblock, 400 );
mods.actuallyadditions.Crusher.addRecipe( skydust, skyblock );

recipes.addShapeless( "SiliconPress", sili, [logi, skydust, skydust] );
recipes.addShapeless( "LogicPress", logi, [engi, skydust, skydust] );
recipes.addShapeless( "EngPress", engi, [calc, skydust, skydust] );
recipes.addShapeless( "CalcPress", calc, [sili, skydust, skydust] );
