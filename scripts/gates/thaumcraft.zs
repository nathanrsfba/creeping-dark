// Convert AA crystal shards to Thaumcraft shards

val redshard = <actuallyadditions:item_crystal_shard:0>;
val blueshard = <actuallyadditions:item_crystal_shard:1>;
val cyanshard = <actuallyadditions:item_crystal_shard:2>;
val blackshard = <actuallyadditions:item_crystal_shard:3>;
val greenshard = <actuallyadditions:item_crystal_shard:4>;
val whiteshard = <actuallyadditions:item_crystal_shard:5>;

val airshard = <thaumcraft:crystal_essence>
    .withTag({ Aspects:[{amount:1, key:"aer"}]});
val earthshard = <thaumcraft:crystal_essence>
    .withTag({ Aspects:[{amount:1, key:"terra"}]});
val fireshard = <thaumcraft:crystal_essence>
    .withTag({ Aspects:[{amount:1, key:"ignis"}]});
val watershard = <thaumcraft:crystal_essence>
    .withTag({ Aspects:[{amount:1, key:"aqua"}]});
val ordershard = <thaumcraft:crystal_essence>
    .withTag({ Aspects:[{amount:1, key:"ordo"}]});
val entropyshard = <thaumcraft:crystal_essence>
    .withTag({ Aspects:[{amount:1, key:"perditio"}]});

mods.botania.ManaInfusion.addInfusion( airshard, cyanshard, 1000 );
mods.botania.ManaInfusion.addInfusion( earthshard, greenshard, 1000 );
mods.botania.ManaInfusion.addInfusion( fireshard, redshard, 1000 );
mods.botania.ManaInfusion.addInfusion( watershard, blueshard, 1000 );
mods.botania.ManaInfusion.addInfusion( ordershard, whiteshard, 1000 );
mods.botania.ManaInfusion.addInfusion( entropyshard, blackshard, 1000 );
