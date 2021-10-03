val iron = <minecraft:iron_ingot>;
val gold = <minecraft:gold_ingot>;
val stick = <minecraft:stick>;
val wood = <ore:plankWood>;
val lapis = <minecraft:dye:4>;
val paper = <minecraft:paper>;

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


