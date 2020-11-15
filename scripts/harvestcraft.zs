#ignoreBracketErrors

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

// Add a recipe for BBQ Jackfruit
// (Recipe taken from harvestcraft github)

recipes.addShapeless( "bbqjackfruit", <harvestcraft:bbqjackfruititem>,
      [<ore:toolSkillet>, <harvestcraft:jackfruititem>, <ore:foodBbqsauce>] );
