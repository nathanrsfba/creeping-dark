val iron = <minecraft:iron_ingot>;
val gold = <minecraft:gold_ingot>;
val stick = <minecraft:stick>;
val wood = <ore:plankWood>;
val lapis = <minecraft:dye:4>;
val paper = <minecraft:paper>;

// ----------------------------------------
// Change recipe for Malisis Doors Curtains to avoid conflict with
// Aether capes

function replaceCurtain( color as string, woolnum as int ) {
    val curtain = itemUtils.getItem( "malisisdoors:curtain_" + color, 0 );
    val name = "malisiscurtain" + color;
    val wool = itemUtils.getItem( "minecraft:wool", woolnum );
    var stick = <minecraft:stick>;

    recipes.remove( curtain );
    recipes.addShaped( name, curtain * 3, [ 
        [wool, stick, wool],
        [wool, null, wool],
        [wool, null, wool]
        ] );
}

replaceCurtain( "white", 0 );
replaceCurtain( "orange", 1 );
replaceCurtain( "magenta", 2 );
replaceCurtain( "light_blue", 3 );
replaceCurtain( "yellow", 4 );
replaceCurtain( "lime", 5 );
replaceCurtain( "pink", 6 );
replaceCurtain( "gray", 7 );
replaceCurtain( "silver", 8 );
replaceCurtain( "cyan", 9 );
replaceCurtain( "purple", 10 );
replaceCurtain( "blue", 11 );
replaceCurtain( "brown", 12 );
replaceCurtain( "green", 13 );
replaceCurtain( "red", 14 );
replaceCurtain( "black", 15 );
