data.raw["item"]["coal"].fuel_value =nil
data.raw["item"]["wood"].fuel_value =nil


data:extend({
{
  type= "item",
  icon_size=32,
  name= "aaaaaaCheatFuel",
  icon = "__NCP-Tech__/graphics/item/Zinc_billet.png",
  icon_size=32,
  
  subgroup = "ores",
  order= "a-b-c",
  stack_size= 500,
  fuel_value = "800MJ",
  fuel_category = "chemical",

},
{
  type= "tool",
  name= "Credit",
  icon = "__NCP-Tech__/graphics/item/Credit.png",
  icon_size=32,
  
  subgroup = "ores",
  order= "aa",
  stack_size= 100,
  durability = 1,
},
{
  type= "tool",
  name= "Credit100",
  icon = "__NCP-Tech__/graphics/item/Credit100.png",
  icon_size=32,
  
  subgroup = "ores",
  order= "ab",
  stack_size= 100,
  durability = 1,
},
{
  type= "tool",
  name= "Credit10k",
  icon = "__NCP-Tech__/graphics/item/Credit10k.png",
  icon_size=32,
  
  subgroup = "ores",
  order= "ac",
  stack_size= 100,
  durability = 1,
},
{
  type= "tool",
  name= "Credit1M",
  icon = "__NCP-Tech__/graphics/item/Credit1M.png",
  icon_size=32,
  
  subgroup = "ores",
  order= "ad",
  stack_size= 1000,
  durability = 1,
},
{
  type= "tool",
  name= "Credit1G",
  icon = "__NCP-Tech__/graphics/item/Credit1G.png",
  icon_size=32,
  
  subgroup = "ores",
  order= "ae",
  stack_size= 50,
  durability = 1,
},
{
  type= "item",
  icon_size=32,
  name= "Tungsten_carbide_billet",
  icon = "__NCP-Tech__/graphics/item/Tungsten_carbide_billet.png",
  
  subgroup = "ores",
  order= "a-b-c",
  stack_size= 50,
},








})

