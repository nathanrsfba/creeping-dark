// Tweaks to resolve cross-mod recipe conflicts 

// Some common items

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

// ------------------------------------------------------------
// Resolve conflict between Agricraft and Quark trowels

val qtrowel = <quark:trowel>;

recipes.remove( qtrowel );
recipes.addShaped( "QuarkTrowel", qtrowel, [ 
[null, iron, iron],
[stick, null, null],
[null, null, null]
] );

// ------------------------------------------------------------
// Resolve conflict with sound box vs. stained planks

val soundbox = <randomthings:soundbox>;
recipes.remove( soundbox );
recipes.addShaped( "soundbox", soundbox, [ 
[wood, wood, wood],
[wood, wood, wood],
[wood, lapis, wood]
] );

// ------------------------------------------------------------
// Resolve conflict with iron ladder vs. rusty ladder

val rladder = <malisisdoors:rustyladder>;
recipes.remove( rladder );
recipes.addShaped( "rladder", rladder * 2, [ 
[iron, iron, null],
[iron, iron, iron],
[null, iron, iron]
] );

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

// ------------------------------------------------------------
// Resolve conflict with RT ID card vs. Black Paper

val bpaper = <enderio:item_material:77>;
val blackink = <ore:dyeBlack>;

recipes.remove( bpaper );
recipes.addShaped( "bpaper", bpaper, [ 
[paper, null, null],
[null, blackink, null],
[null, null, null]
] );

// ------------------------------------------------------------
// New respawn obelisk recipe, to resolve conflict with chest shortcut recipe

val gwood = <natura:nether_planks>;
val glog = <natura:nether_logs>;
val respawn = <natura:respawn_obelisk>;

recipes.remove( respawn );
recipes.addShaped( "respawn", respawn, [ 
[glog, glog, glog], 
[glog, gwood, glog], 
[glog, glog, glog]
] );


