data:extend(
{
  
  
  
  
  
  
  --Nitre
  {
    type = "recipe",
    name = "Saltpeter",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Nitre_ore", 1},
    },
    result = "Saltpeter",
  },
  {
    type = "recipe",
    name = "Fertilizer",
    category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Saltpeter", 1},
    },
    result = "Fertilizer",
  },
  
  --stone
  
  {
    type = "recipe",
    name = "Stone_crushed",
    category = "Crusher",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Quarried_stone", 1},
    },
    result = "Stone_crushed",
  },
  {
    type = "recipe",
    name = "Quartz",
    category = "Crusher",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Quartz_rock", 2},
    },
    results = 
    {
      {type="item", name="Quartz", amount=1},
      {type="item", name="Quarried_stone", amount=1},
    },
	icon = "__NCP-Tech__/graphics/icons/Quartz.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Gravel_Sand",
    category = "Shifter",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Stone_crushed", 3},
    },
    results = 
    {
      {type="item", name="Gravel", amount=2},
      {type="item", name="Sand", amount=1}
    },
	icon = "__NCP-Tech__/graphics/icons/Gravel.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Sand_Silt",
    category = "Grinding_mill",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Gravel", 3},
    },
    results = 
    {
      {type="item", name="Sand", amount=2},
      {type="item", name="Silt", amount=1}
    },
	icon = "__NCP-Tech__/graphics/icons/Sand.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Silt_ClayDry",
    category = "Grinding_mill",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Sand", 3},
    },
    results = 
    {
      {type="item", name="Silt", amount=2},
      {type="item", name="Clay_dry", amount=1}
    },
	icon = "__NCP-Tech__/graphics/icons/Silt.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Clay_dry",
    category = "Grinding_mill",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Silt", 1},
    },
    result = "Clay_dry",
  },
  {
    type = "recipe",
    name = "Clay_wet",
    category = "Mixer",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Clay_dry", 1},
      {type="fluid", name="Water", amount=1},
    },
    result = "Clay_wet",
  },
  {
    type = "recipe",
    name = "Brick",
    category = "Furnace",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Clay_wet", 1},
    },
    result = "stone-brick",
  },

  --Quartz
  {
    type = "recipe",
    name = "Quartz_crushed_rock",
    category = "Crusher",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Quartz_rock", 1},
    },
    result = "Quartz_crushed_rock",
  },
  {
    type = "recipe",
    name = "Lead_concentrate",
    category = "Ore_washing",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Quartz_crushed_rock", 2},
      {type="fluid", name="Water", amount=1}
    },
    results = 
    {
      {type="item", name="Lead_concentrate", amount=1},
      {type="item", name="Stone_crushed", amount=1}
    },
	icon = "__NCP-Tech__/graphics/icons/Lead_concentrate.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Silicon_dioxide",
    category = "Grinding_mill",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Quartz", 1},
    },
    result = "Silicon_dioxide",
  },
  {
    type = "recipe",
    name = "Quartz_seed",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Quartz", 1},
    },
    result = "Quartz_seed",
  },
  {
    type = "recipe",
    name = "Glass",
    category = "Furnace",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Silicon_dioxide", 1},
    },
    result = "Glass",
  },
  {
    type = "recipe",
    name = "Silicon_boule",
    category = "Silicon_crucible",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Silicon_dioxide", 1},
      {"Quartz_seed", 1},
    },
    result = "Silicon_boule",
  },
  {
    type = "recipe",
    name = "Silicon_wafer",
    category = "Assembling_machine",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Silicon_boule", 1},
    },
    result = "Silicon_wafer",
  },

--Bauxite
  {
    type = "recipe",
    name = "Bauxite_crushed_ore",
    category = "Crusher",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Bauxite_ore", 1},
    },
    result = "Bauxite_crushed_ore",
  },
  {
    type = "recipe",
    name = "Bauxite_concentrate",
    category = "Ore_washing",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Bauxite_crushed_ore", 2},
      {type="fluid", name="Water", amount=1}
    },
    results = 
    {
      {type="item", name="Bauxite_concentrate", amount=1},
      {type="item", name="Stone_crushed", amount=1}
    },
	icon = "__NCP-Tech__/graphics/icons/Bauxite_concentrate.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Alumina",
    category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Bauxite_concentrate", 1},
      {"Sodium_hydroxide", 1},
    },
    results = 
    {
      {type="item", name="Bauxite_tailings", amount=1},
      {type="item", name="Alumina", amount=1}
    },
	icon = "__NCP-Tech__/graphics/icons/Alumina.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Aluminium_billet",
    category = "Electrolyzer",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Alumina", 1},
      {"Calcium_fluoride", 1},
    },
    result = "Aluminium_billet",
  },

--Fluorite
  {
    type = "recipe",
    name = "Fluorite_crushed_ore",
    category = "Crusher",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Fluorite_ore", 1},
    },
    result = "Fluorite_crushed_ore",
  },
  {
    type = "recipe",
    name = "Calcium_fluoride",
    category = "Ore_washing",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Fluorite_crushed_ore", 2},
      {type="fluid", name="Water", amount=1}
    },
    results = 
    {
      {type="item", name="Calcium_fluoride", amount=1},
      {type="item", name="Stone_crushed", amount=1}
    },
	icon = "__NCP-Tech__/graphics/icons/Calcium_fluoride.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Calcium_sulfate",
    category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Fluorite_crushed_ore", 2},
      {type="fluid", name="Sulfuric_acid", amount=1}
    },
    results = 
    {
      {type="item", name="Calcium_sulfate", amount=1},
      {type="fluid", name="Hydrogen_fluoride", amount=1}
    },
	icon = "__NCP-Tech__/graphics/icons/Calcium_sulfate.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Plaster",
    category = "Furnace",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Calcium_sulfate", 1},
    },
    result = "Plaster",
  },
  {
    type = "recipe",
    name = "Hydrofluoric_acid",
    category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="fluid", name="Hydrogen_fluoride", amount=1},
      {type="fluid", name="Water", amount=1},
    },
    results = 
    {
      {type="fluid", name="Hydrofluoric_acid", amount=1},
    },
	icon = "__NCP-Tech__/graphics/fluids/Hydrofluoric_acid.png",
	subgroup = "NCP_fluids",
  },

--Cassiterite


  {
    type = "recipe",
    name = "Cassiterite_crushed_ore",
    category = "Crusher",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Cassiterite_ore", 1},
    },
    result = "Cassiterite_crushed_ore",
  },
  {
    type = "recipe",
    name = "Tin_concentrate",
    category = "Ore_washing",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Cassiterite_crushed_ore", 2},
      {type="fluid", name="Water", amount=1}
    },
    results = 
    {
      {type="item", name="Tin_concentrate", amount=1},
      {type="item", name="Stone_crushed", amount=1}
    },
	icon = "__NCP-Tech__/graphics/icons/Tin_concentrate.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Tin_billet",
    category = "Furnace",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Tin_concentrate", 1},
    },
    result = "Tin_billet",
  },



