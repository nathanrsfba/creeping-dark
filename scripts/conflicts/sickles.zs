val iron = <minecraft:iron_ingot>;
val gold = <minecraft:gold_ingot>;
val stick = <minecraft:stick>;
val wood = <ore:plankWood>;
val lapis = <minecraft:dye:4>;
val paper = <minecraft:paper>;

// ----------------------------------------
// Add recipes to convert ProjectRed sickles into
// Thermal Expansion versions

recipes.remove( <thermalfoundation:tool.sickle_diamond> );
recipes.addShapeless( "tfsicklediamond", 
    <thermalfoundation:tool.sickle_diamond>, 
    [<projectred-exploration:diamond_sickle>] );

recipes.remove( <thermalfoundation:tool.sickle_gold> );
recipes.addShapeless( "tfsicklegold", 
    <thermalfoundation:tool.sickle_gold>, 
    [<projectred-exploration:golden_sickle>] );

recipes.remove( <thermalfoundation:tool.sickle_iron> );
recipes.addShapeless( "tfsickleiron", 
    <thermalfoundation:tool.sickle_iron>, 
    [<projectred-exploration:iron_sickle>] );
