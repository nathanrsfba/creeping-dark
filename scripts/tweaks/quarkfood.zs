#ignoreBracketErrors

import crafttweaker.item.IItemStack;

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
