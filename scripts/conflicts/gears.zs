val iron = <minecraft:iron_ingot>;
val gold = <minecraft:gold_ingot>;
val stick = <minecraft:stick>;
val wood = <ore:plankWood>;
val lapis = <minecraft:dye:4>;
val paper = <minecraft:paper>;

// ------------------------------------------------------------
// New recipe for iron and gold gears
// (to resolve conflict with aether rings)

val irongear = <thermalfoundation:material:24>;
val goldgear = <thermalfoundation:material:25>;

recipes.remove( irongear );
recipes.addShaped( "IronGearNew", irongear, [ 
[null, iron, null],
[iron, stick, iron],
[null, iron, null]
] );

recipes.remove( goldgear );
recipes.addShaped( "GoldGearNew", goldgear, [ 
[null, gold, null],
[gold, stick, gold],
[null, gold, null]
] );
