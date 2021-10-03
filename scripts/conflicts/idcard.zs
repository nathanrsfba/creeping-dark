val iron = <minecraft:iron_ingot>;
val gold = <minecraft:gold_ingot>;
val stick = <minecraft:stick>;
val wood = <ore:plankWood>;
val lapis = <minecraft:dye:4>;
val paper = <minecraft:paper>;

// ------------------------------------------------------------
// Resolve conflict with RT ID card vs. Black Paper

val bpaper = <enderio:item_material:77>;
val blackink = <ore:dyeBlack>;

recipes.remove( bpaper );
recipes.addShaped( "bpaper", bpaper, [ 
[paper, null, null],
[null, blackink, null],
[null, null, null]
] );
