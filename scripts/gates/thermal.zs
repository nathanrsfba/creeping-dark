// TE machines require certus
val temachframe = <thermalexpansion:frame>;
val tedevframe = <thermalexpansion:frame:64>;

val tingear = <ore:gearTin>;
val coppergear = <ore:gearCopper>;
val glass = <ore:blockGlass>;
val certus = <ore:crystalCertusQuartz>;
val iron = <ore:ingotIron>;
val tin = <ore:ingotTin>;

recipes.remove( temachframe );
recipes.addShaped( "TEMachineFrame", temachframe, [ 
[iron, certus, iron],
[glass, tingear, glass],
[iron, certus, iron]
] );

recipes.remove( tedevframe );
recipes.addShaped( "TEDeviceFrame", tedevframe, [ 
[tin, certus, tin],
[glass, coppergear, glass],
[tin, certus, tin]
] );


