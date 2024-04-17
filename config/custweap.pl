use strict;

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
# Hammers are configured as greatswords, but with larger impact and
# only one strike per swing
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
# Instead of specifying a damage value, you can directly specify the
# armor negation, impact, and number of strikes, separated by slashes.
# This will set the stats directly, rather than calculating them based
# on their damage.
#
# Lines that are blank, consist entirely of spaces, or beginning with
# a # symbol are considered comments and ignored
#
# Armors can be added the same way, using one of the following types:
#   HELMET, CHESTPLATE, LEGGINGS, BOOTS
# The paramater supplied should be the armor points, or the stun armor
# and weight separated by slashes.
#
# The following alternate tool types are recognized:
#   PICK, SPADE, KAMA (Hoe), HAT, MASK, HEAD, HELM, HOOD, CHEST,
#   PLATE, LEGS, PANTS, FEET
# These alternate types will be inserted into the registry name when using *
# notation, but will be recognized as their 'proper' types. Note that this is
# different from the 'abbreviations' mentioned above -- abbreviations will
# be expanded to the full name when using * notation, while these are not
#
# Note that you're free to specify damage and armor values that don't
# match the actual stats of the tool. This will change the EFM stats
# for the tool, without affecting the actual damage or armor. For
# instance, if you think lead armor should have a higher weight,
# you could give it a larger armor value.

my $mults = <<END
# ----------------------------------------
# Tinker's Construct

# Based on stats for Iron tools

tconstruct:
broad*      Sword       0/1/2
*           Shovel      0/2.5/1
excavator   Shovel      0/4/1
*           Pickaxe     12/-0.2/1
hatchet     Axe         20/3/1
mattock     Hoe         0/-0.2/1
*           Kama        0/-0.2/1
*           Hammer      0/5/1
scythe      Sword       0/0.5/8
longsword   Katana      0/0.6/2
rapier      Spear       0/1.6/4
cleaver     Greatsword  0/2/3

# ----------------------------------------
# Construct Armory

# Based on stats for Iron armor

conarm:
*   Helmet      1/6
*   Chestplate  3/18
*   Leggings    2.5/15
*   Boots       1/6

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
    Helm    4
    Chest   9
    Pants   8
    Boots   5

item_*_obsidian
    Pickaxe 4
    Axe     9
    Shovel  4.5
    Sword   6
    Hoe     1
    Helm    3
    Chest   4
    Pants   3
    Boots   1

item_*_quartz
    Pickaxe 4
    Axe     9
    Shovel  4.5
    Sword   6
    Hoe     1
    Helm    3
    Chest   6
    Pants   5
    Boots   3

item_*_crystal_red
    Pickaxe 4.25
    Axe     9.25
    Shovel  4.75
    Sword   6.25
    Hoe     1
    Helm    3
    Chest   7
    Pants   6
    Boots   3

item_*_crystal_blue
    Pickaxe 4.25
    Axe     9.25
    Shovel  4.75
    Sword   6.25
    Hoe     1
    Helm    3
    Chest   7
    Pants   6
    Boots   3

item_*_crystal_light_blue
    Pickaxe 6
    Axe     11
    Shovel  6.5
    Sword   8
    Hoe     1
    Helm    4
    Chest   8
    Pants   7
    Boots   4

item_*_crystal_black
    Pickaxe 4
    Axe     9
    Shovel  4.5
    Sword   6
    Hoe     1
    Helm    1
    Chest   4
    Pants   3
    Boots   1

item_*_crystal_green
    Pickaxe 7.5
    Axe     12.5
    Shovel  8
    Sword   9.5
    Hoe     1
    Helm    4
    Chest   9
    Pants   9
    Boots   6

item_*_crystal_white
    Pickaxe 4.5
    Axe     9.5
    Shovel  5
    Sword   6.5
    Hoe     1
    Helm    3
    Chest   6
    Pants   6
    Boots   3

# ----------------------------------------
# Advanced Rocketry

advancedrocketry:

space*
    Helmet      1
    Chestplate  3
    Leggings    2
    Boots       1

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
  Helmet      1
  Chestplate  3
  Leggings    2
  Boots       1

gravitite_*
  P 5
  A 9
  S 5.5
  W 7
  Helmet      3
  Chestplate  8
  Leggings    6
  Boots       3

