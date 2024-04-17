#ignoreBracketErrors

import crafttweaker.item.IItemStack;

// Add HarvestCraft support for Erebus food
val cabbage = <erebus:erebus_food:15>;
<ore:listAllveggie>.add( cabbage );
<ore:cropCabbage>.add( cabbage );
<ore:listAllgreenveggie>.add( cabbage );

val turnip = <erebus:turnip>;
<ore:listAllveggie>.add( turnip );
<ore:cropTurnip>.add( turnip );
<ore:listAllrootveggie>.add( turnip );

/*
// These fruits are apparently radioactive. They can't be added to
// oredict entries, they crash CraftTweaker with nonsensical
// error messages

val darkfruit = <erebus:food:11>;
val swampberries = <erebus:food:14>;
val pear = <erebus:food:17>;
<ore:cropPear>.add( pear );
<ore:listAllfruit>.add( pear );
<ore:listAllfruit>.add( darkfruit );
<ore:listAllfruit>.add( swampberries );




*/
