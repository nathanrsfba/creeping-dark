// Nether black quartz can be crushed in the AA crusher for improved yield
mods.actuallyadditions.Crusher.addRecipe( <actuallyadditions:item_misc:5> * 4,
    <contenttweaker:netherblackquartz> );

// ...or just smelt it for not quite as good yield
furnace.addRecipe( <actuallyadditions:item_misc:5> * 2, 
    <contenttweaker:netherblackquartz>, 1 );
