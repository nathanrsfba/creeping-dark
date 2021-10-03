val iron = <minecraft:iron_ingot>;
val gold = <minecraft:gold_ingot>;
val stick = <minecraft:stick>;
val wood = <ore:plankWood>;
val lapis = <minecraft:dye:4>;
val paper = <minecraft:paper>;

// ------------------------------------------------------------
// New recipe for AG iron frames
// (also to resolve conflict with aether rings)

val ironframe = <advgenerators:iron_frame>;
// val iron = <minecraft:iron_ingot>; // Defined above

recipes.remove( ironframe );
recipes.addShaped( "IronFrameNew", ironframe * 2, [ 
[iron, null, iron],
[null, null, null],
[iron, null, iron]
] );