--Galena
  {
    type = "recipe",
    name = "Galena_ore",
    category = "Crusher",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Galena_ore", 1},
    },
    result = "Galena_crushed_ore",
  },
  {
    type = "recipe",
    name = "Lead_concentrate",
    category = "Ore_washing",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Galena_crushed_ore", 2},
      {type="fluid", name="Water", amount=1}
    },
    results = 
    {
      {type="item", name="Lead_concentrate", amount=1},
      {type="item", name="Stone_crushed", amount=1}
    },
	icon = "__NCP-Tech__/graphics/icons/Lead_concentrate.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Lead_bullion",
    category = "Flash_furnace",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Lead_concentrate", 1},
    },
    results = 
    {
      {type="item", name="Lead_bullion", amount=1},
      {type="item", name="Slag", amount=1},
      {type="fluid", name="Sulfur_dioxide", amount=1}
    },
	icon = "__NCP-Tech__/graphics/icons/Lead_bullion.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Lead_billet",
    category = "Furnace",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Lead_bullion", 1},
    },
    results = 
    {
      {type="item", name="Lead_billet", amount=1},
      {type="item", name="Silver_ingot", amount=1},
    },
	icon = "__NCP-Tech__/graphics/icons/Lead_billet.png",
	subgroup = "Recourses",
  },
  
  
  
  --rutile
  {
    type = "recipe",
    name = "Rutile_crushed_ore",
    category = "Crusher",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Rutile_ore", 1},
    },
    result = "Rutile_crushed_ore",
  },
  {
    type = "recipe",
    name = "Titanium_oxide",
    category = "Ore_washing",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Rutile_crushed_ore", 2},
      {type="fluid", name="Water", amount=1}
    },
    results = 
    {
      {type="item", name="Titanium_oxide", amount=1},
      {type="item", name="Zircon", amount=1},
      {type="item", name="Stone_crushed", amount=1},
    },
	icon = "__NCP-Tech__/graphics/icons/Titanium_oxide.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Titanium",
    category = "Electrolyzer",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Titanium_oxide", 1},
      {"Calcium_chloride", 1}
    },
    results = 
    {
      {type="item", name="Titanium", amount=1},
      {type="item", name="Calcium_oxide", amount=1},
    },
	icon = "__NCP-Tech__/graphics/icons/Titanium.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Zirconium_ingot",
    category = "Chemical_furnace",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Zircon", 1},
      {type="fluid", name="Chlorine", amount=1}
    },
    result = "Zirconium_ingot",
  },
  
  
  
  
  --Gold
  
  {
    type = "recipe",
    name = "Gold_crushed_ore",
    category = "Crusher",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Gold_ore", 1},
    },
    result = "Gold_crushed_ore",
  },
  {
    type = "recipe",
    name = "Gold_concentrate",
    category = "Ore_washing",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Gold_crushed_ore", 2},
      {type="fluid", name="Water", amount=1},
    },
    results = 
    {
      {type="item", name="Gold_concentrate", amount=1},
      {type="item", name="Stone_crushed", amount=1},
    },
	icon = "__NCP-Tech__/graphics/icons/Gold_concentrate.png",
	subgroup = "Recourses",
	
  },
  {
    type = "recipe",
    name = "Dore_bar",
    category = "Furnace",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Gold_concentrate", 1},
    },
    result = "Dore_bar",
  },
  {
    type = "recipe",
    name = "Chloroauric_acid",
    category = "Electrolyzer",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Dore_bar", 1},
      {type="fluid", name="Hydrochloric_acid", amount=1},
    },
    result = "Chloroauric_acid",
  },
  {
    type = "recipe",
    name = "Gold_ingot",
    category = "Electrolyzer",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Dore_bar", 1},
      {"Chloroauric_acid", 1},
    },
    result = "Gold_ingot",
  },
  
  
  
  
  
  --Coal
  
  
  
  
  {
    type = "recipe",
    name = "Coal_distillation",
    category = "Distillation",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"coal", 1},
    },
    results = 
    {
      {type="item", name="Coal_coke", amount=1},
      {type="item", name="Coal_tar", amount=1},
      {type="fluid", name="Coal_gas", amount=1},
      {type="fluid", name="Ammonia", amount=1},
      {type="fluid", name="Benzene", amount=1},
    },
	icon = "__NCP-Tech__/graphics/icons/Coal_coke.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Coal_gas_cracking",
    category = "Cracking_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="fluid", name="Coal_gas", amount=10},
    },
    results = 
    {
      {type="fluid", name="Hydrogen", amount=5},
      {type="fluid", name="Petroleum_gas", amount=4},
      {type="fluid", name="Carbon_monoxide", amount=1},
    },
	icon = "__NCP-Tech__/graphics/fluids/Coal_gas.png",
	subgroup = "NCP_fluids",
  },
  {
    type = "recipe",
    name = "Carbon_dust",
    category = "Grinding_mill",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Coal_coke", 1},
    },
    result = "Carbon_dust",
  },
  {
    type = "recipe",
    name = "Silicon_carbide",
    category = "Chemical_furnace",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Carbon_dust", 1},
      {"Silicon_dioxide", 1},
    },
    result = "Silicon_carbide",
  },
  {
    type = "recipe",
    name = "Bitumi",
    category = "Distillation",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Coal_tar", 1},
    },
    results = 
    {
      {type="fluid", name="Ethylbenzene", amount=1},
      {type="fluid", name="Bitumi", amount=1},
    },
	icon = "__NCP-Tech__/graphics/fluids/Bitumi.png",
	subgroup = "NCP_fluids",
  },
  {
    type = "recipe",
    name = "Asphalt_concrete",
    category = "Assembling_machine",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Gravel", 1},
      {type="fluid", name="Bitumi", amount=1},
    },
    result = "Asphalt_concrete",
  },
  
  
  
  --Magnetite
  --early
  
  {
    type = "recipe",
    name = "Pig_iron_early",
    category = "Furnace",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Magnetite_ore", 3},
    },
    results = 
    {
      {type="item", name="Pig_iron_early", amount=1},
      {type="item", name="Slag", amount=1},
    },
	icon = "__NCP-Tech__/graphics/icons/Pig_iron.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Wrought_iron_billet_early",
    category = "Furnace",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Pig_iron_early", 2},
      {"Charcoal", 1},
    },
    result = "Wrought_iron_billet",
  },
  
  ------------------------------------
  
  
  
  {
    type = "recipe",
    name = "Magnetite_crushed_ore",
    category = "Crusher",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Magnetite_ore", 1},
    },
    result = "Magnetite_crushed_ore",
  },
  {
    type = "recipe",
    name = "Magnetite_concentrate",
    category = "Ore_washing",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Magnetite_crushed_ore", 2},
      {type="fluid", name="Water", amount=1},
    },
    results = 
    {
      {type="item", name="Magnetite_concentrate", amount=1},
      {type="item", name="Stone_crushed", amount=1},
    },
	icon = "__NCP-Tech__/graphics/icons/Magnetite_concentrate.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Pig_iron",
    category = "Blast_furnace",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Magnetite_concentrate", 1},
      {"Coal_coke", 1},
    },
    results = 
    {
      {type="item", name="Pig_iron", amount=1},
      {type="item", name="Slag", amount=1},
      {type="fluid", name="Carbon_monoxide", amount=1},
    },
	icon = "__NCP-Tech__/graphics/icons/Pig_iron.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Iron_billet",
    category = "Crusher",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Pig_iron", 1},
    },
    result = "Iron_billet",
  },
  
  
  
  --Cromite
  
  {
    type = "recipe",
    name = "Chromite_crushed_ore",
    category = "Crusher",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Chromite_ore", 1},
    },
    result = "Chromite_crushed_ore",
  },
  {
    type = "recipe",
    name = "Chromite_concentrate",
    category = "Ore_washing",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Chromite_crushed_ore", 2},
      {type="fluid", name="Water", amount=1},
    },
    results = 
    {
      {type="item", name="Chromite_concentrate", amount=1},
      {type="item", name="Stone_crushed", amount=1},
    },
	icon = "__NCP-Tech__/graphics/icons/Chromite_concentrate.png",
	subgroup = "Recourses",
  },  
  {
    type = "recipe",
    name = "Ferrochrome",
    category = "Electric_arc_furnace",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Chromite_concentrate", 1},
      {"Coal_coke", 1},
    },
    result = "Ferrochrome",
  },



