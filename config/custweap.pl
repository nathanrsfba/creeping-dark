# Epic Fight Mod data for modded weapons
# The following allows for directly specifying data for modded items
# directly. It is essentially the same data as in the configuration
# file, but in tabular format
my $data = <<END
# Registry Name         ArmNeg  Impact  Strikes Type
tconstruct:broadsword   0       1       2       Sword
tconstruct:shovel       0       2.5     1       Shovel
tconstruct:excavator    0       4       1       Shovel
tconstruct:pickaxe      12      -0.2    1       Pickaxe
tconstruct:hatchet      20      3       1       Axe
tconstruct:mattock      0       -0.2    1       Hoe
tconstruct:kama         0       -0.2    1       Hoe
tconstruct:hammer       0       5       1       Greatsword
tconstruct:scythe       0       0.5     8       Sword
tconstruct:longsword    0       0.6     2       Katana
tconstruct:rapier       0       1.6     4       Spear
tconstruct:cleaver      0       2       3       Greatsword
END
;

# Simplified data for modded weapons. Relevant data is generated
# automatically based on the type and damage. 
#
# Each item should be specified on a single line, in the form:
#   modid:name TYPE damage
# where 'modid' is the ID of the mod, 'name' is the registry name
# of the item, and 'damage' is the amount of damage the item
# does. 
#
# 'TYPE' is the type of item, which may be one of the following:
# SWORD, SHOVEL, PICKAXE, AXE, HOE, GREATSWORD, HAMMER, KATANA, SPEAR
# For everything except SPEAR and SWORD, they may be abbreviated to just
# their initial letter. "SW" and "W" are abbreviations for SWORD;
# "SP" is SPEAR.
#
# A configuration entry for the item will be generated based on the
# amount of damage the item does, and scaling it according to a template item
# of the specified type.
#
# The following shortcuts may be used:
#
# An * in the registry name will be replaced with the item type.
# (Lowercased)
#
# The mod name can be specified on a line by itself, followed by a
# colon, and will be applied to any following items not specifying
# the mod. 
#
# A registry name by itself specifies a template that will be used for
# following entries with no registry name. (Such entries will need to be
# indented by at least 1 whitespace)
#
# Thus, the following code:
#    actuallyadditions:
#    item_*_emerald
#       Sword   9
#       Pickaxe 7
#       Axe     12
# translates to:
#    actuallyadditions:item_sword_emerald Sword   9
#    actuallyadditions:item_pickaxe       Pickaxe 7
#    actuallyadditions:item_axe           Axe     12
#
# Lines that are blank, consist entirely of spaces, or beginning with
# a # symbol are considered comments and ignored

my $mults = <<END
# ----------------------------------------
# Actually Additions
#

actuallyadditions:

item_*_emerald
    Pickaxe 7
    Axe     12
    Shovel  7.5
    Sword   9
    Hoe     1

item_*_obsidian
    Pickaxe 4
    Axe     9
    Shovel  4.5
    Sword   6
    Hoe     1

item_*_quartz
    Pickaxe 4
    Axe     9
    Shovel  4.5
    Sword   6
    Hoe     1

item_*_crystal_red
    Pickaxe 4.25
    Axe     9.25
    Shovel  4.75
    Sword   6.25
    Hoe     1

item_*_crystal_blue
    Pickaxe 4.25
    Axe     9.25
    Shovel  4.75
    Sword   6.25
    Hoe     1

item_*_crystal_light_blue
    Pickaxe 6
    Axe     11
    Shovel  6.5
    Sword   8
    Hoe     1

item_*_crystal_black
    Pickaxe 4
    Axe     9
    Shovel  4.5
    Sword   6
    Hoe     1

item_*_crystal_green
    Pickaxe 7.5
    Axe     12.5
    Shovel  8
    Sword   9.5
    Hoe     1

