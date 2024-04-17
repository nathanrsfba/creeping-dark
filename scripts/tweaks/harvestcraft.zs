#ignoreBracketErrors

import crafttweaker.item.IItemStack;

// ------------------------------------------------------------
// Harvestcraft tweaks

// Remove hilariously broken recipe for Harvestcraft berry vinaigrette salad 
recipes.removeByRecipeName( "harvestcraft:berryvinaigrettesaladitem" );

// Add missing recipes for seeds
recipes.addShapeless( "kaleseed", 
    <harvestcraft:kaleseeditem>, [<harvestcraft:kaleitem>] );
recipes.addShapeless( "tomatilloseed", 
    <harvestcraft:tomatilloseeditem>, [<harvestcraft:tomatilloitem>] );

// Add a recipe for BBQ Jackfruit
// (Recipe taken from harvestcraft github)

recipes.addShapeless( "bbqjackfruit", <harvestcraft:bbqjackfruititem>,
      [<ore:toolSkillet>, <harvestcraft:jackfruititem>, <ore:foodBbqsauce>] );
