val iron = <minecraft:iron_ingot>;
val gold = <minecraft:gold_ingot>;
val stick = <minecraft:stick>;
val wood = <ore:plankWood>;
val lapis = <minecraft:dye:4>;
val paper = <minecraft:paper>;

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
