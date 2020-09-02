import crafttweaker.item.IIngredient;

// Portal items configuration


// Gate Erebus to EnderIO
var keystone = <erebus:gaean_keystone>;
var vine = <minecraft:vine>;
var stonebricks = <minecraft:stonebrick>;
var relobelisk = <enderio:block_transceiver>;

recipes.remove( keystone );
recipes.addShaped( "GaeanKeystone", keystone, [ 
[vine, null, vine],
[stonebricks, relobelisk, stonebricks],
[stonebricks, stonebricks, stonebricks]
] );

// Gate Landia to IE + tungsten
var marker = <landcraft:landia_portal_marker>;
var diamond = <minecraft:diamond>;
var landium = <ore:ingotLandium>;
var tungsten = <ore:ingotTungsten>;
var pearl = <minecraft:ender_pearl>;
var emerald = <minecraft:emerald>;
var board = <immersiveengineering:material:27>;

recipes.remove( marker );
recipes.addShaped( "LandiaMarker", marker, [ 
[null, diamond, null],
[landium, pearl, landium],
[tungsten, board, tungsten]
] );

// Gate Hunting Dimension to TE
var frame = <huntingdim:frame>;
var log = <ore:logWood>;
var morb = <thermalexpansion:morb>.withDamage( 1 );
var zmorb = morb.withTag( {id: "minecraft:zombie"} );
var ender = <forge:bucketfilled>.withTag( {FluidName: "ender"} );

recipes.remove( frame );
// There's a different type of frame for each type of wood
// Yeah, this is sloppy, since it just bases the output type
// on the first log, but after a full day of debugging
// this bullshit, I'm all out of rat's asses.
recipes.addShapeless( "HuntingFrame", frame * 16, 
[zmorb.transformReplace( morb ), ender, log.marked( "mark" ), log, log, log],
function( out, ins, cInfo ) {
    var item = out;
    item = item.withTag( {BaseBlock: {id: "minecraft:log", Count: 1 as byte, Damage: ins.mark.damage as int}} );
    item = item * 12;
    return item;
}, null );


// Gate mining world to RFT
var miningtool = <aroma1997sdimension:miningmultitool>;
// var stonebricks = <minecraft:stonebrick>; // Already have this from earlier
var stonepick = <minecraft:stone_pickaxe>;
var flintsteel = <minecraft:flint_and_steel>;
var stick = <ore:stickWood>;
var shard = <rftools:dimensional_shard>;

recipes.remove( miningtool );
recipes.addShaped( "MiningTool", miningtool, [ 
[stonebricks, stonepick, stonebricks],
[shard, flintsteel, shard],
[shard, stick, shard]
] );

// Gate Deep Dark to EU2 + Landia
val ddportal = <extrautils2:teleporter:1>;
val kell = <landcraft:landia_metal>;

recipes.remove( ddportal );
mods.extrautils2.Resonator.add( ddportal, kell, 3200 );

// Gate Aether to Botania
var oaksap = <minecraft:sapling:0>;
var skysap = <aether_legacy:skyroot_sapling>;
var sprucesap = <minecraft:sapling:1>;
var dirt = <minecraft:dirt>;
var aethdirt = <aether_legacy:aether_dirt>;
var coarsedirt = <minecraft:dirt:1>;

mods.botania.ManaInfusion.addConjuration( skysap, oaksap, 1000 );
mods.botania.ManaInfusion.addConjuration( sprucesap, skysap, 1000 );
mods.botania.ManaInfusion.addConjuration( aethdirt, dirt, 1000 );
mods.botania.ManaInfusion.addConjuration( coarsedirt, aethdirt, 1000 );
