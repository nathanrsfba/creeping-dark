// The wither has no loot table, and .addDrop() doesn't work reliably,
// so:

// Iron key is creafted from the wither star
recipes.addShapeless( "ironkey", 
    <contenttweaker:ironkey>,
    [<minecraft:nether_star>] );
