// Add recipes for Advanced Generators advanced pressure valve
// and gold turbine. (AG is supposed to register these exact recipes
// but for some reason it isn't working)
mods.thermalexpansion.InductionSmelter.addRecipe(
    <advgenerators:advanced_pressure_valve>, // Output
    <advgenerators:pressure_valve>,          // Input 1
    <thermalfoundation:material:167> * 8,    // Input 2
    50000                                    // Energy
);
mods.thermalexpansion.InductionSmelter.addRecipe(
    <advgenerators:turbine_rotor_gold>, // Output
    <advgenerators:turbine_rotor_iron>, // Input 1
    <minecraft:gold_ingot>,             // Input 2
    5000                                // Energy
);