--Oil

  {
    type = "recipe",
    name = "Oil_refinery",
    category = "Refinery",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="fluid", name="Crude_oil", amount=1},
    },
    results = 
    {
      {type="fluid", name="Petroleum_gas", amount=1},
      {type="fluid", name="Light_oil", amount=1},
      {type="fluid", name="Heavy_oil", amount=1},
    },
	icon = "__NCP-Tech__/graphics/fluids/Crude_oil.png",
	subgroup = "NCP_fluids",
  },
  {
    type = "recipe",
    name = "Ethylene",
    category = "Cracking_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="fluid", name="Benzene", amount=1},
      {type="fluid", name="Petroleum_gas", amount=1},
      {type="fluid", name="Water", amount=1},
    },
    results = 
    {
      {type="fluid", name="Ethylene", amount=1},
    },
	icon = "__NCP-Tech__/graphics/fluids/Ethylene.png",
	subgroup = "NCP_fluids",
  },
  {
    type = "recipe",
    name = "Dichloroethane",
    category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="fluid", name="Chlorine", amount=1},
      {type="fluid", name="Ethylene", amount=1},
    },
    results = 
    {
      {type="fluid", name="Dichloroethane", amount=1},
    },
	icon = "__NCP-Tech__/graphics/fluids/Dichloroethane.png",
	subgroup = "NCP_fluids",
  },
  {
    type = "recipe",
    name = "Plastic_pellets",
    category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="fluid", name="Dichloroethane", amount=1},
      {type="fluid", name="Ferric_chloride_solution", amount=1},
    },
    results = 
    {
      {type="fluid", name="Hydrogen_chlorine", amount=1},
      {type="item", name="Plastic_pellets", amount=1},
    },
	icon = "__NCP-Tech__/graphics/icons/Plastic_pellets.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Petroleum_gas",
    category = "Cracking_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="fluid", name="Light_oil", amount=1},
      {type="fluid", name="Water", amount=1},
    },
    results = 
    {
      {type="fluid", name="Petroleum_gas", amount=1},
    },
	icon = "__NCP-Tech__/graphics/fluids/Petroleum_gas.png",
	subgroup = "NCP_fluids",
  },
  {
    type = "recipe",
    name = "Butadiene",
    category = "Cracking_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="fluid", name="Light_oil", amount=1},
      {type="fluid", name="Water", amount=1},
    },
    results = 
    {
      {type="fluid", name="Butadiene", amount=1},
      {type="fluid", name="Hydrogen", amount=1},
    },
	icon = "__NCP-Tech__/graphics/fluids/Butadiene.png",
	subgroup = "NCP_fluids",
  },
  {
    type = "recipe",
    name = "Rubber",
    category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="fluid", name="Styrene", amount=1},
      {type="fluid", name="Butadiene", amount=1},
    },
      result = "Rubber",
  },
  {
    type = "recipe",
    name = "Diesel",
    category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="fluid", name="Light_oil", amount=1},
    },
    results = 
    {
      {type="fluid", name="Diesel", amount=1},
    },
	icon = "__NCP-Tech__/graphics/fluids/Diesel.png",
	subgroup = "NCP_fluids",
  },
  {
    type = "recipe",
    name = "Diesel_canister",
    category = "Pump",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="fluid", name="Diesel", amount=1},
      {type="item", name="Canister", amount=1},
    },
    results = 
    {
      {type="item", name="Diesel_canister", amount=1},
    },
	icon = "__NCP-Tech__/graphics/icons/Diesel_canister.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Glycerol",
    category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="fluid", name="Light_oil", amount=1},
    },
    results = 
    {
      {type="fluid", name="Glycerol", amount=1},
    },
	icon = "__NCP-Tech__/graphics/fluids/Glycerol.png",
  },
  {
    type = "recipe",
    name = "Resin",
    category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="fluid", name="Glycerol", amount=1},
      {type="fluid", name="Hydrogen_chlorine", amount=1},
    },
      result = "Resin",
  },
  {
    type = "recipe",
    name = "Light_oil",
    category = "Cracking_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="fluid", name="Heavy_oil", amount=1},
      {type="fluid", name="Water", amount=1},
    },
    results = 
    {
      {type="fluid", name="Light_oil", amount=1},
    },
	icon = "__NCP-Tech__/graphics/fluids/Light_oil.png",
	subgroup = "NCP_fluids",
  },
  {
    type = "recipe",
    name = "Bitumi",
    category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="fluid", name="Heavy_oil", amount=1},
    },
    results = 
    {
      {type="fluid", name="Bitumi", amount=1},
    },
	icon = "__NCP-Tech__/graphics/fluids/Bitumi.png",
	subgroup = "NCP_fluids",
  },
  {
    type = "recipe",
    name = "Lubricant",
    category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="fluid", name="Heavy_oil", amount=1},
    },
    results = 
    {
      {type="fluid", name="Lubricant", amount=1},
    },
	icon = "__NCP-Tech__/graphics/fluids/Lubricant.png",
	subgroup = "NCP_fluids",
  },
  {
    type = "recipe",
    name = "Petroleum_jelly",
    category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="fluid", name="Heavy_oil", amount=1},
    },
    result = "Petroleum_jelly",
  },