neptune_*
  Helmet      3
  Chestplate  8
  Leggings    6
  Boots       3

phoenix_*
  Helmet      3
  Chestplate  8
  Leggings    6
  Boots       3

obsidian_*
  Helmet      3
  Chestplate  8
  Leggings    6
  Boots       3

valkyrie_*
  Pickaxe 5
  Axe     9
  Shovel  5.5
  Helmet      3
  Chestplate  8
  Leggings    6
  Boots       3

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
    Spade   4.5
nether_quartz_*
    Hoe     1
    Axe     9
    Pickaxe 4
    Sword   6
    Spade   4.5

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

wanderer_*
    Helmet  1
    Chest   3
    Legs    2
    Boots   1
desert_*_iron
    Helmet  3
    Chest   9
    Legs    7
    Boots   3
desert_*_gold
    Helmet  2
    Chest   5
    Legs    3
    Boots   1
desert_*_diamond
    Helmet  3
    Chest   8
    Legs    6
    Boots   3

eyes_of_atum    Helmet  3
body_of_atum    Chest   8
legs_of_atum    Legs    6
feet_of_atum    Boots   3
halo_of_ra      Helmet  3
body_of_ra      Chest   8
legs_of_ra      Legs    6
feet_of_ra      Boots   3

# ----------------------------------------
# Botania

botania:
manasteel*
    Shovel  4.5
    Axe     9
    Sword   6
    Pick    4
    Helm    2
    Chest   6
    Legs    5
    Boots   2

terra*
    Sword   7
    Pick    5    
terrasteel*
    Helm    3
    Chest   8
    Legs    6
    Boots   3

elementium*
    Shovel  4.5
    Axe     9
    Sword   6
    Pick    4
    Helm    2
    Chest   6
    Legs    5
    Boots   2

star*       Sword   7
thunder*    Sword   7

manaweave*
    helm    1
    chest   2
    legs    2
    boots   1

manasteelhelmreveal     Helmet  2
terrasteelhelmreveal    Helmet  3
elementiumhelmreveal    Helmet  2

# ----------------------------------------
# Ender IO

enderio:
item_dark_steel_*
    Sword   7
    Pickaxe 5
    Axe     9
    Helmet          4
    Chestplate      10
    Leggings        9
    Boots           4
item_end_steel_*
    Sword   9
    Pickaxe 7
    Axe     9
    Helmet          4
    Chestplate      10
    Leggings        9
    Boots           4

# ----------------------------------------
# Erebus

erebus:

jade_*
    SWORD   6
    PICKAXE 4
    AXE     7
    SHOVEL  4.5
    HOE     1
    HELMET      2
    CHESTPLATE  7
    LEGGINGS    5
    BOOTS       3

exoskeleton_*
    Helmet      2
    Chestplate  3
    Leggings    2
    Boots       2
rein_exoskeleton_*
    Helmet      3
    Chestplate  8
    Leggings    6
    Boots       3
rhino_exoskeleton_*
    Helmet      2
    Chestplate  8
    Leggings    6
    Boots       3
bamboo_*
    Helmet      2
    Chestplate  4
    Leggings    3
    Boots       2

wasp_*              SWORD   10
jump_*              BOOTS   3
mushroom_*          HELMET  3
spider_t_shirt      CHEST   8
water_striders      LEGS    3

glider_*            CHESTPLATE  8
glider_*_powered    CHESTPLATE  8
sprint_*            LEGGINGS    6

compound_goggles        HELMET  2
rein_compound_goggles   HELMET  3


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

steel_armor_*
    Head    3
    Chest   9
    Legs    9
    Feet    3

faraday_suit_*
    Head    1
    Chest   2
    Legs    3
    Feet    1

# ----------------------------------------
# MachineMuse's Modular Powersuits

powersuits:
powerarmor_*
    Head    2
    Torso   6
    Legs    5
    Feet    2

# ----------------------------------------
# Mekanism

mekanismtools:

steel*
    Sword   8
    Hoe     1
    Shovel  6.5
    Axe     9
    Pickaxe 6
    Helmet      3
    Chestplate  9
    Leggings    7
    Boots       3
lapislazuli*
    Sword   6
    Hoe     1
    Shovel  4.5
    Axe     9
    Pickaxe 4
    Helmet      2
    Chestplate  5
    Leggings    6
    Boots       2
