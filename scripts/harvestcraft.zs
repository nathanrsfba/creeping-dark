#ignoreBracketErrors

import crafttweaker.item.IItemStack;

// ------------------------------------------------------------
// Harvestcraft tweaks

// Remove broken recipe for Harvestcraft berry vinaigrette salad 
recipes.removeByRecipeName( "harvestcraft:berryvinaigrettesaladitem" );

if( loadedMods has "quark" )
{
    // Quark frogs drop Harvestcraft frogs
    val frog = <entity:quark:frog>;
    // Drop changes have been moved to loot tables
    // frog.addDrop( <harvestcraft:frograwitem> );
    // frog.removeDrop( <quark:frog_leg> );

    // Let the player craft Quark frog legs
    recipes.addShapeless( "frogleg", 
        <quark:frog_leg>, [<harvestcraft:frograwitem>] );

    // ...and do the same for crabs
    val crab = <entity:quark:crab>;
    // crab.addDrop( <harvestcraft:crabrawitem> );
    // crab.removeDrop( <quark:crab_leg> );
    recipes.addShapeless( "crableg", 
        <quark:crab_leg>, [<harvestcraft:crabrawitem>] );
}

// Add missing recipes for seeds
recipes.addShapeless( "kaleseed", <harvestcraft:kaleseeditem>, [<harvestcraft:kaleitem>] );
recipes.addShapeless( "tomatilloseed", <harvestcraft:tomatilloseeditem>, [<harvestcraft:tomatilloitem>] );

if( loadedMods has "twilightforest" )
{
    // Add support for TF venison
    <ore:foodVenisoncooked>.add( <twilightforest:cooked_venison> );
    <ore:listAllmeatcooked>.add( <twilightforest:cooked_venison> );
    <ore:listAllvenisoncooked>.add( <twilightforest:cooked_venison> );
    <ore:foodVenisonraw>.add( <twilightforest:raw_venison> );
    <ore:listAllmeatraw>.add( <twilightforest:raw_venison> );
    <ore:listAllvenisonraw>.add( <twilightforest:raw_venison> );
}

if( loadedMods has "atum" )
{
    // Add oredict entries for atum food
    <ore:listAllmeatraw>.add( <atum:camel_raw> );
    <ore:listAllmeatcooked>.add( <atum:camel_cooked> );
    <ore:listAllfruit>.add( <atum:date> );
    <ore:cropDate>.add( <atum:date> );
}

if( loadedMods has "tropicraft" )
{
    // Add oredict entries for Tropics food
    <ore:cropGrapefruit>.add( <tropicraft:grapefruit> );
    <ore:cropLemon>.add( <tropicraft:lemon> );
    <ore:cropLime>.add( <tropicraft:lime> );
    <ore:cropOrange>.add( <tropicraft:orange> );
    val citrus = [<tropicraft:grapefruit>, <tropicraft:lemon>,
        <tropicraft:lime>, <tropicraft:orange>] as IItemStack[];
    <ore:listAllfruit>.add( citrus );
    <ore:listAllcitrus>.add( citrus );
    <ore:listAllfishraw>.add( <tropicraft:fresh_marlin>,
        <tropicraft:ray_raw> );
    <ore:listAllfishfresh>.add( <tropicraft:fresh_marlin>,
        <tropicraft:ray_raw> );
    <ore:listAllfishcooked>.add( <tropicraft:seared_marlin>,
        <tropicraft:ray_cooked> );
    <ore:cropCoconut>.add( <tropicraft:coconut_chunk> );
    <ore:cropPineapple>.add( <tropicraft:pineapple_cubes> );
    <ore:listAllfruit>.add( <tropicraft:pineapple_cubes> );
    <ore:cropCoffee>.add( <tropicraft:coffee_beans> );
    <ore:listAllfishraw>.add( <tropicraft:raw_fish:*> );
    <ore:listAllfishraw>.add( <tropicraft:raw_river_fish:*> );
    <ore:listAllfishfresh>.add( <tropicraft:raw_fish:*> );
    <ore:listAllfishfresh>.add( <tropicraft:raw_river_fish:*> );
    <ore:listAllfishcooked>.add( <tropicraft:cooked_fish:*> );
    <ore:listAllfishcooked>.add( <tropicraft:cooked_river_fish:*> );
    <ore:listAllveggie>.add( <tropicraft:nori_raw> );
    <ore:listAllgreenveggie>.add( <tropicraft:nori_raw> );
    <ore:cropSeaweed>.add( <tropicraft:nori_raw> );

    // Ability to chop coconuts and pineapple using the cutting board
    
    val board = <harvestcraft:cuttingboarditem>;
    recipes.addShapeless( "coconutchunk", <tropicraft:coconut_chunk>,
        [board, <harvestcraft:coconutitem> | <tropicraft:coconut>] );
    recipes.addShapeless( "pineapplechunk", <tropicraft:pineapple_cubes>,
        [board, <harvestcraft:pineappleitem> | <tropicraft:pineapple>] );
}

// Add a recipe for BBQ Jackfruit
// (Recipe taken from harvestcraft github)

recipes.addShapeless( "bbqjackfruit", <harvestcraft:bbqjackfruititem>,
      [<ore:toolSkillet>, <harvestcraft:jackfruititem>, <ore:foodBbqsauce>] );