item_*_crystal_white
    Pickaxe 4.5
    Axe     9.5
    Shovel  5
    Sword   6.5
    Hoe     1

# ----------------------------------------
# Aether Legacy

aether_legacy:

skyroot_*
  Pickaxe 2
  Axe     7
  Shovel  2.5
  Sword   4

holystone_*
  Pickaxe 3
  Axe     9
  Shovel  3.5
  Sword   5

zanite_*
  Pickaxe 4
  Axe     9
  Shovel  4.5
  Sword   4

gravitite_*
  P 5
  A 9
  S 5.5
  W 7

valkyrie_*
  Pickaxe 5
  Axe     9
  Shovel  5.5

valkyrie_lance  Spear   7
flaming_*       Sword   7
lightning_*     Sword   7
holy_*          Sword   7
vampire_blade   Sword   7
candy_cane_*    Sword   4
notch_hammer    Hammer  6

# ----------------------------------------
# Applied Energistics

appliedenergistics2:
certus_quartz_*
    Hoe     1
    Axe     9
    Pickaxe 4
    Sword   6
nether_quartz_*
    Hoe     1
    Axe     9
    Pickaxe 4
    Sword   6

# Apparently AE2 calls a spade a spade
certus_quartz_spade Shovel  4.5
nether_quartz_spade Shovel  4.5

# ----------------------------------------
# Astral Sorcery

astralsorcery:
itemcrystal*
    Pickaxe 6
    Axe     12
    Shovel  4
    Sword   14
itemchargedcrystal*
    Pickaxe 6
    Axe     12
    Shovel  4
    Sword   14

# ----------------------------------------
# Atum

atum:

iron_scimitar   SWORD       6
iron_*          GREATSWORD  11
iron_club       HAMMER      16
iron_khopesh    KATANA      6

stoneguard_*          SWORD       5.1
stoneguard_*          GREATSWORD  10.1
stoneguard_club       HAMMER      15.1
stoneguard_khopesh    KATANA      5.1

limestone_*
    SHOVEL  3.5
    PICKAXE 3
    AXE     9
    SWORD   5
    HOE     1

atums_will      SWORD   7
ptahs_decadence PICKAXE 5
ptahs_undoing   AXE     7
gebs_toil       SHOVEL  5.5
gebs_might      HAMMER  21
tefnuts_call    SPEAR   4
tefnutes_blessing   HOE 1
shus_exile      AXE     9
montus_strike   AXE     9
anubiss_wrath   KATANA  6
nuits_ire       SWORD   7
nuits_quarter   SWORD   7

# ----------------------------------------
# Botania

botania:
manasteel*
    Shovel  4.5
    Axe     9
    Sword   6
manasteelpick   Pickaxe 4

terra*      Sword   7
terrapick   Pickaxe 5    

elementium*
    Shovel  4.5
    Axe     9
    Sword   6
elementiumpick   Pickaxe 4

star*       Sword   7
thunder*    Sword   7

# ----------------------------------------
# Ender IO

enderio:
item_dark_steel_*
    Sword   7
    Pickaxe 5
    Axe     9
item_end_steel_*
    Sword   9
    Pickaxe 7
    Axe     9

# ----------------------------------------
# Erebus

erebus:

jade_*
    SWORD   6
    PICKAXE 4
    AXE     7
    SHOVEL  4.5
    HOE     1
wasp_*      SWORD   10

# ----------------------------------------
# Extra Utilities

extrautils2:

law*        SWORD   14
fire*       AXE     11
luxsaber    SWORD   11

# ----------------------------------------
# Immersive Engineering

immersiveengineering:
*_steel
    Sword   6.5
    Hoe     1
    Axe     9
    Shovel  5
    Pickaxe 4.5

# ----------------------------------------
# Mekanism

mekanismtools:

steel*
    Sword   8
    Hoe     1
    Shovel  6.5
    Axe     9
    Pickaxe 6
