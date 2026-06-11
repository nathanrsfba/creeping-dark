// Recipe for making/unmaking beacon with key

val beacon = <minecraft:beacon>;
val glass = <ore:blockGlassColorless>;
val key = <contenttweaker:ironkey>;
val obsidian = <minecraft:obsidian>;

recipes.addShaped( "beaconfromkey", beacon, [ 
[glass, glass, glass], 
[glass, key, glass],
[obsidian, obsidian, obsidian]
] );

mods.thermalexpansion.Pulverizer.addRecipe( beacon, key, 400 );