obsidian*
    Sword   14
    Hoe     1
    Shovel  12.5
    Axe     13
    Pickaxe 12
    Helmet      5
    Chestplate  12
    Leggings    8
    Boots       5
osmium*
    Sword   8
    Hoe     1
    Shovel  6.5
    Axe     9
    Pickaxe 6
    Helmet      3
    Chestplate  9
    Leggings    7
    Boots       3
bronze*
    Sword   19
    Hoe     1
    Shovel  8.5
    Axe     9
    Pickaxe 8
    Helmet      3
    Chestplate  6
    Leggings    5
    Boots       2
glowstone*
    Sword   9
    Hoe     1
    Shovel  7.5
    Axe     9
    Pickaxe 7
    Helmet      3
    Chestplate  7
    Leggings    6
    Boots       3

mekanism:armoredjetpack  Chest   12

# ----------------------------------------
# Natura

natura:
netherquartz_*
    Sword   5
    Pickaxe 3
    Shovel  3.5
    Axe     9
    Kama    5
fusewood_*
    Sword   6
    Pickaxe 4
    Shovel  4.5
    Axe     9
    Kama    6
darkwood_*
    Sword   5
    Pickaxe 3
    Shovel  3.5
    Axe     9
    Kama    5
bloodwood_*
    Sword   7
    Pickaxe 5
    Shovel  5.5
    Axe     4
    Kama    7
ghostwood_*
    Sword   4
    Pickaxe 2
    Shovel  2.5
    Axe     7
    Kama    4

imp_armor_*
    Helmet      1
    Chestplate  2
    Leggings    3
    Boots       1

# ----------------------------------------
# Nuclearcraft

nuclearcraft:

*_boron
    Sword   6.5
    Pickaxe 4.5
    Shovel  3
    Axe     3.5
    Hoe     1
    Helm    3
    Chest   8
    Legs    6
    Boots   3
*_tough
    Sword   7
    Pickaxe 5
    Shovel  5.5
    Axe     4
    Hoe     1
    Helm    3
    Chest   9
    Legs    7
    Boots   3
*_hard_carbon
    Sword   7
    Pickaxe 5
    Shovel  5.5
    Axe     4
    Hoe     1
    Helm    3
    Chest   7
    Legs    5
    Boots   3
*_boron_nitride
    Sword   7.5
    Pickaxe 5.5
    Shovel  6
    Axe     4.5
    Hoe     1
    Helm    3
    Chest   8
    Legs    6
    Boots   3

# ----------------------------------------
# ProjectRed

projectred-exploration:
peridot_*
    Sword   6.75
    Shovel  5.25
    Pickaxe 4.75
    Hoe     1
    Axe     9
    Helmet      3
    Chestplate  8
    Leggings    6
    Boots       3
ruby_*
    Sword   7
    Shovel  5.5
    Pickaxe 5
    Hoe     1
    Axe     9
    Helmet      3
    Chestplate  8
    Leggings    6
    Boots       3
sapphire_*
    Sword   7
    Shovel  5.5
    Pickaxe 5
    Hoe     1
    Axe     9
    Helmet      3
    Chestplate  8
    Leggings    6
    Boots       3

# ----------------------------------------
# Random Things

randomthings:
spectre*
    Sword   7
    Pickaxe 5
    Axe     9
    Shovel  5.5

magic*                  Hood        2
superlubricent*         Boots       2
obsidianwaterwalking*   Boots       1
lavawader               Boots       1
waterwalking*           Boots       1

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

armor.*_flux
    Helmet  3
    Plate   8
    Legs    6
    Boots   3

# ----------------------------------------
# Simply Jetpacks

# Unfortunately, simply jetpacks uses a single item for all
# variants, so we can't adjust depending on tier

simplyjetpacks:
itemjetpack     Chest   6
itemfluxpack    Chest   6

# ----------------------------------------
# Thaumcraft

thaumcraft:

thaumium_*
    axe     9
    sword   6.5
    shovel  5
    hoe     1
    pick    4.5
    helm    3
    chest   9
    legs    7
    boots   3
void_*
    axe     9
    sword   7
    shovel  5.5
    hoe     1
    pick    5
    helm    3
    chest   9
    legs    7
    boots   3
elemental_*
    axe     9
    sword   7
    shovel  5.5
    hoe     1
    pick    5
cloth_*
    chest   1
    legs    2
    boots   1
