data:extend(
{
  
  --stone
  {
    type = "recipe",
    name = "Quarried_stone",
    enabled = "true",
    ingredients =
    {
      {"stone", 1},
    },
    result = "Quarried_stone",
  },
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
    category = "Frunace",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Clay_wet", 1},
    },
    result = "Brick",
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
      {type="item", name="Quartz", amount=1},
      {type="item", name="Stone_crushed", amount=1}
    },
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
      {type="item", name="Pig_iron", amount=1},
      {type="item", name="Slag", amount=1},
    },
  },
  {
    type = "recipe",
    name = "Wrought_iron_billet_early",
    category = "Furnace",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Pig_iron", 2},
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
    result = "Chromite_crushed_ore",
  },



--Oil


--Air

--Natural Water
  {
    type = "recipe",
    name = "Water",
    category = "Distillation",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="fluid", name="Water_dirty", amount=3},
    },
    results = 
    {
      {type="fluid", name="Water", amount=1},
      {type="item", name="Salt", amount=1},
    },
  },  
  {
    type = "recipe",
    name = "Water",
    category = "Distillation",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="fluid", name="Water_dirty", amount=3},
    },
    results = 
    {
      {type="fluid", name="Water", amount=2},
      {type="item", name="Salt", amount=1},
    },
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
  },
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  })
