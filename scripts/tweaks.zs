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

// ------------------------------------------------------------
// New recipe for iron and gold gears
// (to resolve conflict with aether rings)
val irongear = <thermalfoundation:material:24>;
val goldgear = <thermalfoundation:material:25>;
val iron = <minecraft:iron_ingot>;
val gold = <minecraft:gold_ingot>;
val stick = <minecraft:stick>;

recipes.remove( irongear );
recipes.addShaped( "IronGearNew", irongear, [ 
[null, iron, null],
[iron, stick, iron],
[null, iron, null]
] );

recipes.remove( goldgear );
recipes.addShaped( "GoldGearNew", goldgear, [ 
[null, gold, null],
[gold, stick, gold],
[null, gold, null]
] );

// ------------------------------------------------------------
// New recipe for AG iron frames
// (also to resolve conflict with aether rings)
val ironframe = <advgenerators:iron_frame>;
// val iron = <minecraft:iron_ingot>; // Defined above

recipes.remove( ironframe );
recipes.addShaped( "IronFrameNew", ironframe * 2, [ 
[iron, null, iron],
[null, null, null],
[iron, null, iron]
] );

// ------------------------------------------------------------
// Thermoelectric generator fuels

mods.immersiveengineering.Thermoelectric.addTemperatureSource( <nuclearcraft:ingot_block:3>, 1700 );
mods.immersiveengineering.Thermoelectric.addTemperatureSource( <nuclearcraft:block_depleted_thorium>, 1500 );
mods.immersiveengineering.Thermoelectric.addTemperatureSource( <nuclearcraft:block_depleted_uranium>, 1750 );
mods.immersiveengineering.Thermoelectric.addTemperatureSource( <nuclearcraft:block_depleted_neptunium>, 1600 );
mods.immersiveengineering.Thermoelectric.addTemperatureSource( <nuclearcraft:block_depleted_plutonium>, 3000 );
mods.immersiveengineering.Thermoelectric.addTemperatureSource( <nuclearcraft:block_depleted_curium>, 3500 );
mods.immersiveengineering.Thermoelectric.addTemperatureSource( <nuclearcraft:block_depleted_berkelium>, 1750 );
mods.immersiveengineering.Thermoelectric.addTemperatureSource( <nuclearcraft:block_depleted_americium>, 2500 );
mods.immersiveengineering.Thermoelectric.addTemperatureSource( <nuclearcraft:block_depleted_californium>, 4000 );
mods.immersiveengineering.Thermoelectric.addTemperatureSource( <nuclearcraft:block_ice>, 4 );

// Nether black quartz can be crushed in the AA crusher for improved yield
mods.actuallyadditions.Crusher.addRecipe( <actuallyadditions:item_misc:5> * 4, <contenttweaker:netherblackquartz> );

// ------------------------------------------------------------
// ...or just smelt it for not quite as good yield
furnace.addRecipe( <actuallyadditions:item_misc:5> * 2, <contenttweaker:netherblackquartz>, 1 );

// Add recipes for Advanced Generators advanced pressure valve
// and gold turbine. (AG is supposed to register these exact recipes
// but for some reason it isn't working)
mods.thermalexpansion.InductionSmelter.addRecipe(
    <advgenerators:advanced_pressure_valve>, // Output
    <advgenerators:pressure_valve>,          // Input 1
    <thermalfoundation:material:167> * 8,    // Input 2
    50000                                    // Energy
);
mods.thermalexpansion.InductionSmelter.addRecipe(
    <advgenerators:turbine_rotor_gold>, // Output
    <advgenerators:turbine_rotor_iron>, // Input 1
    <minecraft:gold_ingot>,             // Input 2
    5000                                // Energy
);

