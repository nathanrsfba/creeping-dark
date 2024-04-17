val iron = <minecraft:iron_ingot>;
val gold = <minecraft:gold_ingot>;
val stick = <minecraft:stick>;
val wood = <ore:plankWood>;
val lapis = <minecraft:dye:4>;
val paper = <minecraft:paper>;

// ------------------------------------------------------------
// Resolve conflict between Agricraft and Quark trowels

val qtrowel = <quark:trowel>;

recipes.remove( qtrowel );
recipes.addShaped( "QuarkTrowel", qtrowel, [ 
[null, iron, iron],
[stick, null, null],
[null, null, null]
] );