lapislazuli*
    Sword   6
    Hoe     1
    Shovel  4.5
    Axe     9
    Pickaxe 4
obsidian*
    Sword   14
    Hoe     1
    Shovel  12.5
    Axe     13
    Pickaxe 12
osmium*
    Sword   8
    Hoe     1
    Shovel  6.5
    Axe     9
    Pickaxe 6
bronze*
    Sword   19
    Hoe     1
    Shovel  8.5
    Axe     9
    Pickaxe 8
glowstone*
    Sword   9
    Hoe     1
    Shovel  7.5
    Axe     9
    Pickaxe 7

# ----------------------------------------
# Natura

natura:
netherquartz_*
    Sword   5
    Pickaxe 3
    Shovel  3.5
    Axe     9
fusewood_*
    Sword   6
    Pickaxe 4
    Shovel  4.5
    Axe     9
darkwood_*
    Sword   5
    Pickaxe 3
    Shovel  3.5
    Axe     9
bloodwood_*
    Sword   7
    Pickaxe 5
    Shovel  5.5
    Axe     4
ghostwood_*
    Sword   4
    Pickaxe 2
    Shovel  2.5
    Axe     7

netherquartz_kama       Hoe     5
fusewood_kama           Hoe     6
darkwood_kama           Hoe     5
bloodwood_kama          Hoe     7
ghostwood_kama          Hoe     4

# ----------------------------------------
# Nuclearcraft

nuclearcraft:

*_boron
    Sword   6.5
    Pickaxe 4.5
    Shovel  3
    Axe     3.5
    Hoe     1
*_tough
    Sword   7
    Pickaxe 5
    Shovel  5.5
    Axe     4
    Hoe     1
*_hard_carbon
    Sword   7
    Pickaxe 5
    Shovel  5.5
    Axe     4
    Hoe     1
*_boron_nitride
    Sword   7.5
    Pickaxe 5.5
    Shovel  6
    Axe     4.5
    Hoe     1

# ----------------------------------------
# ProjectRed

projectred-exploration:
peridot_*
    Sword   6.75
    Shovel  5.25
    Pickaxe 4.75
    Hoe     1
    Axe     9
ruby_*
    Sword   7
    Shovel  5.5
    Pickaxe 5
    Hoe     1
    Axe     9
sapphire_*
    Sword   7
    Shovel  5.5
    Pickaxe 5
    Hoe     1
    Axe     9

# ----------------------------------------
# Random Things

randomthings:
spectre*
    Sword   7
    Pickaxe 5
    Axe     9
    Shovel  5.5

# ----------------------------------------
# Redstone Arsenal

redstonearsenal:

tool.*_flux
    Sword   7
    Shovel  6
    Pickaxe 5
    Axe     9
    Hammer  11

tool.battlewrench_flux  Hammer  7
tool.excavator_flux     Hammer  6

# ----------------------------------------
# Thaumcraft

thaumcraft:

thaumium_*
    axe     9
    sword   6.5
    shovel  5
    hoe     1
void_*
    axe     9
    sword   7
    shovel  5.5
    hoe     1
elemental_*
    axe     9
    sword   7
    shovel  5.5
    hoe     1

thaumium_pick   Pickaxe 4.5
void_pick       Pickaxe 5
elemental_pick  Pickaxe 5

# ----------------------------------------
# The Betweenlands

thebetweenlands:

weedwood_*
    Sword   4
    Shovel  2.5
    Axe     6
    Pickaxe 2

bone_*
    Sword   5
    Shovel  3.5
    Axe     7
    Pickaxe 3

octine_*
    Sword   6
    Shovel  4.5
    Axe     8
    Pickaxe 4

valonite_*
    Sword   7
    Shovel  5.5
    Axe     9
    Pickaxe 5

wights_bane         Sword   4
sludge_slicer       Sword   4
critter_cruncher    Sword   4
hag_hacker          Axe     4.5
swift_pick          Pickaxe 5

