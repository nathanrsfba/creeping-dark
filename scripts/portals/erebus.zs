import crafttweaker.item.IIngredient;

// Gate Erebus to EnderIO
var keystone = <erebus:gaean_keystone>;
var vine = <minecraft:vine>;
var stonebricks = <minecraft:stonebrick>;
var relobelisk = <enderio:block_transceiver>;

recipes.remove( keystone );
recipes.addShaped( "GaeanKeystone", keystone, [ 
[vine, null, vine],
[stonebricks, relobelisk, stonebricks],
[stonebricks, stonebricks, stonebricks]
] );