void_robe_*
    helm    1
    chest   2
    legs    1
fortress_*
    helm    3
    chest   7
    legs    6
crimson_robe_*
    helm    1
    chest   2
    legs    1
crimson_praetor_*
    helm    3
    chest   7
    legs    6
crimson_plate_*
    helm    2
    chest   6
    legs    5


goggles     Helmet  1
traveller_* Boots   1
crimson_*   Boots   2


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

    Helmet      2
    Chestplate  5
    Leggings    3
    Boots       1

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

    Helmet      3
    Chestplate  8
    Leggings    6
    Boots       3

lurker_skin_*
    Helmet      1
    Chestplate  3
    Leggings    2
    Boots       1

syrmorite_*
    Helmet      2
    Chestplate  6
    Leggings    5
    Boots       2

ancient_*
    Helmet      3
    Chestplate  8
    Leggings    6
    Boots       3



wights_bane         Sword   4
sludge_slicer       Sword   4
critter_cruncher    Sword   4
hag_hacker          Axe     4.5
swift_pick          Pickaxe 5

ancient_greatsword  Greatsword  7
ancient_battle_axe  Greatsword  9
valonite_greataxe   Greatsword  9

skull_*             Mask        2
explorers_*         Hat         1
rubber_*            Boots       1
marsh_runner_*      Boots       1

spirit_tree_face_large_*    Mask    2
spirit_tree_face_small_*    Mask    2

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

armor.*_copper
    helmet  1
    plate   3
    legs    3
    boots   1

armor.*_tin
    helmet  1
    plate   4
    legs    3
    boots   1

armor.*_silver
    helmet  1
    plate   4
    legs    4
    boots   2

armor.*_lead
    helmet  3
    plate   9
    legs    7
    boots   3

armor.*_aluminum
    helmet  2
    plate   4
    legs    3
    boots   1

armor.*_nickel
    helmet  2
    plate   5
    legs    5
    boots   2

armor.*_platinum
    helmet  3
    plate   8
    legs    6
    boots   3

armor.*_steel
    helmet  3
    plate   9
    legs    7
    boots   3

armor.*_electrum
    helmet  2
    plate   4
    legs    4
    boots   2

armor.*_invar
    helmet  2
    plate   7
    legs    5
    boots   2

armor.*_bronze
    helmet  2
    plate   6
    legs    6
    boots   2

armor.*_constantan
    helmet  2
    plate   4
    legs    4
    boots   2

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

fire_*
    Helmet      2
    Chestplate  5
    Leggings    4
    Boots       2
scale_*
    Helmet      2
    Chestplate  6
    Leggings    5
    Boots       2

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

    Helmet      2
    Chestplate  7
    Leggings    5
    Boots       2

fiery_*
    Sword   8
    Pickaxe 6

    Helmet      4
    Chestplate  9
    Leggings    7
    Boots       4

Steeleaf_*
    Sword   7
    Shovel  5.5
    Pickaxe 5
    Axe     10
    Hoe     1

    Helmet      3
    Chestplate  8
    Leggings    6
    Boots       3

knightmetal_*
    Sword   7
    Pickaxe 5
    Axe     10

    Helmet      3
    Chestplate  8
    Leggings    6
    Boots       3

giant_*
    Pickaxe 10
    Sword   12

phantom_*
    Helmet      3
    Chestplate  8

naga_*
    Chestplate  7
    Leggings    6

yeti_*
    Helmet      4
    Chestplate  7
    Leggings    6
    Boots       3

arctic_*
    Helmet      2
    Chestplate  7
    Leggings    5
    Boots       2

minotaur_axe_gold       Axe     7
minotaur_axe            Axe     10
mazebreaker_*           Pickaxe 5
ice_*                   Sword   7.5
glass_*                 Sword   40

END
;

# Good code requires no comments. Therefore this program is
# heavily commented.

my @weapons;    # The defined weapons
my @armors;     # The defined armors

# Damage, armor negation, impact, and max strikes of iron tools
# Used to calculate stats for other tools based on their damage values
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

# Weight and Stun Armor of generic armor
my %astats = (
    # Type           ARM STN  WGT
    HELMET =>       [  2,  1,   4],
    CHESTPLATE =>   [  6,  3,  12],
    LEGGINGS =>     [  5,2.5,  10],
    BOOTS =>        [  2,  1,   4]
);

