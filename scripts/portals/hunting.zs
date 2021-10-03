import crafttweaker.item.IIngredient;

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
    [zmorb.transformReplace( morb ), ender, log.marked( "mark" ), 
    log, log, log],
    function( out, ins, cInfo ) {
        var item = out;
        item = item.withTag( 
            {BaseBlock: {id: "minecraft:log", Count: 1 as byte, 
            Damage: ins.mark.damage as int}} );
        item = item * 12;
        return item;
    }, null );