--Air

	{
    type = "recipe",
    name = "Air",
    category = "Compressor",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      
    },
    results = 
    {
      {type="fluid", name="Air", amount=1},
    },
	icon = "__NCP-Tech__/graphics/fluids/Air.png",
	subgroup = "NCP_fluids",
  },
	{
    type = "recipe",
    name = "Nitrogen_Oxygen",
    category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="fluid", name="Air", amount=1},
    },
    results = 
    {
      {type="fluid", name="Nitrogen", amount=1},
      {type="fluid", name="Oxygen", amount=1},
    },
	icon = "__NCP-Tech__/graphics/fluids/Air.png",
	subgroup = "NCP_fluids",
  },

--Natural Water
  {
    type = "recipe",
    name = "Water",
    category = "Distillation",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="fluid", name="Water_dirty", amount=40},
    },
    results = 
    {
      {type="fluid", name="Water", amount=35},
      {type="item", name="Salt", amount=5},
    },
	icon = "__NCP-Tech__/graphics/fluids/Water.png",
	subgroup = "NCP_fluids",
  },  
  {
    type = "recipe",
    name = "Water_electrolyzer",
    category = "Electrolyzer",
    energy_required = 0.2,
    enabled = "true",
    ingredients =
    {
      {type="fluid", name="Water", amount=1},
    },
    results = 
    {
      {type="fluid", name="Oxygen", amount=1},
      {type="fluid", name="Hydrogen", amount=1},
    },
	icon = "__NCP-Tech__/graphics/fluids/Water.png",
	subgroup = "NCP_fluids",
  },
  {
    type = "recipe",
    name = "Chlorine",
    category = "Electrolyzer",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="fluid", name="Water", amount=1},
      {"Salt", 1},
    },
    results = 
    {
      {type="fluid", name="Chlorine", amount=1},
      {type="fluid", name="Hydrogen", amount=1},
      {type="item", name="Sodium_hydroxide", amount=1},
    },
	icon = "__NCP-Tech__/graphics/fluids/Chlorine.png",
	subgroup = "NCP_fluids",
  },
  {
    type = "recipe",
    name = "Hydrogen_chlorine",
    category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="fluid", name="Chlorine", amount=1},
      {type="fluid", name="Hydrogen", amount=1},
    },
    results = 
    {
      {type="fluid", name="Hydrogen_chlorine", amount=1},
    },
	icon = "__NCP-Tech__/graphics/fluids/Hydrogen_chlorine.png",
	subgroup = "NCP_fluids",
  },
  {
    type = "recipe",
    name = "Hydrochloric_acid",
    category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="fluid", name="Hydrogen_chlorine", amount=1},
      {type="fluid", name="Water", amount=1},
    },
    results = 
    {
      {type="fluid", name="Hydrochloric_acid", amount=1},
    },
	icon = "__NCP-Tech__/graphics/fluids/Hydrochloric_acid.png",
	subgroup = "NCP_fluids",
  },
  {
    type = "recipe",
    name = "Ferric_chloride_solution",
    category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="fluid", name="Hydrochloric_acid", amount=1},
      {"Magnetite_concentrate", 1},
    },
    results = 
    {
      {type="fluid", name="Ferric_chloride_solution", amount=1},
    },
	icon = "__NCP-Tech__/graphics/fluids/Ferric_chloride_solution.png",
	subgroup = "NCP_fluids",
  },
  
