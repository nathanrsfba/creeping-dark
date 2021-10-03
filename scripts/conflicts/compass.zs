val iron = <minecraft:iron_ingot>;
val gold = <minecraft:gold_ingot>;
val stick = <minecraft:stick>;
val wood = <ore:plankWood>;
val lapis = <minecraft:dye:4>;
val paper = <minecraft:paper>;

// ------------------------------------------------------------
// Resolve conflict with BiblioCraft vs. RT compasses

val bccompass = <bibliocraft:compass>;
val compass = <minecraft:compass>;

recipes.remove( bccompass );
recipes.addShaped( "bccompass", bccompass, [ 
[gold, null, gold],
[null, compass, null],
[gold, null, gold]
] );