ancient_greatsword  Greatsword  7
ancient_battle_axe  Greatsword  9
valonite_greataxe   Greatsword  9

# ----------------------------------------
# Thermal Expansion

thermalfoundation:

tool.*_copper
    Sword   5
    Shovel  3
    Pickaxe 4
    Axe     9
    Hoe     1
    Hammer  11
tool.*_tin
    Sword   5
    Shovel  3
    Pickaxe 4
    Axe     9
    Hoe     1
    Hammer  11
tool.*_silver
    Sword   5
    Shovel  3
    Pickaxe 4
    Axe     9
    Hoe     1
    Hammer  11
tool.*_lead
    Sword   5
    Shovel  3
    Pickaxe 4
    Axe     9
    Hoe     1
    Hammer  11
tool.*_aluminum
    Sword   5
    Shovel  3
    Pickaxe 4
    Axe     9
    Hoe     1
    Hammer  11
tool.*_nickel
    Sword   6.5
    Shovel  4.5
    Pickaxe 5.5
    Axe     9
    Hoe     1
    Hammer  11
tool.*_platinum
    Sword   7.5
    Shovel  5.5
    Pickaxe 6.5
    Axe     9
    Hoe     1
    Hammer  11
tool.*_steel
    Sword   6.5
    Shovel  4.5
    Pickaxe 5.5
    Axe     9
    Hoe     1
    Hammer  11
tool.*_electrum
    Sword   4.5
    Shovel  2.5
    Pickaxe 3.5
    Axe     7
    Hoe     1
    Hammer  8
tool.*_invar
    Sword   6.5
    Shovel  4.5
    Pickaxe 5.5
    Axe     9
    Hoe     1
    Hammer  11
tool.*_bronze
    Sword   6
    Shovel  4
    Pickaxe 5
    Axe     9
    Hoe     1
    Hammer  11
tool.*_constantan
    Sword   5.5
    Shovel  3.5
    Pickaxe 4.5
    Axe     9
    Hoe     1
    Hammer  11

tool.hammer_iron    Hammer  11
tool.hammer_diamond Hammer  11
tool.hammer_gold    Hammer  8

tool.excavator_copper   Hammer  3
tool.excavator_tin      Hammer  3
tool.excavator_silver   Hammer  3
tool.excavator_lead     Hammer  3
tool.excavator_aluminum Hammer  3
tool.excavator_nickel   Hammer  4.5
tool.excavator_platinum Hammer  5.5
tool.excavator_steel    Hammer  4.5
tool.excavator_electrum Hammer  2.5
tool.excavator_invar    Hammer  4.5
tool.excavator_bronze   Hammer  4
tool.excavator_iron     Hammer  4
tool.excavator_diamond  Hammer  5
tool.excavator_gold     Hammer  2
tool.excavator_constantan   Hammer  3.5

# ----------------------------------------
# Tropicraft

tropicraft:

*_zircon
    Axe     7
    Shovel  3.5
    Pickaxe 3
    Hoe     1

*_eudialyte
    Sword   6
    Axe     7
    Shovel  4.5
    Pickaxe 4
    Hoe     1

sword_zircon        SPEAR   5

# ----------------------------------------
# Twilight Forest

twilightforest:

ironwood_*
    Sword   6
    Shovel  4.5
    Pickaxe 4
    Axe     9
    Hoe     1

fiery_*
    Sword   8
    Pickaxe 6

Steeleaf_*
    Sword   7
    Shovel  5.5
    Pickaxe 5
    Axe     10
    Hoe     1

knightmetal_*
    Sword   7
    Pickaxe 5
    Axe     10

giant_*
    Pickaxe 10
    Sword   12

minotaur_axe_gold       Axe     7
minotaur_axe            Axe     10
mazebreaker_*           Pickaxe 5
ice_*                   Sword   7.5
glass_*                 Sword   40


END
;

