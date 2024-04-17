// RFTools machines require certus

val rftmachframe = <rftools:machine_frame>;

val certus = <ore:crystalCertusQuartz>;
val iron = <ore:ingotIron>;
val lapis = <ore:dyeBlue>;
val goldnug = <ore:nuggetGold>;

/* Add certus to RFT Machine Frame recipe */
recipes.remove( rftmachframe );
recipes.addShaped( "RFTMachineFrame", rftmachframe, [ 
[iron, lapis, iron],
[goldnug, certus, goldnug],
[iron, lapis, iron]
] );
