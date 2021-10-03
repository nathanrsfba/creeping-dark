val iron = <minecraft:iron_ingot>;
val gold = <minecraft:gold_ingot>;
val stick = <minecraft:stick>;
val wood = <ore:plankWood>;
val lapis = <minecraft:dye:4>;
val paper = <minecraft:paper>;

// ------------------------------------------------------------
// Resolve conflict with iron ladder vs. rusty ladder

val rladder = <malisisdoors:rustyladder>;
recipes.remove( rladder );
recipes.addShaped( "rladder", rladder * 2, [ 
[iron, iron, null],
[iron, iron, iron],
[null, iron, iron]
] );
