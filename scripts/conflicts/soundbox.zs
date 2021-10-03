val iron = <minecraft:iron_ingot>;
val gold = <minecraft:gold_ingot>;
val stick = <minecraft:stick>;
val wood = <ore:plankWood>;
val lapis = <minecraft:dye:4>;
val paper = <minecraft:paper>;

// ------------------------------------------------------------
// Resolve conflict with sound box vs. stained planks

val soundbox = <randomthings:soundbox>;
recipes.remove( soundbox );
recipes.addShaped( "soundbox", soundbox, [ 
[wood, wood, wood],
[wood, wood, wood],
[wood, lapis, wood]
] );
