// Tweaks to resolve cross-mod recipe conflicts 

// ------------------------------------------------------------
// New recipe for iron and gold gears
// (to resolve conflict with aether rings)

val irongear = <thermalfoundation:material:24>;
val goldgear = <thermalfoundation:material:25>;
val iron = <minecraft:iron_ingot>;
val gold = <minecraft:gold_ingot>;
val stick = <minecraft:stick>;

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

// ---------------
// Resolve marble recipe conflicts

// Marble blocks
val asmarb = <astralsorcery:blockmarble>;
var chmarb = <chisel:marble2>;
var qmarb = <quark:marble>;
val prmarb = <projectred-exploration:stone>;

// Marble bricks
val asmarbrick = <astralsorcery:blockmarble:1>;
val prmarbrick = <projectred-exploration:stone:1>;

recipes.remove( asmarbrick );
recipes.addShaped( "asmarblebrick", asmarbrick, [ 
[asmarb, asmarb, null],
[asmarb, asmarb, null],
[null, null, null]
] );

recipes.remove( prmarbrick );
recipes.addShaped( "prmarblebrick", prmarbrick, [ 
[prmarb, prmarb, null],
[prmarb, prmarb, null],
[null, null, null]
] );

// Marble walls
val prmarbwall = <projectred-exploration:stone_wall>;
recipes.remove( prmarbwall );
recipes.addShaped( "prmarblewall", prmarbwall, [ 
[null, null, null],
[prmarb, prmarb, prmarb],
[prmarb, prmarb, prmarb]
] );

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

// ----------------------------------------
// Mekanism bronze tools can be converted to Thermal Expansion versions
// if the player so desires.

function mek2TF( mekname as string, tfname as string ) {
    val mektool = itemUtils.getItem( "mekanismtools:" + mekname, 0 );
    val tftool = itemUtils.getItem( "thermalfoundation:" + tfname, 0 );
    val name = "tf" + mekname;

    recipes.remove( tftool );
    recipes.addShapeless( name, tftool, [mektool] );
}

mek2TF( "bronzehelmet", "armor.helmet_bronze" );
mek2TF( "bronzechestplate", "armor.plate_bronze" );
mek2TF( "bronzeleggings", "armor.legs_bronze" );
mek2TF( "bronzeboots", "armor.boots_bronze" );
mek2TF( "bronzesword", "tool.sword_bronze" );
mek2TF( "bronzeshovel", "tool.shovel_bronze" );
mek2TF( "bronzepickaxe", "tool.pickaxe_bronze" );
mek2TF( "bronzeaxe", "tool.axe_bronze" );
mek2TF( "bronzehoe", "tool.hoe_bronze" );

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

// ----------------------------------------
// Add recipes to convert between Scaffolding and Block of Sticks
// (They serve similar functions)

recipes.addShapeless( "blockofsticksconvert",
    <randomthings:blockofsticks> * 2,
    [<openblocks:scaffolding>] );

recipes.addShapeless( "scaffoldingconvert",
    <openblocks:scaffolding>,
    [<randomthings:blockofsticks>, <randomthings:blockofsticks>] );



