import crafttweaker.item.IIngredient;

// Gate mining world to RFT
var miningtool = <aroma1997sdimension:miningmultitool>;
var stonebricks = <minecraft:stonebrick>;
var stonepick = <minecraft:stone_pickaxe>;
var flintsteel = <minecraft:flint_and_steel>;
var stick = <ore:stickWood>;
var shard = <rftools:dimensional_shard>;

recipes.remove( miningtool );
recipes.addShaped( "MiningTool", miningtool, [ 
[stonebricks, stonepick, stonebricks],
[shard, flintsteel, shard],
[shard, stick, shard]
] );