--Hot spring
  {
    type = "recipe",
    name = "Lithium_chloride",
    category = "Lithium_extractor",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Quarried_stone", 1},
    },
    result = "Lithium_chloride",
  },
  {
    type = "recipe",
    name = "Lithium",
    category = "Electrolyzer",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Lithium_chloride", 1},
    },
    result = "Lithium",
  },
  {
    type = "recipe",
    name = "Lithium_cobalt_oxide",
    category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Cobalt_oxide", 1},
	  {"Lithium", 1},
    },
    result = "Lithium_cobalt_oxide",
  },
  {
    type = "recipe",
    name = "Lithium_perchlorate",
    category = "Electrolyzer",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Lithium_chloride", 1},
	  {type="fluid", name="Water", amount=1},
    },
    results = 
    {
      {type="item", name="Lithium_perchlorate", amount=1},
	  {type="fluid", name="Hydrogen", amount=1},
    },
	icon = "__NCP-Tech__/graphics/icons/Lithium_perchlorate.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Li-ion_battery",
    category = "Assembling_machine",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Lithium_cobalt_oxide", 1},
	  {"Lithium_perchlorate", 1},
	  {"Silicon_carbide", 1},
	  {"Battery_casing", 1},
    },
    result = "Li-ion_battery",
  },
  
  
  --Item Recipes
  
  {
    type = "recipe",
    name = "Battery_casing",
    category = "Assembling_machine",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Plastic_pellets", 1},
    },
    result = "Battery_casing",
  },
  {
    type = "recipe",
    name = "Battery",
    category = "Assembling_machine",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Plastic_pellets", 1},
	  {"Lead_plate", 1},
	  {type="fluid", name="Sulfuric_acid", amount=1},
    },
    result = "Battery",
  },
  
  ---------------------------------
  
  {
    type = "recipe",
    name = "Silver_nitrate",
    category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Lithium_chloride", 1},
	  {type="fluid", name="Water", amount=1},
    },
    results = 
    {
      {type="item", name="Silver_nitrate", amount=1},
	  {type="fluid", name="Nitrogen_dioxide", amount=1},
	  {type="fluid", name="Water", amount=1},
    },
	icon = "__NCP-Tech__/graphics/icons/Silver_nitrate.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Silver_nitrate",
    category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="fluid", name="Water", amount=1},
	  {type="fluid", name="Nitrogen_dioxide", amount=1},
    },
    results = 
    {
	  {type="fluid", name="Nitric_acid", amount=1},
    },
	icon = "__NCP-Tech__/graphics/fluids/Nitric_acid.png",
	subgroup = "NCP_fluids",
  },
  {
    type = "recipe",
    name = "Silver_oxide",
    category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="item", name="Silver_nitrate", amount=1},
	  {type="item", name="Sodium_hydroxide", amount=1},
    },
    results = 
    {
	  {type="item", name="Silver_oxide", amount=1},
	  {type="fluid", name="Water", amount=1},
    },
	icon = "__NCP-Tech__/graphics/icons/Silver_oxide.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Silver-oxide_battery",
    category = "Assembling_machine",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Zinc_plate", 1},
	  {"Sodium_hydroxide", 1},
	  {"Silver_oxide", 1},
	  {"Battery_casing", 1},
    },
    result = "Silver-oxide_battery",
  },
  
  ---------------------
  
  
  
  
  {
    type = "recipe",
    name = "Brass_billet",
    category = "Alloy_furnace",
    energy_required = 10,
    enabled = "true",
    ingredients =
    {
      {"Copper_billet", 7},
	  {"Zinc_matte", 3},
    },
    results = 
    {
	  {type="item", name="Brass_billet", amount=10},

    },
	icon = "__NCP-Tech__/graphics/icons/Brass_billet.png",
	subgroup = "Recourses",
  },
  
  ------------------------
  
  {
    type = "recipe",
    name = "Lead_solder_ingot",
    category = "Alloy_furnace",
    energy_required = 10,
    enabled = "true",
    ingredients =
    {
      {"Tin_billet", 6},
	  {"Lead_billet", 4},
    },
    results = 
    {
	  {type="item", name="Lead_solder_ingot", amount=10},

    },
	icon = "__NCP-Tech__/graphics/icons/Lead_solder_ingot.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Lead_solder",
    category = "Assembling_machine",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Lead_solder_ingot", 1},
    },
    result = "Lead_solder",
  },
  {
    type = "recipe",
    name = "Lead_free_solder_ingot",
    category = "Alloy_furnace",
    energy_required = 10,
    enabled = "true",
    ingredients =
    {
      {"Tin_billet", 1},
	  {"Copper_billet", 1},
	  {"Silver_ingot", 1},
    },
    results = 
    {
	  {type="item", name="Lead_free_solder_ingot", amount=3},

    },
	icon = "__NCP-Tech__/graphics/icons/Lead_free_solder_ingot.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Lead_free_solder",
    category = "Assembling_machine",
    energy_required = 10,
    enabled = "true",
    ingredients =
    {
      {"Lead_free_solder_ingot", 1},
    },
    results = 
    {
	  {type="item", name="Lead_free_solder", amount=1},

    },
	icon = "__NCP-Tech__/graphics/icons/Lead_free_solder.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Solder_paste",
    category = "Assembling_machine",
    energy_required = 10,
    enabled = "true",
    ingredients =
    {
      {"Lead_free_solder_ingot", 1},
	  {"Resin", 1},
    },
    results = 
    {
	  {type="item", name="Solder_paste", amount=1},

    },
	icon = "__NCP-Tech__/graphics/icons/Solder_paste.png",
	subgroup = "Recourses",
  },
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  --Machines
  {
    type = "recipe",
    name = "Crusher",
    energy_required = 0.2,
    enabled = "true",
    ingredients =
    {
      {"Quarried_stone", 1},
    },
    result = "Crusher",
  },
  {
    type = "recipe",
    name = "Ore_washing",
    energy_required = 0.2,
    enabled = "true",
    ingredients =
    {
      {"Quarried_stone", 1},
    },
    result = "Ore_washing",
  },
  {
    type = "recipe",
    name = "Electric_flash_furnace",
    energy_required = 0.2,
    enabled = "true",
    ingredients =
    {
      {"Quarried_stone", 1},
    },
    result = "Electric_flash_furnace",
  },
  {
    type = "recipe",
    name = "Chemical_plant",
    energy_required = 0.2,
    enabled = "true",
    ingredients =
    {
      {"Quarried_stone", 1},
    },
    result = "Chemical_plant",
  },
  {
    type = "recipe",
    name = "Electrolyzer",
    energy_required = 0.2,
    enabled = "true",
    ingredients =
    {
      {"Quarried_stone", 1},
    },
    result = "Electrolyzer",
  },
  {
    type = "recipe",
    name = "Chemical_furnace",
    energy_required = 0.2,
    enabled = "true",
    ingredients =
    {
      {"Quarried_stone", 1},
    },
    result = "Chemical_furnace",
  },
  {
    type = "recipe",
    name = "Pump",
    energy_required = 0.2,
    enabled = "true",
    ingredients =
    {
      {"Quarried_stone", 1},
    },
    result = "Pump",
  },
  {
    type = "recipe",
    name = "Blast_furnace",
    energy_required = 0.2,
    enabled = "true",
    ingredients =
    {
      {"Quarried_stone", 1},
    },
    result = "Blast_furnace",
  },
  {
    type = "recipe",
    name = "Nuclear_fuel_processing_plant",
    energy_required = 0.2,
    enabled = "true",
    ingredients =
    {
      {"Quarried_stone", 1},
    },
    result = "Nuclear_fuel_processing_plant",
  },
  {
    type = "recipe",
    name = "Rolling_machine",
    energy_required = 0.2,
    enabled = "true",
    ingredients =
    {
      {"Quarried_stone", 1},
    },
    result = "Rolling_machine",
  },
  {
    type = "recipe",
    name = "Mixer",
    energy_required = 0.2,
    enabled = "true",
    ingredients =
    {
      {"Quarried_stone", 1},
    },
    result = "Mixer",
  },
  {
    type = "recipe",
    name = "Shifter",
    energy_required = 0.2,
    enabled = "true",
    ingredients =
    {
      {"Quarried_stone", 1},
    },
    result = "Shifter",
  },
  {
    type = "recipe",
    name = "Silicon_crucible",
    energy_required = 0.2,
    enabled = "true",
    ingredients =
    {
      {"Quarried_stone", 1},
    },
    result = "Silicon_crucible",
  },
  {
    type = "recipe",
    name = "Cracking_plant",
    energy_required = 0.2,
    enabled = "true",
    ingredients =
    {
      {"Quarried_stone", 1},
    },
    result = "Cracking_plant",
  },
  {
    type = "recipe",
    name = "Distillation",
    energy_required = 0.2,
    enabled = "true",
    ingredients =
    {
      {"Quarried_stone", 1},
    },
    result = "Distillation",
  },
  {
    type = "recipe",
    name = "Dry_distillation",
    energy_required = 0.2,
    enabled = "true",
    ingredients =
    {
      {"Quarried_stone", 1},
    },
    result = "Dry_distillation",
  },
  {
    type = "recipe",
    name = "Compressor",
    energy_required = 0.2,
    enabled = "true",
    ingredients =
    {
      {"Quarried_stone", 1},
    },
    result = "Compressor",
  },
  {
    type = "recipe",
    name = "Electric_arc_furnace",
    energy_required = 0.2,
    enabled = "true",
    ingredients =
    {
      {"Quarried_stone", 1},
    },
    result = "Electric_arc_furnace",
  },
  {
    type = "recipe",
    name = "Vacuum_oxygen_decarburization",
    energy_required = 0.2,
    enabled = "true",
    ingredients =
    {
      {"Quarried_stone", 1},
    },
    result = "Vacuum_oxygen_decarburization",
  },
  {
    type = "recipe",
    name = "Grinding_mill",
    energy_required = 0.2,
    enabled = "true",
    ingredients =
    {
      {"Quarried_stone", 1},
    },
    result = "Grinding_mill",
  },
  {
    type = "recipe",
    name = "cryogenic_distillation_plant",
    energy_required = 0.2,
    enabled = "true",
    ingredients =
    {
      {"Quarried_stone", 1},
    },
    result = "cryogenic_distillation_plant",
  },
  {
    type = "recipe",
    name = "cotton_farm",
    energy_required = 0.2,
    enabled = "true",
    ingredients =
    {
      {"Quarried_stone", 1},
    },
    result = "cotton_farm",
  },
  {
    type = "recipe",
    name = "Alloy_furnace",
    energy_required = 0.2,
    enabled = "true",
    ingredients =
    {
      {"Quarried_stone", 1},
    },
    result = "Alloy_furnace",
  },
  {
    type = "recipe",
    name = "Lithium_extractor",
    energy_required = 0.2,
    enabled = "true",
    ingredients =
    {
      {"Quarried_stone", 1},
    },
    result = "Lithium_extractor",
  },
  {
    type = "recipe",
    name = "Electronics_assembly_machine",
    energy_required = 0.2,
    enabled = "true",
    ingredients =
    {
      {"Quarried_stone", 1},
    },
    result = "Electronics_assembly_machine",
  },
  {
    type = "recipe",
    name = "Anode_furnace",
    energy_required = 0.2,
    enabled = "true",
    ingredients =
    {
      {"Quarried_stone", 1},
    },
    result = "Anode_furnace",
  },
  {
    type = "recipe",
    name = "Flash_furnace",
    energy_required = 0.2,
    enabled = "true",
    ingredients =
    {
      {"Quarried_stone", 1},
    },
    result = "Flash_furnace",
  },
  {
    type = "recipe",
    name = "TSL_furnace",
    energy_required = 0.2,
    enabled = "true",
    ingredients =
    {
      {"Quarried_stone", 1},
    },
    result = "TSL_furnace",
  },
  {
    type = "recipe",
    name = "Extruder",
    energy_required = 0.2,
    enabled = "true",
    ingredients =
    {
      {"Quarried_stone", 1},
    },
    result = "Extruder",
  },
  {
    type = "recipe",
    name = "Milling_machine",
    energy_required = 0.2,
    enabled = "true",
    ingredients =
    {
      {"Quarried_stone", 1},
    },
    result = "Milling_machine",
  },
  {
    type = "recipe",
    name = "Furnace",
    energy_required = 0.2,
    enabled = "true",
    ingredients =
    {
      {"Quarried_stone", 1},
    },
    result = "Furnace",
  },
  {
    type = "recipe",
    name = "Assembling_machine",
    energy_required = 0.2,
    enabled = "true",
    ingredients =
    {
      {"Quarried_stone", 1},
    },
    result = "Assembling_machine",
  },
  {
    type = "recipe",
    name = "Refinery",
    energy_required = 0.2,
    enabled = "true",
    ingredients =
    {
      {"Quarried_stone", 1},
    },
    result = "Refinery",
  },
  
  
  --tree
  {
    type = "recipe",
    name = "Wood",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"raw-wood", 1},
    },
    result = "Wood",
  },
  {
    type = "recipe",
    name = "Wooden_board",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Wood", 1},
    },
    result = "Wooden_board",
  },
  {
    type = "recipe",
    name = "Charcoal_1",
    category = "Furnace",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"raw-wood", 2},
    },
    result = "Charcoal",
  },
  {
    type = "recipe",
    name = "Charcoal_2",
    category = "Furnace",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Wood", 2},
    },
    result = "Charcoal",
  },
  {
    type = "recipe",
    name = "Gunpowder",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Charcoal", 1},
      {"Sulfur", 1},
      {"Saltpeter", 1},
    },
    result = "Gunpowder",
  },
  
  
  
  
  --uraninite
  
  {
    type = "recipe",
    name = "Uraninite_crushed_ore",
    category = "Crusher",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Uraninite_ore", 1},
    },
    result = "Uraninite_crushed_ore",
  },
  {
    type = "recipe",
    name = "Uraninite_concentrate",
    category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Uraninite_crushed_ore", 2},
      {type="fluid", name="Ferric_chloride_solution", amount=1}
    },
    results = 
    {
      {type="item", name="Uraninite_concentrate", amount=1},
      {type="item", name="Stone_crushed", amount=1}
    },
	icon = "__NCP-Tech__/graphics/icons/Uraninite_concentrate.png",
	subgroup = "Recourses",
  }, 
  {
    type = "recipe",
    name = "Yellow_cake",
    category = "Grinding_mill",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Uraninite_concentrate", 1},
    },
    results = 
    {
      {type="item", name="Yellow_cake", amount=1},
    },
	icon = "__NCP-Tech__/graphics/icons/Yellow_cake.png",
	subgroup = "Recourses",
  }, 
  {
    type = "recipe",
    name = "Uranyl_nitrate",
    category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Yellow_cake", 1},
      {type="fluid", name="Nitric_acid", amount=1}
    },
    results = 
    {
      {type="fluid", name="Uranyl_nitrate", amount=1},
    },
	icon = "__NCP-Tech__/graphics/fluids/Uranyl_nitrate.png",
	subgroup = "NCP_fluids",
  },
  {
    type = "recipe",
    name = "ADU",
    category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="fluid", name="Ammonia", amount=1},
      {type="fluid", name="Uranyl_nitrate", amount=1}
    },
    results = 
    {
      {type="fluid", name="ADU", amount=1},
    },
	icon = "__NCP-Tech__/graphics/fluids/ADU.png",
	subgroup = "NCP_fluids",
  },
  {
    type = "recipe",
    name = "Uranium_tetrafluoride",
    category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="fluid", name="ADU", amount=1},
      {type="fluid", name="Hydrofluoric_acid", amount=1},
      {type="fluid", name="Hydrogen", amount=1}
    },
    results = 
    {
      {type="fluid", name="Uranium_tetrafluoride", amount=1},
    },
	icon = "__NCP-Tech__/graphics/fluids/Uranium_tetrafluoride.png",
	subgroup = "NCP_fluids",
  },
  {
    type = "recipe",
    name = "Uranium_hexafluoride",
    category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="fluid", name="Uranium_tetrafluoride", amount=1},
      {type="fluid", name="Oxygen", amount=1},
    },
    results = 
    {
      {type="fluid", name="Uranium_hexafluoride", amount=1},
    },
	icon = "__NCP-Tech__/graphics/fluids/Uranium_hexafluoride.png",
	subgroup = "NCP_fluids",
  },
  {
    type = "recipe",
    name = "Uranium_oxide_powder",
    category = "Nuclear_fuel_processing_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="fluid", name="Water", amount=1},
      {type="fluid", name="Uranium_hexafluoride", amount=1},
      {type="fluid", name="Hydrogen", amount=1},
      {type="fluid", name="Ammonia", amount=1},
    },
    results = 
    {
      {type="item", name="Uranium_oxide_powder_235", amount=1},
      {type="item", name="Uranium_oxide_powder_238", amount=1},
    },
	icon = "__NCP-Tech__/graphics/icons/Uranium_oxide_powder_235.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Uranium_235_pellet",
    category = "Compressor",
    energy_required = 15,
    enabled = "true",
    ingredients =
    {
      {"Uranium_oxide_powder_235", 25},
    },
    result = "Uranium_235_pellet",
  },
  {
    type = "recipe",
    name = "Uranium_238_pellet",
    category = "Compressor",
    energy_required = 15,
    enabled = "true",
    ingredients =
    {
      {"Uranium_oxide_powder_238", 25},
    },
    result = "Uranium_238_pellet",
  },
  {
    type = "recipe",
    name = "Uranium_235_rod",
    category = "Compressor",
    energy_required = 10,
    enabled = "true",
    ingredients =
    {
      {"Uranium_235_pellet", 10},
    },
    result = "Uranium_235_rod",
  },
  
  
  
  
  
  
  
  
  --chalcopyrite
   {
    type = "recipe",
    name = "Chalcopyrite_crushed_ore",
    category = "Crusher",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Chalcopyrite_ore", 1},
    },
    result = "Chalcopyrite_crushed_ore",
  },
  {
    type = "recipe",
    name = "Copper_consentrate",
    category = "Ore_washing",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Chalcopyrite_crushed_ore", 2},
      {type="fluid", name="Water", amount=1}
    },
    results = 
    {
      {type="item", name="Copper_consentrate", amount=1},
      {type="item", name="Stone_crushed", amount=1}
    },
	icon = "__NCP-Tech__/graphics/icons/Copper_consentrate.png",
	subgroup = "Recourses",
  }, 
  {
    type = "recipe",
    name = "Copper_blister",
    category = "Flash_furnace",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Copper_consentrate", 1},
    },
    results = 
    {
      {type="item", name="Copper_blister", amount=1},
      {type="item", name="Slag", amount=1},
      {type="fluid", name="Sulfur_dioxide", amount=1},
    },
	icon = "__NCP-Tech__/graphics/icons/Copper_blister.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Copper_blister_high",
    category = "Electric_flash_furnace",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Copper_consentrate", 1},
      {type="fluid", name="Oxygen", amount=1},
    },
    results = 
    {
      {type="item", name="Copper_blister", amount=1},
      {type="item", name="Slag", amount=1},
      {type="fluid", name="Sulfur_dioxide", amount=1},
    },
	icon = "__NCP-Tech__/graphics/icons/Copper_blister.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Copper_anode",
    category = "Anode_furnace",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Copper_blister", 1},
      {type="fluid", name="Petroleum_gas", amount=1},
    },
    results = 
    {
      {type="item", name="Copper_anode", amount=1},

    },
	icon = "__NCP-Tech__/graphics/icons/Copper_anode.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Copper_billet_2",
    category = "Electrolyzer",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Copper_anode", 1},
      {type="fluid", name="Sulfuric_acid", amount=1},
    },
    results = 
    {
      {type="item", name="Copper_billet", amount=1},
      {type="fluid", name="Anode_slime", amount=1},
    },
	icon = "__NCP-Tech__/graphics/icons/Copper_billet.png",
	subgroup = "Recourses",
  },
  
  
  
  --pentlandite
  {
    type = "recipe",
    name = "Pentlandite_crushed_ore",
    category = "Crusher",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Pentlandite_ore", 1},
    },
    result = "Pentlandite_crushed_ore",
  },
  {
    type = "recipe",
    name = "Nickel_concentrate",
    category = "Ore_washing",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Pentlandite_crushed_ore", 2},
      {type="fluid", name="Water", amount=1}
    },
    results = 
    {
      {type="item", name="Nickel_concentrate", amount=1},
      {type="item", name="Stone_crushed", amount=1}
    },
	icon = "__NCP-Tech__/graphics/icons/Nickel_concentrate.png",
	subgroup = "Recourses",
  }, 
  {
    type = "recipe",
    name = "Nickel_dust",
    category = "Flash_furnace",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Nickel_concentrate", 1},
    },
    results = 
    {
      {type="item", name="Nickel_dust", amount=1},
      {type="item", name="Slag", amount=1},
      {type="fluid", name="Sulfur_dioxide", amount=1},
    },
	icon = "__NCP-Tech__/graphics/icons/Nickel_dust.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Nickel_cathode",
    category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Nickel_dust", 1},
      {type="fluid", name="Sulfuric_acid", amount=1},
    },
    results = 
    {
      {type="item", name="Nickel_cathode", amount=1},
      {type="item", name="Cobalt_oxide", amount=1},
    },
	icon = "__NCP-Tech__/graphics/icons/Nickel_cathode.png",
	subgroup = "Recourses",
  },
   {
    type = "recipe",
    name = "Nickel_billet",
    category = "Electrolyzer",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Zinc_matte", 1},
      {type="fluid", name="Hydrogen", amount=1},
    },
    results = 
    {
      {type="item", name="Nickel_billet", amount=1},
    },
	icon = "__NCP-Tech__/graphics/icons/Nickel_billet.png",
	subgroup = "Recourses",
  }, 
  
  
  
  
  
  --sphalerite
  {
    type = "recipe",
    name = "Sphalerite_crushed_ore",
    category = "Crusher",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Sphalerite_ore", 1},
    },
    result = "Sphalerite_crushed_ore",
  },
  {
    type = "recipe",
    name = "Zinc_concentrate",
    category = "Ore_washing",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Sphalerite_crushed_ore", 2},
      {type="fluid", name="Water", amount=1}
    },
    results = 
    {
      {type="item", name="Zinc_concentrate", amount=1},
      {type="item", name="Stone_crushed", amount=1}
    },
	icon = "__NCP-Tech__/graphics/icons/Zinc_concentrate.png",
	subgroup = "Recourses",
  }, 
  {
    type = "recipe",
    name = "Zinc_matte",
    category = "Flash_furnace",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Zinc_concentrate", 1},
    },
    results = 
    {
      {type="item", name="Zinc_matte", amount=1},
      {type="item", name="Slag", amount=1},
      {type="fluid", name="Sulfur_dioxide", amount=1},
    },
	icon = "__NCP-Tech__/graphics/icons/Zinc_matte.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Zinc_billet",
    category = "Electrolyzer",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Zinc_matte", 1},
      {type="fluid", name="Sulfuric_acid", amount=1},
    },
    results = 
    {
      {type="item", name="Zinc_billet", amount=1},
    },
	icon = "__NCP-Tech__/graphics/icons/Zinc_billet.png",
	subgroup = "Recourses",
  }, 
  
  
  
  
  --scheelite
  {
    type = "recipe",
    name = "Scheelite_crushed_ore",
    category = "Crusher",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Scheelite_ore", 1},
    },
    result = "Scheelite_crushed_ore",
  },
  {
    type = "recipe",
    name = "Sodium_tugstate_solution",
    category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Scheelite_crushed_ore", 2},
	  {"Sodium_hydroxide", 1},
      {type="fluid", name="Water", amount=1}
    },
    results = 
    {
      {type="fluid", name="Sodium_tugstate_solution", amount=1},
      {type="item", name="Stone_crushed", amount=1}
    },
	icon = "__NCP-Tech__/graphics/fluids/Sodium_tugstate_solution.png",
	subgroup = "NCP_fluids",
  },
  {
    type = "recipe",
    name = "Ammonium_Paratungstate",
    category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
	  {type="fluid", name="Sodium_tugstate_solution", amount=1},
      {type="fluid", name="Ammonia", amount=1},
    },
    results = 
    {
      {type="item", name="Ammonium_Paratungstate", amount=1},
      
    },
	icon = "__NCP-Tech__/graphics/icons/Ammonium_Paratungstate.png",
	subgroup = "Recourses",
  },  
  {
    type = "recipe",
    name = "Tungsten_oxide",
    category = "Chemical_furnace",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Ammonium_Paratungstate", 1},
	  {type="fluid", name="Nitrogen", amount=1},
    },
    result = "Tungsten_oxide",
  },
  {
    type = "recipe",
    name = "Tungsten_powder",
    category = "Chemical_furnace",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Tungsten_oxide", 1},
	  {type="fluid", name="Hydrogen", amount=1},
    },
    result = "Tungsten_powder",
  },
  {
    type = "recipe",
    name = "Tungsten_carbide",
    category = "Blast_furnace",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Tungsten_powder", 1},
	  {"Carbon_dust", 1},
    },
    result = "Tungsten_carbide",
  },
  
  
  
  
  
  --native copper
  {
    type = "recipe",
    name = "Copper_billet",
    category = "Furnace",
    energy_required = 0.2,
    enabled = "true",
    ingredients =
    {
      {"Copper_native_ore", 4},
    },
    result = "Copper_billet",
  },
  
  
  
  -----------------------------------------------
  
  {
    type = "recipe",
    name = "Ammonia",
    category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="fluid", name="Hydrogen", amount=1},
      {type="fluid", name="Nitrogen", amount=1},
    },
    results = 
    {
      {type="fluid", name="Ammonia", amount=1},
      
    },
	icon = "__NCP-Tech__/graphics/fluids/Ammonia.png",
	subgroup = "NCP_fluids",
  },
  {
    type = "recipe",
    name = "Nitric_acid",
    category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="fluid", name="Ammonia", amount=1},
      {type="fluid", name="Oxygen", amount=1},
    },
    results = 
    {
      {type="fluid", name="Nitric_acid", amount=1},
      
    },
	icon = "__NCP-Tech__/graphics/fluids/Nitric_acid.png",
	subgroup = "NCP_fluids",
  },  
  {
    type = "recipe",
    name = "Sulfur_dioxide",
    category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="item", name="Sulfur", amount=1},
      {type="fluid", name="Oxygen", amount=1},
    },
    results = 
    {
      {type="fluid", name="Sulfur_dioxide", amount=1},
      
    },
	icon = "__NCP-Tech__/graphics/fluids/Sulfur_dioxide.png",
	subgroup = "NCP_fluids",
  },
  {
    type = "recipe",
    name = "Sulfuric_acid",
    category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="fluid", name="Sulfur_dioxide", amount=1},
      {type="fluid", name="Water", amount=1},
    },
    results = 
    {
      {type="fluid", name="Sulfuric_acid", amount=1},
      
    },
	icon = "__NCP-Tech__/graphics/fluids/Sulfuric_acid.png",
	subgroup = "NCP_fluids",
  },
  {
    type = "recipe",
    name = "Cotton",
    category = "cotton_farm",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="item", name="Fertilizer", amount=1},
      {type="fluid", name="Water", amount=1},
    },
    results = 
    {
      {type="item", name="Cotton", amount=1},
      
    },
	icon = "__NCP-Tech__/graphics/icons/Cotton.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Guncotton",
    category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="fluid", name="Nitric_acid", amount=1},
      {type="fluid", name="Sulfuric_acid", amount=1},
      {type="item", name="Cotton", amount=1},
    },
    results = 
    {
      {type="item", name="Guncotton", amount=1},
      
    },
	icon = "__NCP-Tech__/graphics/icons/Guncotton.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Cordite",
    category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="item", name="Petroleum_jelly", amount=1},
      {type="fluid", name="Nitroglycerin", amount=1},
      {type="item", name="Guncotton", amount=1},
    },
    results = 
    {
      {type="item", name="Cordite", amount=1},
      
    },
	icon = "__NCP-Tech__/graphics/icons/Cordite.png",
	subgroup = "Recourses",
  },
  
  
  
  
  
  
  
  
  
  
  
  
  
  --------------------------------
  
  {
    type = "recipe",
    name = "irontest",
    energy_required = 0.2,
    enabled = "true",
    ingredients =
    {
      {"Iron_billet", 1},
    },
    result = "iron-plate",
  },
  {
    type = "recipe",
    name = "coppertest",
    energy_required = 0.2,
    enabled = "true",
    ingredients =
    {
      {"Copper_billet", 1},
    },
    result = "copper-plate",
  },
  
  
  
  

  
  
  })
