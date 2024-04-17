val iron = <minecraft:iron_ingot>;
val gold = <minecraft:gold_ingot>;
val stick = <minecraft:stick>;
val wood = <ore:plankWood>;
val lapis = <minecraft:dye:4>;
val paper = <minecraft:paper>;

// ----------------------------------------
// Add recipes to convert between Scaffolding and Block of Sticks
// (They serve similar functions)

recipes.addShapeless( "blockofsticksconvert",
    <randomthings:blockofsticks> * 2,
    [<openblocks:scaffolding>] );

recipes.addShapeless( "scaffoldingconvert",
    <openblocks:scaffolding>,
    [<randomthings:blockofsticks>, <randomthings:blockofsticks>] );
