val iron = <minecraft:iron_ingot>;
val gold = <minecraft:gold_ingot>;
val stick = <minecraft:stick>;
val wood = <ore:plankWood>;
val lapis = <minecraft:dye:4>;
val paper = <minecraft:paper>;

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