# Abbreviations for several tool types
my %typeabbr = (
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

# Alternate names for some tool types
my %typealias = (
    PICK   => "PICKAXE",
    SPADE  => "SHOVEL",
    KAMA   => "HOE",
    HAT    => "HELMET",
    MASK   => "HELMET",
    HEAD   => "HELMET",
    HELM   => "HELMET",
    HOOD   => "HELMET",
    CHEST  => "CHESTPLATE",
    PLATE  => "CHESTPLATE",
    TORSO  => "CHESTPLATE",
    LEGS   => "LEGGINGS",
    PANTS  => "LEGGINGS",
    FEET   => "BOOTS",
);

my $mod;        # Mod ID for subsequent entries
my $spec;       # Registry name template for subsequent entries

for my $line (split "\n", $mults)
{
    # Skip blank lines and comments
    next if( $line =~ /^\s*$/ || $line =~ /^#/ );

    # Check for a mod name specifier
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

    # Resolve type abbreviations
    $type = uc $type;
    if( defined $typeabbr{$type} )
    {
        $type = $typeabbr{$type};
    }
    # Insert type into template, if necessary
    $regname =~ s/\*/\L$type\E/g;

    # Resolve type aliases
    if( defined $typealias{$type} )
    {
        $type = $typealias{$type};
    }

    my $isarm;          # Is this an armor item?
    my $statinfo;       # Stats for this item

    # Check if this is a valid armor
    if( defined( $astats{$type} ))
    {
        $isarm = 1;
        $statinfo = $astats{$type};
    }
    # Check if this is an invalid tool type
    elsif( !defined( $stats{$type} ))
    {
        die "Unknown type: $type\n";
    }
    # ...otherwise it's a weapon
    else
    {
        $statinfo = $stats{$type};
    }

    my $mult;       # Stat multiplier based on a template item
    my @statspec;   # Stats directly specified

    # If the 'damage' entry has slashes, it's actually an 
    # explicit stats entry
    if( $dmg =~ /\// )
    {
        @statspec = split '/', $dmg;
    }
    else
    {
        $mult = $dmg / $statinfo->[0];
    }

    if( !$isarm )
    {
        my( $armneg, $impact, $strikes );
        if( $mult )
        {
            $armneg = sprintf( "%.1f", $statinfo->[1] * $mult );
            $impact = $statinfo->[2];

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
            $impact = sprintf( "%.1f", $impact );
            $strikes = $statinfo->[3];
        }
        else
        {
            ($armneg, $impact, $strikes) = @statspec;
        }
        $type = "GREATSWORD" if( $type eq 'HAMMER' );
        my @stats = ($regname, $armneg, $impact, $strikes, $type);
        push @weapons, \@stats;
    }
    else
    {
        my( $stun, $weight );

        if( $mult )
        {
            $stun = sprintf( "%.1f", $statinfo->[1] * $mult );
            $weight = sprintf( "%.1f", $statinfo->[2] * $mult );
        }
        else
        {
            ($stun, $weight) = @statspec;
        }

        my @stats = ($regname, $stun, $weight);
        push @armors, \@stats;
    }
}

print <<END
custom {

    custom_weaponry {
END
;

for my $wep (@weapons)
{
    my( $regname, $armneg, $impact, $strikes, $type ) = @$wep;

    # printf "%-60s %5.1f %4.1f %1i %s\n", @$wep; next;

    $type = uc $type;
    (my $id = $regname) =~ s/:/_/g;

    # In the configuration file, 'max strikes' apparently means
    # 'max extra strikes'
    $strikes--;

    print "        $id {\n";
    print "            D:armor_negation=$armneg\n";
    print "            D:impact=$impact\n";
    print "            I:max_strikes=$strikes\n";
    print "            S:registry_name=$regname\n";
    print "            S:weapon_type=$type\n";
    print "        }\n\n";
}

print <<END

    }

    custom_armor {
END
;

for my $arm (@armors)
{
    my( $regname, $stun, $weight ) = @$arm;

    (my $id = $regname) =~ s/:/_/g;

    print "        $id {\n";
    print "            S:registry_name=$regname\n";
    print "            D:stun_armor=$stun\n";
    print "            D:weight=$weight\n";
    print "        }\n\n";
}

print <<END

    }

}
END
;

# Manasteel
# Nether wood
# Thaumium
# Certus