my $preamble = <<END
custom {

    custom_weaponry {
END
;

my $postamble = <<END
    }

    custom_armor {

        sample_armor {
            S:registry_name=modid:registryname
            D:stun_armor=0.0
            D:weight=0.0
        }

    }

}

END
;


my @weapons;
for my $line (split "\n", $data)
{
    next if( $line eq '' || $line =~ /^#/ );
    my( @stats ) = (split /\s+/, $line);
    push @weapons, \@stats;
}

# Damage, armor negation, impact, and max strikes of iron tools
my %stats = (
    # Type           DMG NEG  IMP   STR
    SWORD =>        [  6,  0,  0.9, 2],
    SHOVEL =>       [4.5,  0,  2.5, 1],
    PICKAXE =>      [  4, 12, -0.2, 1],
    AXE =>          [  9, 20,    3, 1],
    HOE =>          [  1,  0, -0.2, 1],
    GREATSWORD =>   [ 14,  0,  4.3, 5],
    HAMMER =>       [ 14,  0,    6, 1],
    KATANA =>       [  6,  0,  0.6, 2],
    SPEAR  =>       [  6,  0,  1.6, 4]
);

my %typealias = (
    SW  => "SWORD",
    SH  => "SHOVEL",
    SP  => "SPEAR",
    W   => "SWORD",
    S   => "SHOVEL",
    P   => "PICKAXE",
    A   => "AXE",
    H   => "HOE",
    G   => "GREATSWORD",
    H   => "HAMMER",
    K   => "KATANA"
);

my $mod;
my $spec;

for my $line (split "\n", $mults)
{
    # Skip blank lines and comments
    next if( $line =~ /^\s*$/ || $line =~ /^#/ );

    # Look for a mod name specifier
    if( $line =~ /(.*):$/ )
    {
        $mod = $1;
        next;
    }

    # Extract registry name, type, and damage
    my( $regname, $type, $dmg ) = (split /\s+/, $line);

    # If no type, use the given regname as a template for further entries
    if( $type eq '' )
    {
        $spec = $regname;
        next;
    }

    # If no registry name, use the previously specified template
    if( $regname eq '' )
    {
        $regname = $spec;
    }

    # Append mod ID if not specified
    $regname = "$mod:$regname" if( $regname !~ /:/ );

    # Resolve type aliases
    $type = uc $type;
    if( defined $typealias{$type} )
    {
        $type = $typealias{$type};
    }

    # Insert type into template, if necessary
    $regname =~ s/\*/\L$type\E/g;

    if( !defined( $stats{$type} ))
    {
        die "Unknown type: $type\n";
    }

    my $mult = $dmg / $stats{$type}[0];
    my $armneg = sprintf( "%.1f", $stats{$type}[1] * $mult );
    my $impact = $stats{$type}[2];

    # If impact is negative, higher-tier weapons should make it
    # /larger/ -- I.E. more positive
    if( $impact >= 0 )
    {
        $impact *= $mult;
    }
    else
    {
        $impact /= $mult;
    }
    my $impact = sprintf( "%.1f", $impact );
    my $strikes = $stats{$type}[3];
    $type = "GREATSWORD" if( $type eq 'HAMMER' );
    my @stats = ($regname, $armneg, $impact, $strikes, $type );
    push @weapons, \@stats;
}

print $preamble;

for my $wep (@weapons)
{
    my( $regname, $armneg, $impact, $strikes, $type ) = @$wep;

    # printf "%-60s %5.1f %4.1f %1i %s\n", @$wep; next;

    $type = uc $type;
    (my $id = $regname) =~ s/:/_/g;
    $strikes--;

    print "        $id {\n";
    print "            D:armor_negation=$armneg\n";
    print "            D:impact=$impact\n";
    print "            I:max_strikes=$strikes\n";
    print "            S:registry_name=$regname\n";
    print "            S:weapon_type=$type\n";
    print "        }\n\n";
}

print $postamble;