--[[
data:extend({

 {
    type= "item",
	icon_size=32,
    name= "Alumina",
    icon = "__NCP-Tech__/graphics/item/Alumina.png",
    
    subgroup = "Raw_ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Nichrome",
    icon = "__NCP-Tech__/graphics/item/Nichrome.png",
    
    subgroup = "Raw_ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
     icon_size=32,
    name= "Lithium_carbonate",
    icon = "__NCP-Tech__/graphics/item/Lithium_carbonate.png",
    
    subgroup = "Raw_ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Sodium_chlorate",
    icon = "__NCP-Tech__/graphics/item/Sodium_chlorate.png",
    
    subgroup = "Raw_ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Sodium_perchlorate",
    icon = "__NCP-Tech__/graphics/item/Sodium_perchlorate.png",
    
    subgroup = "Raw_ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Quarried_limestone",
    icon = "__NCP-Tech__/graphics/item/Quarried_limestone.png",
    
    subgroup = "Raw_ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Carbon_fiber_fabric",
    icon = "__NCP-Tech__/graphics/item/Carbon_fiber_fabric.png",
    
    subgroup = "Raw_ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Carbon_fiber_filament",
    icon = "__NCP-Tech__/graphics/item/Carbon_fiber_filament.png",
    
    subgroup = "Raw_ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "DNT",
    icon = "__NCP-Tech__/graphics/item/DNT.png",
    
    subgroup = "Raw_ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "PAN_filament",
    icon = "__NCP-Tech__/graphics/item/PAN_filament.png",
    
    subgroup = "Raw_ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "TNT",
    icon = "__NCP-Tech__/graphics/item/TNT.png",
    
    subgroup = "Raw_ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Limestone_crushed",
    icon = "__NCP-Tech__/graphics/item/Limestone_crushed.png",
    
    subgroup = "Raw_ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Aluminium_billet",
    icon = "__NCP-Tech__/graphics/item/Aluminium_billet.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Ammonium_Paratungstate",
    icon = "__NCP-Tech__/graphics/item/Ammonium_Paratungstate.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Asphalt_concrete",
    icon = "__NCP-Tech__/graphics/item/Asphalt_concrete.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Battery",
    icon = "__NCP-Tech__/graphics/item/Battery.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Battery_casing",
    icon = "__NCP-Tech__/graphics/item/Battery_casing.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Bauxite_concentrate",
    icon = "__NCP-Tech__/graphics/item/Bauxite_concentrate.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Bauxite_crushed_ore",
    icon = "__NCP-Tech__/graphics/item/Bauxite_crushed_ore.png",
    
    subgroup = "Crushed",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Bauxite_ore",
    icon = "__NCP-Tech__/graphics/item/Bauxite_ore.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Bauxite_tailings",
    icon = "__NCP-Tech__/graphics/item/Bauxite_tailings.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Brass_billet",
    icon = "__NCP-Tech__/graphics/item/Brass_billet.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Brass_plate",
    icon = "__NCP-Tech__/graphics/item/Brass_plate.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Calcium_chloride",
    icon = "__NCP-Tech__/graphics/item/Calcium_chloride.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Calcium_fluoride",
    icon = "__NCP-Tech__/graphics/item/Calcium_fluoride.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Calcium_oxide",
    icon = "__NCP-Tech__/graphics/item/Calcium_oxide.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Calcium_sulfate",
    icon = "__NCP-Tech__/graphics/item/Calcium_sulfate.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Canister",
    icon = "__NCP-Tech__/graphics/item/Canister.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Carbon_dust",
    icon = "__NCP-Tech__/graphics/item/Carbon_dust.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Cassiterite_crushed_ore",
    icon = "__NCP-Tech__/graphics/item/Cassiterite_crushed_ore.png",
    
    subgroup = "Crushed",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Cassiterite_ore",
    icon = "__NCP-Tech__/graphics/item/Cassiterite_ore.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Chalcopyrite_crushed_ore",
    icon = "__NCP-Tech__/graphics/item/Chalcopyrite_crushed_ore.png",
    
    subgroup = "Crushed",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Chalcopyrite_ore",
    icon = "__NCP-Tech__/graphics/item/Chalcopyrite_ore.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Charcoal",
    icon = "__NCP-Tech__/graphics/item/Charcoal.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Chloroauric_acid",
    icon = "__NCP-Tech__/graphics/item/Chloroauric_acid.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Chromite_concentrate",
    icon = "__NCP-Tech__/graphics/item/Chromite_concentrate.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Chromite_crushed_ore",
    icon = "__NCP-Tech__/graphics/item/Chromite_crushed_ore.png",
    
    subgroup = "Crushed",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Chromite_ore",
    icon = "__NCP-Tech__/graphics/item/Chromite_ore.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Clay_dry",
    icon = "__NCP-Tech__/graphics/item/Clay_dry.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Clay_wet",
    icon = "__NCP-Tech__/graphics/item/Clay_wet.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Coal_coke",
    icon = "__NCP-Tech__/graphics/item/Coal_coke.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
	fuel_value="280MJ",
	fuel_category = "chemical",
  },
  {
    type= "item",
    icon_size=32,
    name= "Coal_tar",
    icon = "__NCP-Tech__/graphics/item/Coal_tar.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Cobalt_oxide",
    icon = "__NCP-Tech__/graphics/item/Cobalt_oxide.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Copper_anode",
    icon = "__NCP-Tech__/graphics/item/Copper_anode.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Copper_billet",
    icon = "__NCP-Tech__/graphics/item/Copper_billet.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Copper_blister",
    icon = "__NCP-Tech__/graphics/item/Copper_blister.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Copper_concentrate",
    icon = "__NCP-Tech__/graphics/item/Copper_concentrate.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Copper_native_ore",
    icon = "__NCP-Tech__/graphics/item/Copper_native_ore.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Copper_plate",
    icon = "__NCP-Tech__/graphics/item/Copper_plate.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Copper_rod",
    icon = "__NCP-Tech__/graphics/item/Copper_rod.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Cordite",
    icon = "__NCP-Tech__/graphics/item/Cordite.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Cotton",
    icon = "__NCP-Tech__/graphics/item/Cotton.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Diesel_canister",
    icon = "__NCP-Tech__/graphics/item/Diesel_canister.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Direct_reduced_iron",
    icon = "__NCP-Tech__/graphics/item/Direct_reduced_iron.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Dore_bar",
    icon = "__NCP-Tech__/graphics/item/Dore_bar.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Ferrochrome",
    icon = "__NCP-Tech__/graphics/item/Ferrochrome.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Fertilizer",
    icon = "__NCP-Tech__/graphics/item/Fertilizer.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Fluorite_crushed_ore",
    icon = "__NCP-Tech__/graphics/item/Fluorite_crushed_ore.png",
    
    subgroup = "Crushed",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Fluorite_ore",
    icon = "__NCP-Tech__/graphics/item/Fluorite_ore.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Galena_crushed_ore",
    icon = "__NCP-Tech__/graphics/item/Galena_crushed_ore.png",
    
    subgroup = "Crushed",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Galena_ore",
    icon = "__NCP-Tech__/graphics/item/Galena_ore.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Glass",
    icon = "__NCP-Tech__/graphics/item/Glass.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Gold_concentrate",
    icon = "__NCP-Tech__/graphics/item/Gold_concentrate.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Gold_crushed_ore",
    icon = "__NCP-Tech__/graphics/item/Gold_crushed_ore.png",
    
    subgroup = "Crushed",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Gold_ingot",
    icon = "__NCP-Tech__/graphics/item/Gold_ingot.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Gold_ore",
    icon = "__NCP-Tech__/graphics/item/Gold_ore.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Gravel",
    icon = "__NCP-Tech__/graphics/item/Gravel.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Guncotton",
    icon = "__NCP-Tech__/graphics/item/Guncotton.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Gunpowder",
    icon = "__NCP-Tech__/graphics/item/Gunpowder.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Lead_billet",
    icon = "__NCP-Tech__/graphics/item/Lead_billet.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Lead_bullion",
    icon = "__NCP-Tech__/graphics/item/Lead_bullion.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Lead_concentrate",
    icon = "__NCP-Tech__/graphics/item/Lead_concentrate.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Lead_plate",
    icon = "__NCP-Tech__/graphics/item/Lead_plate.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Li-ion_battery",
    icon = "__NCP-Tech__/graphics/item/Li-ion_battery.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Lithium",
    icon = "__NCP-Tech__/graphics/item/Lithium.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Lithium_chloride",
    icon = "__NCP-Tech__/graphics/item/Lithium_chloride.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Lithium_cobalt_oxide",
    icon = "__NCP-Tech__/graphics/item/Lithium_cobalt_oxide.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Lithium_perchlorate",
    icon = "__NCP-Tech__/graphics/item/Lithium_perchlorate.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Lithium_tungstate",
    icon = "__NCP-Tech__/graphics/item/Lithium_tungstate.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Magnetite_concentrate",
    icon = "__NCP-Tech__/graphics/item/Magnetite_concentrate.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Magnetite_crushed_ore",
    icon = "__NCP-Tech__/graphics/item/Magnetite_crushed_ore.png",
    
    subgroup = "Crushed",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Magnetite_ore",
    icon = "__NCP-Tech__/graphics/item/Magnetite_ore.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Nickel",
    icon = "__NCP-Tech__/graphics/item/Nickel.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Nickel_cathode",
    icon = "__NCP-Tech__/graphics/item/Nickel_cathode.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Nickel_concentrate",
    icon = "__NCP-Tech__/graphics/item/Nickel_concentrate.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Nickel_dust",
    icon = "__NCP-Tech__/graphics/item/Nickel_dust.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Nickel_plate",
    icon = "__NCP-Tech__/graphics/item/Nickel_plate.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Pentlandite_crushed_ore",
    icon = "__NCP-Tech__/graphics/item/Pentlandite_crushed_ore.png",
    
    subgroup = "Crushed",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Pentlandite_ore",
    icon = "__NCP-Tech__/graphics/item/Pentlandite_ore.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Petroleum_jelly",
    icon = "__NCP-Tech__/graphics/item/Petroleum_jelly.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Pig_iron",
    icon = "__NCP-Tech__/graphics/item/Pig_iron.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Pig_iron_early",
    icon = "__NCP-Tech__/graphics/item/Pig_iron.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Plastic_pellets",
    icon = "__NCP-Tech__/graphics/item/Plastic_pellets.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Quarried_stone",
    icon = "__NCP-Tech__/graphics/item/Quarried_stone.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Quartz",
    icon = "__NCP-Tech__/graphics/item/Quartz.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Quartz_rock",
    icon = "__NCP-Tech__/graphics/item/Quartz_rock.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Quartz_crushed",
    icon = "__NCP-Tech__/graphics/item/Quartz_crushed.png",
    
    subgroup = "Crushed",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Resin",
    icon = "__NCP-Tech__/graphics/item/Resin.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Rubber",
    icon = "__NCP-Tech__/graphics/item/Rubber.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Rutile_crushed_ore",
    icon = "__NCP-Tech__/graphics/item/Rutile_crushed_ore.png",
    
    subgroup = "Crushed",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Rutile_ore",
    icon = "__NCP-Tech__/graphics/item/Rutile_ore.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Salt",
    icon = "__NCP-Tech__/graphics/item/Salt.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Potassium_nitrate",
    icon = "__NCP-Tech__/graphics/item/Potassium_nitrate.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Sand",
    icon = "__NCP-Tech__/graphics/item/Sand.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Scheelite_crushed_ore",
    icon = "__NCP-Tech__/graphics/item/Scheelite_crushed_ore.png",
    
    subgroup = "Crushed",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Scheelite_ore",
    icon = "__NCP-Tech__/graphics/item/Scheelite_ore.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Silicon_boule",
    icon = "__NCP-Tech__/graphics/item/Silicon_boule.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Silicon_carbide",
    icon = "__NCP-Tech__/graphics/item/Silicon_carbide.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Silicon_dioxide",
    icon = "__NCP-Tech__/graphics/item/Silicon_dioxide.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Silicon_wafer",
    icon = "__NCP-Tech__/graphics/item/Silicon_wafer.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Silt",
    icon = "__NCP-Tech__/graphics/item/Silt.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Silver_ingot",
    icon = "__NCP-Tech__/graphics/item/Silver_ingot.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Silver_nitrate",
    icon = "__NCP-Tech__/graphics/item/Silver_nitrate.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Silver_oxide",
    icon = "__NCP-Tech__/graphics/item/Silver_oxide.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Silver-oxide_battery",
    icon = "__NCP-Tech__/graphics/item/Silver-oxide_battery.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Slag",
    icon = "__NCP-Tech__/graphics/item/Slag.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Slag_dust",
    icon = "__NCP-Tech__/graphics/item/Slag_dust.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Sodium_hydroxide",
    icon = "__NCP-Tech__/graphics/item/Sodium_hydroxide.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Sphalerite_ore",
    icon = "__NCP-Tech__/graphics/item/Sphalerite_ore.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Stainless_steel_billet",
    icon = "__NCP-Tech__/graphics/item/Stainless_steel_billet.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Steel_billet",
    icon = "__NCP-Tech__/graphics/item/Steel_billet.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Stone_crushed",
    icon = "__NCP-Tech__/graphics/item/Stone_crushed.png",
    
    subgroup = "Crushed",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Styrofoam",
    icon = "__NCP-Tech__/graphics/item/Styrofoam.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Sulfur",
    icon = "__NCP-Tech__/graphics/item/Sulfur.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Tin_billet",
    icon = "__NCP-Tech__/graphics/item/Tin_billet.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Tin_concentrate",
    icon = "__NCP-Tech__/graphics/item/Tin_concentrate.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Titanium_billet",
    icon = "__NCP-Tech__/graphics/item/Titanium_billet.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Titanium_nitride_film",
    icon = "__NCP-Tech__/graphics/item/Titanium_nitride_film.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Titanium_dioxide",
    icon = "__NCP-Tech__/graphics/item/Titanium_dioxide.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Tungsten_carbide_billet",
    icon = "__NCP-Tech__/graphics/item/Tungsten_carbide_billet.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Tungsten_oxide",
    icon = "__NCP-Tech__/graphics/item/Tungsten_oxide.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Tungsten_powder",
    icon = "__NCP-Tech__/graphics/item/Tungsten_powder.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Uraninite_ore_concentrate",
    icon = "__NCP-Tech__/graphics/item/Uraninite_ore_concentrate.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Uraninite_ore",
    icon = "__NCP-Tech__/graphics/item/Uraninite_ore.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },


  {
    type= "item",
    icon_size=32,
    name= "Wood",
    icon = "__NCP-Tech__/graphics/item/Wood.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
	fuel_value="180MJ",
	fuel_category = "chemical",
  },
  {
    type= "item",
    icon_size=32,
    name= "Wooden_board",
    icon = "__NCP-Tech__/graphics/item/Wooden_board.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Wrought_iron_billet",
    icon = "__NCP-Tech__/graphics/item/Wrought_iron_billet.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Iron_billet",
    icon = "__NCP-Tech__/graphics/item/Wrought_iron_billet.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Yellowcake",
    icon = "__NCP-Tech__/graphics/item/Yellowcake.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Zinc_concentrate",
    icon = "__NCP-Tech__/graphics/item/Zinc_concentrate.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Zinc_matte",
    icon = "__NCP-Tech__/graphics/item/Zinc_matte.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Zinc_plate",
    icon = "__NCP-Tech__/graphics/item/Zinc_plate.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Zircon",
    icon = "__NCP-Tech__/graphics/item/Zircon.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Zirconium_dust",
    icon = "__NCP-Tech__/graphics/item/Zirconium_dust.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Zirconium_billet",
    icon = "__NCP-Tech__/graphics/item/Zirconium_billet.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Zirconium_plate",
    icon = "__NCP-Tech__/graphics/item/Zirconium_plate.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Zirconium_tube",
    icon = "__NCP-Tech__/graphics/item/Zirconium_tube.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },


  ----------------------------

  {
    type= "item",
    icon_size=32,
    name= "Lead_solder_ingot",
    icon = "__NCP-Tech__/graphics/item/Lead_solder_ingot.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Lead_solder",
    icon = "__NCP-Tech__/graphics/item/Lead_solder.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Lead_free_solder_ingot",
    icon = "__NCP-Tech__/graphics/item/Lead_free_solder_ingot.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Lead_free_solder",
    icon = "__NCP-Tech__/graphics/item/Lead_free_solder.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Solder_paste",
    icon = "__NCP-Tech__/graphics/item/Solder_paste.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Magnesium_hydroxide",
    icon = "__NCP-Tech__/graphics/item/Magnesium_hydroxide.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Magnesium_oxide",
    icon = "__NCP-Tech__/graphics/item/Magnesium_oxide.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Ferrosilicon",
    icon = "__NCP-Tech__/graphics/item/Ferrosilicon.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Magnesium_billet",
    icon = "__NCP-Tech__/graphics/item/Magnesium_billet.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Graphite_ore",
    icon = "__NCP-Tech__/graphics/item/Graphite_ore.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Graphite_crushed_ore",
    icon = "__NCP-Tech__/graphics/item/Graphite_crushed_ore.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Graphite_crushed",
    icon = "__NCP-Tech__/graphics/item/Graphite_crushed.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Graphite_dust",
    icon = "__NCP-Tech__/graphics/item/Graphite_dust.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Graphite_electrode",
    icon = "__NCP-Tech__/graphics/item/Graphite_electrode.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Cement",
    icon = "__NCP-Tech__/graphics/item/Cement.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Graphite_crucible",
    icon = "__NCP-Tech__/graphics/item/Graphite_crucible.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Graphite_rod",
    icon = "__NCP-Tech__/graphics/item/Graphite_rod.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Silicon_furnace",
    icon = "__NCP-Tech__/graphics/item/Silicon_furnace.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Cement_bauxite",
    icon = "__NCP-Tech__/graphics/item/Cement_bauxite.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Cement_slag",
    icon = "__NCP-Tech__/graphics/item/Cement_slag.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Calcium_carbonate",
    icon = "__NCP-Tech__/graphics/item/Calcium_carbonate.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Cement_clinker",
    icon = "__NCP-Tech__/graphics/item/Cement_clinker.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Concrete_block",
    icon = "__NCP-Tech__/graphics/item/Concrete_block.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Concrete_pipe",
    icon = "__NCP-Tech__/graphics/item/Concrete_pipe.png",
    
    subgroup = "pipe",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Concrete_underground_pipe",
    icon = "__NCP-Tech__/graphics/item/Concrete_underground_pipe.png",
    
    subgroup = "underground_pipe",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Concrete_wall",
    icon = "__NCP-Tech__/graphics/item/Concrete_wall.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Sodium_carbonate",
    icon = "__NCP-Tech__/graphics/item/Sodium_carbonate.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Diamond_uncut",
    icon = "__NCP-Tech__/graphics/item/Diamond_uncut.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Aluminosilicate_glass",
    icon = "__NCP-Tech__/graphics/item/Aluminosilicate_glass.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Fiberglass_roving",
    icon = "__NCP-Tech__/graphics/item/Fiberglass_roving.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Fiberglass_cloth",
    icon = "__NCP-Tech__/graphics/item/Fiberglass_cloth.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Fiberglass_laminate",
    icon = "__NCP-Tech__/graphics/item/Fiberglass_laminate.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Germanium_dioxide",
    icon = "__NCP-Tech__/graphics/item/Germanium_dioxide.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Oxide_glass",
    icon = "__NCP-Tech__/graphics/item/Oxide_glass.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Glass_tube",
    icon = "__NCP-Tech__/graphics/item/Glass_tube.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Purified_glass_tube",
    icon = "__NCP-Tech__/graphics/item/Purified_glass_tube.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Optical_fiber",
    icon = "__NCP-Tech__/graphics/item/Optical_fiber.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Germanium_concentrate",
    icon = "__NCP-Tech__/graphics/item/Germanium_concentrate.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Germanium",
    icon = "__NCP-Tech__/graphics/item/Germanium.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "tool",
    name= "Credit",
    icon = "__NCP-Tech__/graphics/item/Credit.png",
    
    subgroup = "ores",
    order= "aa",
    stack_size= 100,
	durability = 1,
  },
  {
    type= "tool",
    name= "Credit100",
    icon = "__NCP-Tech__/graphics/item/Credit100.png",
    
    subgroup = "ores",
    order= "ab",
    stack_size= 100,
	durability = 1,
  },
  {
    type= "tool",
    name= "Credit10k",
    icon = "__NCP-Tech__/graphics/item/Credit10k.png",
    
    subgroup = "ores",
    order= "ac",
    stack_size= 100,
	durability = 1,
  },
  {
    type= "tool",
    name= "Credit1M",
    icon = "__NCP-Tech__/graphics/item/Credit1M.png",
    
    subgroup = "ores",
    order= "ad",
    stack_size= 1000,
	durability = 1,
  },
  {
    type= "tool",
    name= "Credit1G",
    icon = "__NCP-Tech__/graphics/item/Credit1G.png",
    
    subgroup = "ores",
    order= "ae",
    stack_size= 50,
	durability = 1,
  },
  {
    type= "item",
    icon_size=32,
    name= "Silicon_metallurgical",
    icon = "__NCP-Tech__/graphics/item/Silicon_metallurgical.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Silicon_polycrystalline_granule",
    icon = "__NCP-Tech__/graphics/item/Silicon_polycrystalline_granule.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Silicon_polycrystalline_rod",
    icon = "__NCP-Tech__/graphics/item/Silicon_polycrystalline_rod.png",
    
    subgroup = "rod",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Bauxite_ore_dust",
    icon = "__NCP-Tech__/graphics/item/Silicon_polycrystalline_rod.png",
    
    subgroup = "rod",
    order= "a-b-c",
    stack_size= 50,
  },



























  {
    type= "item",
    icon_size=32,
    name= "Lead_scrap",
    icon = "__NCP-Tech__/graphics/item/Lead_scrap.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Lead_dust",
    icon = "__NCP-Tech__/graphics/item/Lead_dust.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Lead_oxide",
    icon = "__NCP-Tech__/graphics/item/Lead_oxide.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Magnesium_chloride",
    icon = "__NCP-Tech__/graphics/item/Magnesium_chloride.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },

  {
    type= "item",
    icon_size=32,
    name= "Cotton_seed",
    icon = "__NCP-Tech__/graphics/item/Cotton_seed.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },













  --------------------------------------------
  {
    type= "item",
    icon_size=32,
    name= "Wood_raw",
    icon = "__NCP-Tech__/graphics/item/Wood_raw.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Uraninite_crushed_ore",
    icon = "__NCP-Tech__/graphics/item/Uraninite_crushed_ore.png",
    
    subgroup = "Crushed",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Nickel_billet",
    icon = "__NCP-Tech__/graphics/item/Nickel_billet.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Sphalerite_crushed_ore",
    icon = "__NCP-Tech__/graphics/item/Sphalerite_crushed_ore.png",
    
    subgroup = "Crushed",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Zinc_billet",
    icon = "__NCP-Tech__/graphics/item/Zinc_billet.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Rare_earth",
    icon = "__NCP-Tech__/graphics/item/Rare_earth.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Coal_crushed_ore",
    icon = "__NCP-Tech__/graphics/item/Coal_crushed_ore.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Coal_dust",
    icon = "__NCP-Tech__/graphics/item/Coal_dust.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
	fuel_value="300MJ",
	fuel_category = "chemical",

  },
  {
    type= "item",
    icon_size=32,
    name= "Coal_ore_dust",
    icon = "__NCP-Tech__/graphics/item/Coal_ore_dust.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Rutile_ore_sand",
    icon = "__NCP-Tech__/graphics/item/Rutile_ore_sand.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Rutile_sand",
    icon = "__NCP-Tech__/graphics/item/Rutile_sand.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },

  {
    type= "item",
    icon_size=32,
    name= "Titanium_dioxide_pellet",
    icon = "__NCP-Tech__/graphics/item/Titanium_dioxide_pellet.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Titanium_pellet",
    icon = "__NCP-Tech__/graphics/item/Titanium_pellet.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Titanium_dust_dirty",
    icon = "__NCP-Tech__/graphics/item/Titanium_dust_dirty.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Titanium_dust",
    icon = "__NCP-Tech__/graphics/item/Titanium_dust.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Zirconium_sponge",
    icon = "__NCP-Tech__/graphics/item/Zirconium_sponge.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Zirconium_tetrachloride",
    icon = "__NCP-Tech__/graphics/item/Zirconium_tetrachloride.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Uranium_tetrafluoride",
    icon = "__NCP-Tech__/graphics/item/Uranium_tetrafluoride.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Uranium_dioxide",
    icon = "__NCP-Tech__/graphics/item/Uranium_dioxide.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },
  {
    type= "item",
    icon_size=32,
    name= "Coal",
    icon = "__NCP-Tech__/graphics/item/Coal.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
  },






















  --CHEATS




  {
    type= "item",
    icon_size=32,
    name= "aaaaaaCheatFuel",
    icon = "__NCP-Tech__/graphics/item/Zinc_billet.png",
    
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 500,
	fuel_value = "800MJ",
	fuel_category = "chemical",

  },







  })

--]]

  -- place items
makeItem{name="Assembling_machine_t1",place_result="Assembling_machine_t1"}
Assembling_machine("Assembling_machine_t1")

makeItem{name="Assembling_machine_t2",place_result="Assembling_machine_t2"}
Assembling_machine("Assembling_machine_t2")

makeItem{name="Assembling_machine_t3",place_result="Assembling_machine_t3"}
Assembling_machine("Assembling_machine_t3")

makeItem{name="Assembling_machine_t4",place_result="Assembling_machine_t4"}
Assembling_machine("Assembling_machine_t4")

makeItem{name="Assembling_machine_t5",place_result="Assembling_machine_t5"}
Assembling_machine("Assembling_machine_t5")

makeItem{name="Blast_furnace_t1",place_result="Blast_furnace_t1"}
Boiler("Blast_furnace_t1")

makeItem{name="Boiler_t1",place_result="Boiler_t1"}
Boiler("Boiler_t1")

makeItem{name="Boiler_t2",place_result="Boiler_t2"}
Boiler("Boiler_t2")

makeItem{name="Boiler_t3",place_result="Boiler_t3"}
Boiler("Boiler_t3")

makeItem{name="Boiler_t4",place_result="Boiler_t4"}
Boiler("Boiler_t4")

makeItem{name="Chemical_plant_t1",place_result="Chemical_plant_t1"}
Chemical_plant("Chemical_plant_t1")

makeItem{name="Chemical_plant_t2",place_result="Chemical_plant_t2"}
Chemical_plant("Chemical_plant_t2")

makeItem{name="Chemical_plant_t3",place_result="Chemical_plant_t3"}
Chemical_plant("Chemical_plant_t3")

makeItem{name="Compressor_t1",place_result="Compressor_t1"}
Compressor("Compressor_t1")

makeItem{name="Compressor_t2",place_result="Compressor_t2"}
Compressor("Compressor_t2")

makeItem{name="Cracking_plant_t1",place_result="Cracking_plant_t1"}
Cracking_plant("Cracking_plant_t1")

makeItem{name="Cracking_plant_t2",place_result="Cracking_plant_t2"}
Cracking_plant("Cracking_plant_t2")

makeItem{name="Crusher_t1",place_result="Crusher_t1"}
Crusher("Crusher_t1")

makeItem{name="Crusher_t2",place_result="Crusher_t2"}
Crusher("Crusher_t2")

makeItem{name="Crusher_t3",place_result="Crusher_t3"}
Crusher("Crusher_t3")

makeItem{name="Cryogenic_distillation_plant_t1",place_result="Cryogenic_distillation_plant_t1"}
Cryogenic_distillation_plant("Cryogenic_distillation_plant_t1")

makeItem{name="Currency_exchange_t1",place_result="Currency_exchange_t1"}
Bank("Currency_exchange_t1")

makeItem{name="Distillery_t1",place_result="Distillery_t1"}
Distillation("Distillery_t1")

makeItem{name="Distillery_t2",place_result="Distillery_t2"}
Distillation("Distillery_t2")

makeItem{name="Distillery_t3",place_result="Distillery_t3"}
Distillation("Distillery_t3")

makeItem{name="Distribution_pole_t1",place_result="Distribution_pole_t1"}
Electric_pole("Distribution_pole_t1")

makeItem{name="Distribution_pole_t2",place_result="Distribution_pole_t2"}
Electric_pole("Distribution_pole_t2")

makeItem{name="Distribution_pole_t3",place_result="Distribution_pole_t3"}
Electric_pole("Distribution_pole_t3")

makeItem{name="Electric_arc_furnace_t1",place_result="Electric_arc_furnace_t1"}
Electric_arc_furnace("Electric_arc_furnace_t1")

makeItem{name="Electric_chemical_furnace_t1",place_result="Electric_chemical_furnace_t1"}
Electric_chemical_furnace("Electric_chemical_furnace_t1")

makeItem{name="Electric_chemical_furnace_t2",place_result="Electric_chemical_furnace_t2"}
Electric_chemical_furnace("Electric_chemical_furnace_t2")

makeItem{name="Electric_chemical_furnace_t3",place_result="Electric_chemical_furnace_t3"}
Electric_chemical_furnace("Electric_chemical_furnace_t3")

makeItem{name="Electric_flash_furnace_t1",place_result="Electric_flash_furnace_t1"}
Electric_flash_furnace("Electric_flash_furnace_t1")

makeItem{name="Electric_flash_furnace_t2",place_result="Electric_flash_furnace_t2"}
Electric_flash_furnace("Electric_flash_furnace_t2")

makeItem{name="Electric_furnace_t1",place_result="Electric_furnace_t1"}
Electric_furnace("Electric_furnace_t1")

makeItem{name="Electric_furnace_t2",place_result="Electric_furnace_t2"}
Electric_furnace("Electric_furnace_t2")

makeItem{name="Electric_furnace_t3",place_result="Electric_furnace_t3"}
Electric_furnace("Electric_furnace_t3")

makeItem{name="Electric_pole_t1",place_result="Electric_pole_t1"}
Electric_pole("Electric_pole_t1")

makeItem{name="Electrolyzer_t1",place_result="Electrolyzer_t1"}
Electrolyzer("Electrolyzer_t1")

makeItem{name="Electrolyzer_t2",place_result="Electrolyzer_t2"}
Electrolyzer("Electrolyzer_t2")

makeItem{name="Electrolyzer_t3",place_result="Electrolyzer_t3"}
Electrolyzer("Electrolyzer_t3")

makeItem{name="Electronics_assembling_macine_t1",place_result="Electronics_assembling_macine_t1"}
Electronics_assembly_machine("Electronics_assembling_macine_t1")

makeItem{name="Extruder_t1",place_result="Extruder_t1"}
Extruder("Extruder_t1")

makeItem{name="Extruder_t2",place_result="Extruder_t2"}
Extruder("Extruder_t2")

makeItem{name="Extruder_t3",place_result="Extruder_t3"}
Extruder("Extruder_t3")

makeItem{name="Extruder_t4",place_result="Extruder_t4"}
Extruder("Extruder_t4")

makeItem{name="Farm_t1",place_result="Farm_t1"}
Farm("Farm_t1")

makeItem{name="Farm_t2",place_result="Farm_t2"}
Farm("Farm_t2")

makeItem{name="Flash_furnace_t1",place_result="Flash_furnace_t1"}
Flash_furnace("Flash_furnace_t1")

makeItem{name="Furnace_t1",place_result="Furnace_t1"}
Furnace("Furnace_t1")

makeItem{name="Furnace_t2",place_result="Furnace_t2"}
Furnace("Furnace_t2")

makeItem{name="Furnace_t3",place_result="Furnace_t3"}
Furnace("Furnace_t3")

makeItem{name="Grinding_mill_t1",place_result="Grinding_mill_t1"}
GrindingMill("Grinding_mill_t1")

makeItem{name="Grinding_mill_t2",place_result="Grinding_mill_t2"}
GrindingMill("Grinding_mill_t2")

makeItem{name="Grinding_mill_t3",place_result="Grinding_mill_t3"}
GrindingMill("Grinding_mill_t3")

makeItem{name="Inserter_filter_stack_t3",place_result="Inserter_filter_stack_t3"}
InserterFilterStack("Inserter_filter_stack_t3")

makeItem{name="Inserter_filter_t3",place_result="Inserter_filter_t3"}
InserterFilter("Inserter_filter_t3")

makeItem{name="Inserter_filter_t4",place_result="Inserter_filter_t4"}
InserterFilter("Inserter_filter_t4")

makeItem{name="Inserter_long_stack_t3",place_result="Inserter_long_stack_t3"}
InserterLongStack("Inserter_long_stack_t3")

makeItem{name="Inserter_long_stack_t4",place_result="Inserter_long_stack_t4"}
InserterLongStack("Inserter_long_stack_t4")

makeItem{name="Inserter_long_t2",place_result="Inserter_long_t2"}
InserterLong("Inserter_long_t2")

makeItem{name="Inserter_long_t3",place_result="Inserter_long_t3"}
InserterLong("Inserter_long_t3")

makeItem{name="Inserter_long_t4",place_result="Inserter_long_t4"}
InserterLong("Inserter_long_t4")

makeItem{name="Inserter_stack_t3",place_result="Inserter_stack_t3"}
InserterStack("Inserter_stack_t3")

makeItem{name="Inserter_stack_t4",place_result="Inserter_stack_t4"}
InserterStack("Inserter_stack_t4")

makeItem{name="Inserter_t1",place_result="Inserter_t1"}
InserterNormal("Inserter_t1")

makeItem{name="Inserter_t2",place_result="Inserter_t2"}
InserterNormal("Inserter_t2")

makeItem{name="Inserter_t3",place_result="Inserter_t3"}
InserterNormal("Inserter_t3")

makeItem{name="Inserter_t4",place_result="Inserter_t4"}
InserterNormal("Inserter_t4")

makeItem{name="Inserter_t5",place_result="Inserter_t5"}
InserterNormal("Inserter_t5")

makeItem{name="Laboratory_t1",place_result="Laboratory_t1"}
Laboratory("Laboratory_t1")

makeItem{name="Locomotive_t1",place_result="Locomotive_t1"}
Locomotive("Locomotive_t1")

makeItem{name="Locomotive_t2",place_result="Locomotive_t2"}
Locomotive("Locomotive_t2")

makeItem{name="Mining_drill_t1",place_result="Mining_drill_t1"}
MiningDrill("Mining_drill_t1")

makeItem{name="Mining_drill_t2",place_result="Mining_drill_t2"}
MiningDrill("Mining_drill_t2")

makeItem{name="Mining_drill_t3",place_result="Mining_drill_t3"}
MiningDrill("Mining_drill_t3")

makeItem{name="Nuclear_fuel_processing_plant_t1",place_result="Nuclear_fuel_processing_plant_t1"}
Nuclear_fuel_processing_plant("Nuclear_fuel_processing_plant_t1")

makeItem{name="Offshore_pump_t1",place_result="Offshore_pump_t1"}
OffsorePump("Offshore_pump_t1")

makeItem{name="Offshore_pump_t2",place_result="Offshore_pump_t2"}
OffsorePump("Offshore_pump_t2")

makeItem{name="Offshore_pump_t3",place_result="Offshore_pump_t3"}
OffsorePump("Offshore_pump_t3")

makeItem{name="Ore_washer_t1",place_result="Ore_washer_t1"}
Ore_washing("Ore_washer_t1")

makeItem{name="Ore_washer_t2",place_result="Ore_washer_t2"}
Ore_washing("Ore_washer_t2")

makeItem{name="Ore_washer_t3",place_result="Ore_washer_t3"}
Ore_washing("Ore_washer_t3")

makeItem{name="Pump_jack_t1",place_result="Pump_jack_t1"}
PumpJack("Pump_jack_t1")

makeItem{name="Pump_t1",place_result="Pump_t1"}
Pump("Pump_t1")

makeItem{name="Pump_t2",place_result="Pump_t2"}
Pump("Pump_t2")

makeItem{name="Pump_t3",place_result="Pump_t3"}
Pump("Pump_t3")

makeItem{name="Pumpjack_t1",place_result="Pumpjack_t1"}
PumpJack("Pumpjack_t1")

makeItem{name="Pumpjack_t2",place_result="Pumpjack_t2"}
PumpJack("Pumpjack_t2")

makeItem{name="Pumpjack_t3",place_result="Pumpjack_t3"}
PumpJack("Pumpjack_t3")

makeItem{name="Radar_t1",place_result="Radar_t1"}
Radar("Radar_t1")

makeItem{name="Refinery_t1",place_result="Refinery_t1"}
Refinery("Refinery_t1")

makeItem{name="Refinery_t2",place_result="Refinery_t2"}
Refinery("Refinery_t2")

makeItem{name="Roboport_t1",place_result="Roboport_t1"}
Roboport("Roboport_t1")

makeItem{name="Rolling_machine_t1",place_result="Rolling_machine_t1"}
Rolling_machine("Rolling_machine_t1")

makeItem{name="Rolling_machine_t2",place_result="Rolling_machine_t2"}
Rolling_machine("Rolling_machine_t2")

makeItem{name="Rolling_machine_t3",place_result="Rolling_machine_t3"}
Rolling_machine("Rolling_machine_t3")

makeItem{name="Rolling_machine_t4",place_result="Rolling_machine_t4"}
Rolling_machine("Rolling_machine_t4")

makeItem{name="Solar_array_t1",place_result="Solar_array_t1"}
SolarArray("Solar_array_t1")

makeItem{name="Solar_array_t2",place_result="Solar_array_t2"}
SolarArray("Solar_array_t2")

makeItem{name="Splitter_t1",place_result="Splitter_t1"}
Splitter("Splitter_t1")

makeItem{name="Splitter_t2",place_result="Splitter_t2"}
Splitter("Splitter_t2")

makeItem{name="Splitter_t3",place_result="Splitter_t3"}
Splitter("Splitter_t3")

makeItem{name="Splitter_t4",place_result="Splitter_t4"}
Splitter("Splitter_t4")

makeItem{name="Splitter_t5",place_result="Splitter_t5"}
Splitter("Splitter_t5")

makeItem{name="Splitter_t6",place_result="Splitter_t6"}
Splitter("Splitter_t6")

makeItem{name="Splitter_t7",place_result="Splitter_t7"}
Splitter("Splitter_t7")

makeItem{name="Steam_engine_generator_t1",place_result="Steam_engine_generator_t1"}
SteamEngine("Steam_engine_generator_t1")

makeItem{name="Steam_tubine_t1",place_result="Steam_tubine_t1"}
SteamTurbine("Steam_tubine_t1")

makeItem{name="Steam_turbine_t2",place_result="Steam_turbine_t2"}
SteamTurbine("Steam_turbine_t2")

makeItem{name="Steam_turbine_t3",place_result="Steam_turbine_t3"}
SteamTurbine("Steam_turbine_t3")

makeItem{name="Stirling_miner_t1",place_result="Stirling_miner_t1"}
MiningDrill("Stirling_miner_t1")

makeItem{name="Stirling_offshore_pump_t1",place_result="Stirling_offshore_pump_t1"}
OffsorePump("Stirling_offshore_pump_t1")

makeItem{name="Substation_t1",place_result="Substation_t1"}
Electric_pole("Substation_t1")

makeItem{name="Transmission_pole_t1",place_result="Transmission_pole_t1"}
Electric_pole("Transmission_pole_t1")

makeItem{name="Transmission_pole_t2",place_result="Transmission_pole_t2"}
Electric_pole("Transmission_pole_t2")

makeItem{name="Transmission_pole_t3",place_result="Transmission_pole_t3"}
Electric_pole("Transmission_pole_t3")

makeItem{name="Transport_belt_t1",place_result="Transport_belt_t1"}
TransportBelt("Transport_belt_t1")

makeItem{name="Transport_belt_t2",place_result="Transport_belt_t2"}
TransportBelt("Transport_belt_t2")

makeItem{name="Transport_belt_t3",place_result="Transport_belt_t3"}
TransportBelt("Transport_belt_t3")

makeItem{name="Transport_belt_t4",place_result="Transport_belt_t4"}
TransportBelt("Transport_belt_t4")

makeItem{name="Transport_belt_t5",place_result="Transport_belt_t5"}
TransportBelt("Transport_belt_t5")

makeItem{name="Transport_belt_t6",place_result="Transport_belt_t6"}
TransportBelt("Transport_belt_t6")

makeItem{name="Transport_belt_t7",place_result="Transport_belt_t7"}
TransportBelt("Transport_belt_t7")

makeItem{name="Transport_belt_underground_t1",place_result="Transport_belt_underground_t1"}
TransportBeltUnderground("Transport_belt_underground_t1")

makeItem{name="Transport_belt_underground_t2",place_result="Transport_belt_underground_t2"}
TransportBeltUnderground("Transport_belt_underground_t2")

makeItem{name="Transport_belt_underground_t3",place_result="Transport_belt_underground_t3"}
TransportBeltUnderground("Transport_belt_underground_t3")

makeItem{name="Transport_belt_underground_t4",place_result="Transport_belt_underground_t4"}
TransportBeltUnderground("Transport_belt_underground_t4")

makeItem{name="Transport_belt_underground_t5",place_result="Transport_belt_underground_t5"}
TransportBeltUnderground("Transport_belt_underground_t5")

makeItem{name="Transport_belt_underground_t6",place_result="Transport_belt_underground_t6"}
TransportBeltUnderground("Transport_belt_underground_t6")

makeItem{name="Transport_belt_underground_t7",place_result="Transport_belt_underground_t7"}
TransportBeltUnderground("Transport_belt_underground_t7")

  --]]

--minerals or unused
makeItem{name="Diamond_uncut"}










  -- items
makeItem{name="ABS-plastic_pellets"}
makeItem{name="Acetylene"}
makeItem{name="Acetylene_bottle"}
makeItem{name="Active_provider_chest"}
makeItem{name="Advanced_PCB"}
makeItem{name="Advanced_circuit_board"}
makeItem{name="Alumina"}
makeItem{name="Aluminium_billet"}
makeItem{name="Aluminium_plate"}
makeItem{name="Aluminium_rod"}
makeItem{name="Aluminium_wire"}
makeItem{name="Aluminosilicate_glass"}
makeItem{name="Ammonium_Paratungstate"}
makeItem{name="Ammonium_bifluoride"}
makeItem{name="Anti-reflective_glass"}
makeItem{name="Arithmetic_combinator"}
makeItem{name="Asphalt_concrete"}
makeItem{name="Basic_PCB"}
makeItem{name="Basic_electric_motor"}
makeItem{name="Basic_electronics_board"}
makeItem{name="Battery"}
makeItem{name="Battery_casing"}
makeItem{name="Bauxite_concentrate"}
makeItem{name="Bauxite_crushed_ore"}
makeItem{name="Bauxite_ore"}
makeItem{name="Bauxite_tailings"}
makeItem{name="Bitumen"}
makeItem{name="Bottle"}
makeItem{name="Brass_billet"}
makeItem{name="Brass_dense_pipe"}
makeItem{name="Brass_dense_plate"}
makeItem{name="Brass_pipe"}
makeItem{name="Brass_plate"}
makeItem{name="Brick"}
makeItem{name="CO"}
makeItem{name="CPU_chip"}
makeItem{name="Calcium_carbonate"}
makeItem{name="Calcium_chloride"}
makeItem{name="Calcium_fluoride"}
makeItem{name="Calcium_oxide"}
makeItem{name="Calcium_sulfate"}
makeItem{name="Canister"}
makeItem{name="Capacitor"}
makeItem{name="Carbon_fiber_fabric"}
makeItem{name="Carbon_fiber_filament"}
makeItem{name="Cargo_wagon"}
makeItem{name="Cargo_wagon_hull"}
makeItem{name="Cassiterite_crushed_ore"}
makeItem{name="Cassiterite_ore"}
makeItem{name="Cement"}
makeItem{name="Cement_bauxite"}
makeItem{name="Cement_clinker"}
makeItem{name="Cement_slag"}
makeItem{name="Chalcopyrite_crushed_ore"}
makeItem{name="Chalcopyrite_ore"}
makeItem{name="Charcoal"}
makeItem{name="Chemical_pipe"}
makeItem{name="Chloride"}
makeItem{name="Chloroauric_acid"}
makeItem{name="Chromite_concentrate"}
makeItem{name="Chromite_crushed_ore"}
makeItem{name="Chromite_ore"}
makeItem{name="Chromium_oxide"}
makeItem{name="Circuit_board"}
makeItem{name="Clay"}
makeItem{name="Coal_coke"}
makeItem{name="Coal_crushed_ore"}
makeItem{name="Coal_dust"}
makeItem{name="Coal_ore"}
makeItem{name="Coal_ore_crushed"}
makeItem{name="Coal_ore_dust"}
makeItem{name="Coal_tar"}
makeItem{name="Cobalt_dust"}
makeItem{name="Cobalt_ingot"}
makeItem{name="Cobalt_oxide"}
makeItem{name="Cobalt_powder"}
makeItem{name="Cobalt_scrap"}
makeItem{name="Compressed_air"}
makeItem{name="Compression_turbine_fan"}
makeItem{name="Computer"}
makeItem{name="Concrete_block"}
makeItem{name="Concrete_wall"}
makeItem{name="Constant_combinator"}
makeItem{name="Construction_robot"}
makeItem{name="Cooling_fan"}
makeItem{name="Cooling_system"}
makeItem{name="Copper_anode"}
makeItem{name="Copper_billet"}
makeItem{name="Copper_blister"}
makeItem{name="Copper_concentrate"}
makeItem{name="Copper_dense_pipe"}
makeItem{name="Copper_dense_plate"}
makeItem{name="Copper_foil"}
makeItem{name="Copper_native_ore"}
makeItem{name="Copper_pipe"}
makeItem{name="Copper_plate"}
makeItem{name="Copper_transmission_chain"}
makeItem{name="Copper_wire"}
makeItem{name="Cordite"}
makeItem{name="Cotton"}
makeItem{name="Cotton_seeds"}
makeItem{name="Crossbow"}
makeItem{name="Crude_locomotive_firebox"}
makeItem{name="Crude_locomotive_hull"}
makeItem{name="Crude_locomotive_piston"}
makeItem{name="Cryogenic_pipe"}
makeItem{name="Crystal_laser"}
makeItem{name="Curved_track"}
makeItem{name="DNT"}
makeItem{name="Data_cable"}
makeItem{name="Decider_combinator"}
makeItem{name="Depleted_uranium_ingot"}
makeItem{name="Depleted_uranium_pellet"}
makeItem{name="Diesel-electric_engine"}
makeItem{name="Diesel-electric_locomotive"}
makeItem{name="Diesel_canister"}
makeItem{name="Diesel_engine"}
makeItem{name="Diesel_generator"}
makeItem{name="Diesel_locomotive"}
makeItem{name="Diesel_locomotive_hull_part"}
makeItem{name="Diode"}
makeItem{name="Direct_reduced_iron"}
makeItem{name="Dore_bar"}
makeItem{name="Drill_frame"}
makeItem{name="Drill_frame_basic"}
makeItem{name="Drone_frame"}
makeItem{name="Electric_motor_hull"}
makeItem{name="Electric_rotor"}
makeItem{name="Electronics_board"}
makeItem{name="Electronics_component"}
makeItem{name="Electronics_components"}
makeItem{name="Enriched_uranium_pellet"}
makeItem{name="Excimer_laser"}
makeItem{name="Excimer_laser_frame"}
makeItem{name="Factory_frame"}
makeItem{name="Ferrochrome"}
makeItem{name="Ferrosilicon"}
makeItem{name="Fertilizer"}
makeItem{name="Fiberglass_cloth"}
makeItem{name="Fiberglass_laminate"}
makeItem{name="Fiberglass_roving"}
makeItem{name="Flash_tube_lamp"}
makeItem{name="Fluorite_crushed_ore"}
makeItem{name="Fluorite_ore"}
makeItem{name="Galena_crushed_ore"}
makeItem{name="Galena_ore"}
makeItem{name="Gas_centrifuge"}
makeItem{name="Gas_turbine"}
makeItem{name="Gas_turbine_generator"}
makeItem{name="Gas_turbine_power_plant"}
makeItem{name="Germanium"}
makeItem{name="Germanium_concentrate"}
makeItem{name="Germanium_dioxide"}
makeItem{name="Glass"}
makeItem{name="Glass_tube"}
makeItem{name="Gold_concentrate"}
makeItem{name="Gold_foil"}
makeItem{name="Gold_ingot"}
makeItem{name="Gold_wire"}
makeItem{name="Graphite_crushed"}
makeItem{name="Graphite_crushed_ore"}
makeItem{name="Graphite_curshed"}
makeItem{name="Graphite_dust"}
makeItem{name="Graphite_electrode"}
makeItem{name="Graphite_ore"}
makeItem{name="Graphite_rod"}
makeItem{name="Gravel"}
makeItem{name="Green_wire"}
makeItem{name="Guncotton"}
makeItem{name="Gunpowder"}
makeItem{name="HR-mirror"}
makeItem{name="HS_curved_track"}
makeItem{name="HS_track"}
makeItem{name="HV_electric_motor"}
makeItem{name="HV_electric_motor_hull"}
makeItem{name="HV_electric_rotor"}
makeItem{name="HV_transformer"}
makeItem{name="Heat_exchanger"}
makeItem{name="Hydraulic_piston"}
makeItem{name="Hydraulic_pump"}
makeItem{name="Hydraulic_pump_hull"}
makeItem{name="Hydraulic_transmission"}
makeItem{name="Inconel_ball"}
makeItem{name="Inconel_bearing"}
makeItem{name="Inconel_bearing_hull"}
makeItem{name="Inconel_billet"}
makeItem{name="Inconel_dense_pipe"}
makeItem{name="Inconel_dense_plate"}
makeItem{name="Inconel_pipe"}
makeItem{name="Inconel_plate"}
makeItem{name="Inconel_rod"}
makeItem{name="Inserter_frame"}
makeItem{name="Integrated_circuit"}
makeItem{name="Intergrated_circuit"}
makeItem{name="Iron_ball"}
makeItem{name="Iron_bearing"}
makeItem{name="Iron_bearing_hull"}
makeItem{name="Iron_billet"}
makeItem{name="Iron_chest"}
makeItem{name="Iron_dense_pipe"}
makeItem{name="Iron_dense_plate"}
makeItem{name="Iron_dense_underground_pipe"}
makeItem{name="Iron_drill_bit"}
makeItem{name="Iron_engine_block"}
makeItem{name="Iron_gear"}
makeItem{name="Iron_pig"}
makeItem{name="Iron_pipe"}
makeItem{name="Iron_piston"}
makeItem{name="Iron_plate"}
makeItem{name="Iron_rail"}
makeItem{name="Iron_rivet"}
makeItem{name="Iron_riveted_dense_plate"}
makeItem{name="Iron_riveted_plate"}
makeItem{name="Iron_rod"}
makeItem{name="Iron_tools"}
makeItem{name="Iron_transmission_chain"}
makeItem{name="Iron_underground_pipe"}
makeItem{name="Iron_wire"}
makeItem{name="LV_electric_engine"}
makeItem{name="LV_electric_motor"}
makeItem{name="LV_electric_motor_hull"}
makeItem{name="LV_electric_rotor"}
makeItem{name="Lamp"}
makeItem{name="Large_Li-ion_battery"}
makeItem{name="Large_diesel_engine"}
makeItem{name="Large_engine_block"}
makeItem{name="Large_factory_frame"}
makeItem{name="Large_gearbox"}
makeItem{name="Large_piston"}
makeItem{name="Laser_frame"}
makeItem{name="Lead-free_solder"}
makeItem{name="Lead_billet"}
makeItem{name="Lead_bullion"}
makeItem{name="Lead_concentrate"}
makeItem{name="Lead_dense_pipe"}
makeItem{name="Lead_dense_plate"}
makeItem{name="Lead_dust"}
makeItem{name="Lead_free_solder"}
makeItem{name="Lead_free_solder_ingot"}
makeItem{name="Lead_oxide"}
makeItem{name="Lead_pipe"}
makeItem{name="Lead_plate"}
makeItem{name="Lead_scrap"}
makeItem{name="Lead_solder"}
makeItem{name="Lead_solder_ingot"}
makeItem{name="Li-ion_battery"}
makeItem{name="Li-ion_battery_cell"}
makeItem{name="Limestone_Quarried"}
makeItem{name="Limestone_crushed"}
makeItem{name="Lithium"}
makeItem{name="Lithium_carbonate"}
makeItem{name="Lithium_chloride"}
makeItem{name="Lithium_cobalt_oxide"}
makeItem{name="Lithium_perchlorate"}
makeItem{name="Locomotive_fire_box"}
makeItem{name="Locomotive_firebox"}
makeItem{name="Locomotive_hull_part"}
makeItem{name="Locomotive_piston"}
makeItem{name="Logistic_robot"}
makeItem{name="Lubrincant"}
makeItem{name="Magnesium"}
makeItem{name="Magnesium_ball"}
makeItem{name="Magnesium_bearing"}
makeItem{name="Magnesium_bearing_hull"}
makeItem{name="Magnesium_billet"}
makeItem{name="Magnesium_chloride"}
makeItem{name="Magnesium_fluoride"}
makeItem{name="Magnesium_hydroxide"}
makeItem{name="Magnesium_oxide"}
makeItem{name="Magnesium_plate"}
makeItem{name="Magnesium_rod"}
makeItem{name="Magnetite_concentrate"}
makeItem{name="Magnetite_crushed_ore"}
makeItem{name="Magnetite_ore"}
makeItem{name="Magnetron"}
makeItem{name="Molecular sieve"}
makeItem{name="Molecular_sieve"}
makeItem{name="Nail"}
makeItem{name="Nichrome"}
makeItem{name="Nichrome_wire"}
makeItem{name="Nickel_billet"}
makeItem{name="Nickel_cathode"}
makeItem{name="Nickel_concentrate"}
makeItem{name="Nickel_dust"}
makeItem{name="Nickel_plate"}
makeItem{name="Nitric_oxide"}
makeItem{name="Nuclear_fuel_bundle"}
makeItem{name="Nuclear_fuel_rod"}
makeItem{name="Nuclear_reactor"}
makeItem{name="Nuclear_reactor_core"}
makeItem{name="Optical_fiber"}
makeItem{name="Oxide_glass"}
makeItem{name="PAN_filament"}
makeItem{name="Passive_provider_chest"}
makeItem{name="Pentlandite_crushed_ore"}
makeItem{name="Pentlandite_ore"}
makeItem{name="Petroleum_jelly"}
makeItem{name="Pig_iron"}
makeItem{name="Plank"}
makeItem{name="Plaster"}
makeItem{name="Plastic_pellets"}
makeItem{name="Plastic_pipe"}
makeItem{name="Polycrystalline_silicon_rod"}
makeItem{name="Polycrystalline_silicon_wafer"}
makeItem{name="Polystyrene"}
makeItem{name="Potassium_nitrate"}
makeItem{name="Potassium_sulfate"}
makeItem{name="Power_switch"}
makeItem{name="Pump"}
makeItem{name="Purified_glass_tube"}
makeItem{name="Quarried_stone"}
makeItem{name="Quartz"}
makeItem{name="Quartz_crushed_rock"}
makeItem{name="Quartz_rock"}
makeItem{name="Radar_antenna"}
makeItem{name="Rail_chain_signal"}
makeItem{name="Rail_signal"}
makeItem{name="Rare_earth"}
makeItem{name="Raw_wood"}
makeItem{name="Red_wire"}
makeItem{name="Refractory_brick"}
makeItem{name="Refractory_furnace"}
makeItem{name="Repair_kit"}
makeItem{name="Requester_chest"}
makeItem{name="Resin"}
makeItem{name="Resistor"}
makeItem{name="Rubber"}
makeItem{name="Ruby_crystal_tube"}
makeItem{name="Rutile_crushed_ore"}
makeItem{name="Rutile_ore"}
makeItem{name="Rutile_ore_sand"}
makeItem{name="Rutile_sand"}
makeItem{name="Salt"}
makeItem{name="Sand"}
makeItem{name="Scheelite_crushed_ore"}
makeItem{name="Scheelite_ore"}
makeItem{name="Sensor"}
makeItem{name="Silicon_boule"}
makeItem{name="Silicon_carbide"}
makeItem{name="Silicon_dioxide"}
makeItem{name="Silicon_granule"}
makeItem{name="Silicon_metallurgical"}
makeItem{name="Silicon_poly_wafer"}
makeItem{name="Silicon_polycrystalline_rod"}
makeItem{name="Silicon_wafer"}
makeItem{name="Silt"}
makeItem{name="Silver-oxide_battery"}
makeItem{name="Silver-oxide_battery_cell"}
makeItem{name="Silver_foil"}
makeItem{name="Silver_ingot"}
makeItem{name="Silver_nitrate"}
makeItem{name="Silver_oxide"}
makeItem{name="Silver_rod"}
makeItem{name="Silver_wire"}
makeItem{name="Slag"}
makeItem{name="Small_cargo_wagon"}
makeItem{name="Small_cargo_wagon_hull"}
makeItem{name="Small_gearbox"}
makeItem{name="Small_piston"}
makeItem{name="Sodium_carbonate"}
makeItem{name="Sodium_chlorate"}
makeItem{name="Sodium_dichromate"}
makeItem{name="Sodium_hydroxide"}
makeItem{name="Sodium_perchlorate"}
makeItem{name="Sodium_sulfate"}
makeItem{name="Solar_cell"}
makeItem{name="Solar_cell_mk2"}
makeItem{name="Solar_panel"}
makeItem{name="Solar_panel_mk2"}
makeItem{name="Solder_paste"}
makeItem{name="Sphalerite_crushed_ore"}
makeItem{name="Sphalerite_ore"}
makeItem{name="Stainless_steel_billet"}
makeItem{name="Stainless_steel_dense_pipe"}
makeItem{name="Stainless_steel_dense_plate"}
makeItem{name="Stainless_steel_mix_hot"}
makeItem{name="Stainless_steel_pipe"}
makeItem{name="Stainless_steel_plate"}
makeItem{name="Stainless_steel_tank_2x2"}
makeItem{name="Stainless_steel_tank_4x4"}
makeItem{name="Steel_HS_rail"}
makeItem{name="Steel_ball"}
makeItem{name="Steel_bearing"}
makeItem{name="Steel_bearing_hull"}
makeItem{name="Steel_belt_hull"}
makeItem{name="Steel_billet"}
makeItem{name="Steel_chain"}
makeItem{name="Steel_chest"}
makeItem{name="Steel_dense_pipe"}
makeItem{name="Steel_dense_plate"}
makeItem{name="Steel_dense_underground_pipe"}
makeItem{name="Steel_drill_bit"}
makeItem{name="Steel_engine_block"}
makeItem{name="Steel_gear"}
makeItem{name="Steel_pipe"}
makeItem{name="Steel_plate"}
makeItem{name="Steel_rivet"}
makeItem{name="Steel_riveted_dense_plate"}
makeItem{name="Steel_riveted_plate"}
makeItem{name="Steel_rod"}
makeItem{name="Steel_tank_2x2"}
makeItem{name="Steel_tank_4x4"}
makeItem{name="Steel_tools"}
makeItem{name="Steel_transmission_chain"}
makeItem{name="Steel_underground_pipe"}
makeItem{name="Steel_wire"}
makeItem{name="Stick"}
makeItem{name="Stirling_engine"}
makeItem{name="Stone_Quarried"}
makeItem{name="Stone_crushed"}
makeItem{name="Stone_gear"}
makeItem{name="Stone_tools"}
makeItem{name="Storage_chest"}
makeItem{name="Strong_steel_tools"}
makeItem{name="Sulfur"}
makeItem{name="TNT"}
makeItem{name="TiN_tungsten_carbide_tools"}
makeItem{name="Tin_billet"}
makeItem{name="Tin_concentrate"}
makeItem{name="Tin_foil"}
makeItem{name="Tinned_copper_wire"}
makeItem{name="Titanium_ball"}
makeItem{name="Titanium_bearing"}
makeItem{name="Titanium_bearing_hull"}
makeItem{name="Titanium_belt_hull"}
makeItem{name="Titanium_billet"}
makeItem{name="Titanium_chest"}
makeItem{name="Titanium_dense_pipe"}
makeItem{name="Titanium_dense_plate"}
makeItem{name="Titanium_dioxide"}
makeItem{name="Titanium_dioxide_pellet"}
makeItem{name="Titanium_dust"}
makeItem{name="Titanium_dust_dirty"}
makeItem{name="Titanium_framework"}
makeItem{name="Titanium_gear"}
makeItem{name="Titanium_pellet"}
makeItem{name="Titanium_pipe"}
makeItem{name="Titanium_plate"}
makeItem{name="Titanium_power"}
makeItem{name="Titanium_rod"}
makeItem{name="Titanium_transmission_chain"}
makeItem{name="Track"}
makeItem{name="Trading_post"}
makeItem{name="Train_stop"}
makeItem{name="Transformer"}
makeItem{name="Transformer_core"}
makeItem{name="Transistor"}
makeItem{name="Tree_seeds"}
makeItem{name="Tubine_fan"}
makeItem{name="Tungsten_carbide_drill_bit"}
makeItem{name="Tungsten_carbide_dust"}
makeItem{name="Tungsten_carbide_gear"}
makeItem{name="Tungsten_carbide_rod"}
makeItem{name="Tungsten_carbide_tools"}
makeItem{name="Tungsten_oxide"}
makeItem{name="Tungsten_powder"}
makeItem{name="Tungsten_rod"}
makeItem{name="Tungsten_wire"}
makeItem{name="Turbine_fan"}
makeItem{name="Uraninite_crushed_ore"}
makeItem{name="Uraninite_ore"}
makeItem{name="Uraninite_ore_concentrate"}
makeItem{name="Uranium_dioxide"}
makeItem{name="Uranium_tetrafluoride"}
makeItem{name="Wood"}
makeItem{name="Wood_raw"}
makeItem{name="Wooden_board"}
makeItem{name="Wooden_box"}
makeItem{name="Wooden_chest"}
makeItem{name="Wooden_framework"}
makeItem{name="Wooden_tank_2x2"}
makeItem{name="Wooden_tank_4x4"}
makeItem{name="Workshop"}
makeItem{name="Yellowcake"}
makeItem{name="Zinc_billet"}
makeItem{name="Zinc_concentrate"}
makeItem{name="Zinc_foil"}
makeItem{name="Zinc_matte"}
makeItem{name="Zircon"}
makeItem{name="Zirconium_billet"}
makeItem{name="Zirconium_rod"}
makeItem{name="Zirconium_sponge"}
makeItem{name="Zirconium_tetrachloride"}
makeItem{name="Zirconium_tube"}
