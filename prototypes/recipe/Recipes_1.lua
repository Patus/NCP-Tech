--data.raw["technology"]=nil
--data.raw["recipe"]["empty-barrel"]=nil
--data.raw["recipe"]["fill_crude_oil_barrel"]=nil
--data.raw["recipe"]["empty_crude_oil_barrel"]=nil

data.raw["generator"]["steam-engine"].fluid_input =
    {
      name = "Water",
      amount = 0.0,
      minimum_temperature = 100.0
    },







data:extend(
{

--[[


  --Nitre

  {
    type = "recipe",
    name = "Fertilizer",
    category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Potassium_nitrate", 1},
	  {type="fluid", name="Water_distilled", amount=4},
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
    category = "Ore_washing",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Quartz_crushed", 2},
    },
    results =
    {
      {type="item", name="Quartz", amount=1},
      {type="item", name="Stone_crushed", amount=1},
    },
	icon = "__NCP-Tech__/graphics/item/Quartz.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Gravel",
    category = "Grinding_mill",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Stone_crushed", 1},
    },
    results =
    {
      {type="item", name="Gravel", amount=1, probability = 0.95},
      {type="item", name="Sand", amount=1, probability = 0.05},
    },
	icon = "__NCP-Tech__/graphics/item/Gravel.png",
	subgroup = "Recourses",
  },

  {
    type = "recipe",
    name = "Sand",
    category = "Grinding_mill",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Gravel", 1},
    },
    results =
    {
      {type="item", name="Sand", amount=1, probability = 0.95},
      {type="item", name="Silt", amount=1, probability = 0.05}
    },
	icon = "__NCP-Tech__/graphics/item/Sand.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Silt",
    category = "Grinding_mill",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Sand", 1},
    },
    results =
    {
      {type="item", name="Silt", amount=1},
    },
	icon = "__NCP-Tech__/graphics/item/Silt.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Rare_earth",
    category = "Ore_washing",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Silt", 1},
	  {type="fluid", name="Water_distilled", amount=10},
    },
    results =
    {
      {type="item", name="Rare_earth", amount=1, probability = 1/10000},
	  {type="item", name="Gold_concentrate", amount=1, probability = 0.004},
	  {type="item", name="Zircon", amount=1, probability = 1/5000},
    },
	icon = "__NCP-Tech__/graphics/item/Rare_earth.png",
	subgroup = "Recourses",
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
    name = "Quartz_crushed",
    category = "Crusher",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Quartz_rock", 1},
    },
    result = "Quartz_crushed",
  },
  {
    type = "recipe",
    name = "Lead_concentrate",
    category = "Ore_washing",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Quartz_crushed", 2},
      {type="fluid", name="Water", amount=10}
    },
    results =
    {
      {type="item", name="Lead_concentrate", amount=1},
      {type="item", name="Stone_crushed", amount=1}
    },
	icon = "__NCP-Tech__/graphics/item/Lead_concentrate.png",
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
    name = "Silicon_metallurgical",
    category = "Electric_arc_furnace",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Silicon_dioxide", 1},
      {"Coal_coke", 2},
    },
    results =
    {
      {type="item", name="Silicon_metallurgical", amount=1},
      {type="fluid", name="Carbon_monoxide", amount=2},
    },
	icon = "__NCP-Tech__/graphics/item/Silicon_metallurgical.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Trichlorosilane",
    category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="fluid", name="Hydrochloric_acid", amount=3},
	  {type="item", name="Silicon_metallurgical", amount=1},
    },
    results =
    {
      {type="fluid", name="Hydrogen", amount=1},
	  {type="fluid", name="Trichlorosilane", amount=1},
    },
	icon = "__NCP-Tech__/graphics/fluid/Trichlorosilane.png",
	subgroup = "NCP_fluids",
  },
  {
    type = "recipe",
    name = "Silicon_polycrystalline_rod",
    category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="fluid", name="Hydrogen", amount=2},
	  {type="fluid", name="Trichlorosilane", amount=2},
    },
    results =
    {
      {type="item", name="Silicon_polycrystalline_rod", amount=1,probability =0.1},
	  {type="fluid", name="Hydrochloric_acid", amount=1 ,probability =0.1},
	  {type="fluid", name="Trichlorosilane", amount=1},
    },
	icon = "__NCP-Tech__/graphics/item/Silicon_polycrystalline_rod.png",
	subgroup = "rod",
  },
  {
    type = "recipe",
    name = "Silicon_polycrystalline_granule",
    category = "Crusher",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="item", name="Silicon_polycrystalline_rod", amount=2},

    },
    results =
    {
      {type="item", name="Silicon_polycrystalline_granule", amount=1,probability =1},

    },
	icon = "__NCP-Tech__/graphics/item/Silicon_polycrystalline_granule.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Silicon_boule_1",
    category = "Chemical_furnace",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="item", name="Silicon_polycrystalline_granule", amount=1},
	  {type="fluid", name="Argon", amount=1},
    },
    results =
    {
      {type="item", name="Silicon_boule", amount=1,probability =0.2},

    },
	icon = "__NCP-Tech__/graphics/item/Silicon_boule.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Silicon_boule_2",
    category = "Chemical_furnace",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="item", name="Silicon_polycrystalline_granule", amount=1},

    },
    results =
    {
      {type="item", name="Silicon_boule", amount=1,probability =0.1},

    },
	icon = "__NCP-Tech__/graphics/item/Silicon_boule.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Silicon_wafer",
    category = "Assembling_machine",
    energy_required = 60,
    enabled = "true",
    ingredients =
    {
      {"Silicon_boule", 1},
    },
    results =
    {
      {type="item", name="Silicon_wafer", amount=20},
    },
	icon = "__NCP-Tech__/graphics/item/Silicon_wafer.png",
	subgroup = "Recourses",
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
    name = "Bauxite_ore_dust",
    category = "Grinding_mill",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Bauxite_crushed_ore", 2},
    },
    results =
    {
      {type="item", name="Bauxite_ore_dust", amount=1},
    },
	icon = "__NCP-Tech__/graphics/item/Bauxite_ore_dust.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Bauxite_concentrate",
    category = "Ore_washing",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Bauxite_ore_dust", 2},
      {type="fluid", name="Water", amount=10}
    },
    results =
    {
      {type="item", name="Bauxite_concentrate", amount=1},
      {type="item", name="Stone_crushed", amount=1}
    },
	icon = "__NCP-Tech__/graphics/item/Bauxite_concentrate.png",
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
      {"Bauxite_concentrate", 2},
      {"Sodium_hydroxide", 1},
    },
    results =
    {
      {type="item", name="Bauxite_tailings", amount=1},
      {type="item", name="Alumina", amount=1}
    },
	icon = "__NCP-Tech__/graphics/item/Alumina.png",
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
      {type="fluid", name="Water", amount=10}
    },
    results =
    {
      {type="item", name="Calcium_fluoride", amount=1},
      {type="item", name="Stone_crushed", amount=1}
    },
	icon = "__NCP-Tech__/graphics/item/Calcium_fluoride.png",
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
      {"Calcium_fluoride", 2},
      {type="fluid", name="Sulfuric_acid", amount=1}
    },
    results =
    {
      {type="item", name="Calcium_sulfate", amount=1},
      {type="fluid", name="Hydrogen_fluoride", amount=1}
    },
	icon = "__NCP-Tech__/graphics/item/Calcium_sulfate.png",
	subgroup = "Recourses",
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
      {type="fluid", name="Water_distilled", amount=1},
    },
    results =
    {
      {type="fluid", name="Hydrofluoric_acid", amount=1},
    },
	icon = "__NCP-Tech__/graphics/fluid/Hydrofluoric_acid.png",
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
      {type="fluid", name="Water", amount=10}
    },
    results =
    {
      {type="item", name="Tin_concentrate", amount=1},
      {type="item", name="Stone_crushed", amount=1}
    },
	icon = "__NCP-Tech__/graphics/item/Tin_concentrate.png",
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
      {"Tin_concentrate", 2},
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
      {type="fluid", name="Water", amount=10}
    },
    results =
    {
      {type="item", name="Lead_concentrate", amount=1},
      {type="item", name="Stone_crushed", amount=1}
    },
	icon = "__NCP-Tech__/graphics/item/Lead_concentrate.png",
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
      {"Lead_concentrate", 3},
      {type="fluid", name="Oxygen", amount=1},
    },
    results =
    {
      {type="item", name="Lead_bullion", amount=1},
      {type="item", name="Slag", amount=1},
      {type="fluid", name="Sulfur_dioxide", amount=1}
    },
	icon = "__NCP-Tech__/graphics/item/Lead_bullion.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Lead_billet",
    category = "Furnace",
    energy_required = 2.4,
    enabled = "true",
    ingredients =
    {
      {"Lead_bullion", 1},
    },
    results =
    {
      {type="item", name="Lead_billet", amount=1},
      {type="item", name="Silver_ingot", amount=1, probability = 0.02},
    },
	icon = "__NCP-Tech__/graphics/item/Lead_billet.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Lead_scrap",
    category = "Crusher",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Lead_billet", 1},
    },
    results =
    {
      {type="item", name="Lead_scrap", amount_min= 1,amount_max= 4},
    },
	icon = "__NCP-Tech__/graphics/item/Lead_scrap.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Lead_dust",
    category = "Grinding_mill",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Lead_scrap", 1},
    },
    results =
    {
      {type="item", name="Lead_dust", amount= 1},
    },
	icon = "__NCP-Tech__/graphics/item/Lead_dust.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Lead_oxide",
    category = "Furnace",
    energy_required = 1.5,
    enabled = "true",
    ingredients =
    {
      {"Lead_dust", 1},
    },
    results =
    {
      {type="item", name="Lead_oxide", amount= 1},
    },
	icon = "__NCP-Tech__/graphics/item/Lead_oxide.png",
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
    name = "Rutile_ore_sand",
    category = "Grinding_mill",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Rutile_crushed_ore", 1},
    },
    results =
    {
      {type="item", name="Rutile_ore_sand", amount=1},
    },
	icon = "__NCP-Tech__/graphics/item/Rutile_ore_sand.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Rutile_sand",
    category = "Ore_washing",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Rutile_ore_sand", 2},
      {type="fluid", name="Water", amount=10},
    },
    results =
    {
      {type="item", name="Rutile_sand", amount=1},
      {type="item", name="Zircon", amount=1, amount=1, probability = 0.02},
      {type="item", name="Sand", amount=1},
    },
	icon = "__NCP-Tech__/graphics/item/Rutile_sand.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Titanium_tetrachloride",
    category = "Electric_chemical_furnace",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="item", name="Coal_coke", amount=2},
	  {type="item", name="Rutile_sand", amount=1},
	  {type="fluid", name="Chlorine", amount=2},
    },
    results =
    {
      {type="fluid", name="Titanium_tetrachloride", amount=1},

    },
	icon = "__NCP-Tech__/graphics/fluid/Titanium_tetrachloride.png",
	subgroup = "NCP_fluids",
  },
  {
    type = "recipe",
    name = "Titanium_dioxide",
    category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
	  {type="fluid", name="Oxygen", amount=1},
	  {type="fluid", name="Titanium_tetrachloride", amount=1},
    },
    results =
    {
      {type="fluid", name="Chlorine", amount=2, probability =0.9},
	  {type="item", name="Titanium_dioxide", amount=1},
    },
	icon = "__NCP-Tech__/graphics/item/Titanium_dioxide.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Titanium_dioxide_pellet",
    category = "Compressor",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
	  {type="item", name="Titanium_dioxide", amount=10},
    },
    results =
    {
	  {type="item", name="Titanium_dioxide_pellet", amount=1},
    },
	icon = "__NCP-Tech__/graphics/item/Titanium_dioxide_pellet.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Titanium_pellet",
    category = "Electrolyzer",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
	  {type="item", name="Titanium_dioxide_pellet", amount=1},
	  {type="item", name="Calcium_chloride", amount=1},
    },
    results =
    {
	  {type="item", name="Titanium_pellet", amount=1},
	  {type="item", name="Calcium_oxide", amount=1},
    },
	icon = "__NCP-Tech__/graphics/item/Titanium_pellet.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Titanium_dust_dirty",
    category = "Grinding_mill",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
	  {type="item", name="Titanium_pellet", amount=1},
    },
    results =
    {
	  {type="item", name="Titanium_dust_dirty", amount=1},

    },
	icon = "__NCP-Tech__/graphics/item/Titanium_dust_dirty.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Titanium_dust",
    category = "Ore_washing",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
	  {type="item", name="Titanium_dust_dirty", amount=1},
	  {type="fluid", name="Water_distilled", amount=10},
    },
    results =
    {
	  {type="item", name="Titanium_dust", amount=1},

    },
	icon = "__NCP-Tech__/graphics/item/Titanium_dust.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Titanium_billet",
    category = "Electric_furnace",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
	  {type="item", name="Titanium_dust", amount=1},
    },
    results =
    {
	  {type="item", name="Titanium_billet", amount=1},

    },
	icon = "__NCP-Tech__/graphics/item/Titanium_billet.png",
	subgroup = "Recourses",
  },

  {
    type = "recipe",
    name = "Zirconium_tetrachloride",
    category = "Chemical_furnace",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="item", name="Zircon", amount=1},
	  {type="item", name="Coal_coke", amount=2},
	  {type="fluid", name="Chlorine", amount=4},
    },
    results =
    {
	  {type="item", name="Zirconium_tetrachloride", amount=1},
    },
	icon = "__NCP-Tech__/graphics/item/Zirconium_tetrachloride.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Zirconium_sponge",
    category = "Electric_furnace",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="item", name="Zirconium_tetrachloride", amount=1},
	  {type="item", name="Magnesium_billet", amount=1},
    },
    results =
    {
	  {type="item", name="Zirconium_sponge", amount=1},
    },
	icon = "__NCP-Tech__/graphics/item/Zirconium_sponge.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Zirconium_billet",
    category = "Electric_furnace",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="item", name="Zirconium_sponge", amount=8},
    },
    results =
    {
	  {type="item", name="Zirconium_billet", amount=1},
	  {type="item", name="Magnesium_chloride", amount=7},
    },
	icon = "__NCP-Tech__/graphics/item/Zirconium_billet.png",
	subgroup = "Recourses",
  },




  --Gold


  {
    type = "recipe",
    name = "Dore_bar",
    category = "Furnace",
    energy_required = 10,
    enabled = "true",
    ingredients =
    {
      {"Gold_concentrate", 10},
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
    name = "Coal_crushed_ore",
    category = "Crusher",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="item", name="coal", amount=1},
    },
    results =
    {
      {type="item", name="Coal_crushed_ore", amount=1, probability = 1},
    },
	icon = "__NCP-Tech__/graphics/item/Coal_crushed_ore.png",
	subgroup = "Recourses",

  },
  {
    type = "recipe",
    name = "Coal_ore_dust",
    category = "Grinding_mill",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="item", name="Coal_crushed_ore", amount=1, probability = 1},

    },
    results =
    {
      {type="item", name="Coal_ore_dust", amount=1, probability = 1},
    },
	icon = "__NCP-Tech__/graphics/item/Coal_ore_dust.png",
	subgroup = "Recourses",

  },
  {
    type = "recipe",
    name = "Coal_dust",
    category = "Ore_washing",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Coal_ore_dust", 2},
      {type="fluid", name="Water", amount=10},
    },
    results =
    {
      {type="item", name="Coal_dust", amount=1, probability = 1},
      {type="item", name="Sand", amount=1},
    },
	icon = "__NCP-Tech__/graphics/item/Coal_dust.png",
	subgroup = "Recourses",

  },
  {
    type = "recipe",
    name = "Coal_distillation",
    category = "Distillation",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Coal_dust", 1},
    },
    results =
    {
      {type="item", name="Coal_coke", amount=1},
      {type="item", name="Coal_tar", amount=1},
      {type="fluid", name="Coal_gas", amount=1},
      {type="fluid", name="Ammonia", amount=1},
      {type="fluid", name="Benzene", amount=1},
    },
	icon = "__NCP-Tech__/graphics/item/Coal_coke.png",
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
	icon = "__NCP-Tech__/graphics/fluid/Coal_gas.png",
	subgroup = "NCP_fluids",
  },
  {
    type = "recipe",
    name = "Syngas",
    category = "Cracking_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="fluid", name="Coal_gas", amount=1},
      {type="fluid", name="Water_distilled", amount=1},
    },
    results =
    {
      {type="fluid", name="Syngas", amount=1},
      {type="fluid", name="Toluene", amount=1, probability = 0.1},
    },
	icon = "__NCP-Tech__/graphics/fluid/Syngas.png",
	subgroup = "NCP_fluids",
  },
  {
    type = "recipe",
    name = "Syngas2",
    category = "Cracking_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="fluid", name="Petroleum_gas", amount=1},
      {type="fluid", name="Water_distilled", amount=1},
    },
    results =
    {
      {type="fluid", name="Syngas", amount=2},

    },
	icon = "__NCP-Tech__/graphics/fluid/Syngas.png",
	subgroup = "NCP_fluids",
  },
  {
    type = "recipe",
    name = "Silicon_carbide",
    category = "Silicon_furnace",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Graphite_dust", 1},
      {"Silicon_dioxide", 1},S
    },
    results =
    {
      {type="item", name="Silicon_carbide", amount=1},
      {type="fluid", name="Carbon_monoxide", amount=1},
    },
	icon = "__NCP-Tech__/graphics/item/Silicon_carbide.png",
	subgroup = "Recourses",
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
	icon = "__NCP-Tech__/graphics/fluid/Bitumi.png",
	subgroup = "NCP_fluids",
  },
  {
    type = "recipe",
    name = "Asphalt_concrete",
    category = "Assembling_machine",
    energy_required = 8,
    enabled = "true",
    ingredients =
    {
      {"Gravel", 5},
      {type="fluid", name="Bitumi", amount=1},
    },
    results =
    {
      {type="item", name="Asphalt_concrete", amount=5},
    },
	icon = "__NCP-Tech__/graphics/item/Asphalt_concrete.png",
	subgroup = "Recourses",
  },



  --Magnetite
  --early

  {
    type = "recipe",
    name = "Pig_iron_early",
    category = "Furnace",
    energy_required = 5,
    enabled = "true",
    ingredients =
    {
      {"Magnetite_ore", 6},
      {type="item", name="Charcoal", amount=3},
    },
    results =
    {
      {type="item", name="Pig_iron_early", amount=1},
      {type="item", name="Slag", amount=2},
    },
	icon = "__NCP-Tech__/graphics/item/Pig_iron.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Iron_billet_early",
    category = "Furnace",
    energy_required = 3,
    enabled = "true",
    ingredients =
    {
      {"Pig_iron_early", 2},

    },
    result = "Iron_billet",
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
      {type="fluid", name="Water", amount=10},
    },
    results =
    {
      {type="item", name="Magnetite_concentrate", amount=1},
      {type="item", name="Stone_crushed", amount=1},
    },
	icon = "__NCP-Tech__/graphics/item/Magnetite_concentrate.png",
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
	  {"Limestone_crushed", 1},
    },
    results =
    {
      {type="item", name="Pig_iron", amount=1},
      {type="item", name="Slag", amount=1},
      {type="fluid", name="Carbon_monoxide", amount=1},
    },
	icon = "__NCP-Tech__/graphics/item/Pig_iron.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Iron_billet",
    category = "Furnace",
    energy_required = 1.5,
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
      {type="fluid", name="Water", amount=10},
    },
    results =
    {
      {type="item", name="Chromite_concentrate", amount=1},
      {type="item", name="Stone_crushed", amount=1},
    },
	icon = "__NCP-Tech__/graphics/item/Chromite_concentrate.png",
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
	icon = "__NCP-Tech__/graphics/fluid/Crude_oil.png",
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
      {type="fluid", name="Water_distilled", amount=1},
    },
    results =
    {
      {type="fluid", name="Ethylene", amount=1},
      {type="fluid", name="Toluene", amount=1, probability = 0.1},
    },
	icon = "__NCP-Tech__/graphics/fluid/Ethylene.png",
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
      {type="fluid", name="Hydrogen_chloride", amount=1},
      {type="fluid", name="Ethylene", amount=1},
    },
    results =
    {
      {type="fluid", name="Dichloroethane", amount=1},
      {type="fluid", name="Water_distilled", amount=1},
    },
	icon = "__NCP-Tech__/graphics/fluid/Dichloroethane.png",
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
    },
    results =
    {
      {type="fluid", name="Hydrogen_chloride", amount=1, probability = 0.9},
      {type="item", name="Plastic_pellets", amount=1},
    },
	icon = "__NCP-Tech__/graphics/item/Plastic_pellets.png",
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
      {type="fluid", name="Water_distilled", amount=1},
    },
    results =
    {
      {type="fluid", name="Petroleum_gas", amount=1},
    },
	icon = "__NCP-Tech__/graphics/fluid/Petroleum_gas.png",
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
      {type="fluid", name="Water_distilled", amount=1},
    },
    results =
    {
      {type="fluid", name="Butadiene", amount=1},
      {type="fluid", name="Hydrogen", amount=1},
    },
	icon = "__NCP-Tech__/graphics/fluid/Butadiene.png",
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
	icon = "__NCP-Tech__/graphics/fluid/Diesel.png",
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
	icon = "__NCP-Tech__/graphics/item/Diesel_canister.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Toluene",
    category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="fluid", name="Light_oil", amount=1},
    },
    results =
    {
      {type="fluid", name="Toluene", amount=1},
    },
	icon = "__NCP-Tech__/graphics/fluid/Toluene.png",
	subgroup = "NCP_fluids",
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
      {type="fluid", name="Hydrogen_chloride", amount=1},
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
      {type="fluid", name="Water_distilled", amount=1},
    },
    results =
    {
      {type="fluid", name="Light_oil", amount=1},
    },
	icon = "__NCP-Tech__/graphics/fluid/Light_oil.png",
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
	icon = "__NCP-Tech__/graphics/fluid/Bitumi.png",
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
	icon = "__NCP-Tech__/graphics/fluid/Lubricant.png",
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
	icon = "__NCP-Tech__/graphics/fluid/Air.png",
	subgroup = "NCP_fluids",
  },
	{
    type = "recipe",
    name = "Nitrogen_Oxygen",
    category = "Cryogenic_distillation_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      --{type="fluid", name="Air", amount=1},
    },
    results =
    {
      {type="fluid", name="Nitrogen", amount=1, probability = 0.781},
      {type="fluid", name="Oxygen", amount=1, probability = 0.209},
      {type="fluid", name="Argon", amount=1, probability = 0.209},
    },
	icon = "__NCP-Tech__/graphics/fluid/Air.png",
	subgroup = "NCP_fluids",
  },

--Natural Water
  {
    type = "recipe",
    name = "Water_distilled",
    category = "Distillation",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="fluid", name="Water", amount=10},
    },
    results =
    {
      {type="fluid", name="Water_distilled", amount=9},
      {type="item", name="Salt", amount=1, probability = 0.01},
    },
	icon = "__NCP-Tech__/graphics/fluid/Water_distilled.png",
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
      {type="fluid", name="Water_distilled", amount=1},
    },
    results =
    {
      {type="fluid", name="Oxygen", amount=1},
      {type="fluid", name="Hydrogen", amount=1},
    },
	icon = "__NCP-Tech__/graphics/fluid/Water_distilled.png",
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
      {type="fluid", name="Water_distilled", amount=1},
      {"Salt", 1},
    },
    results =
    {
      {type="fluid", name="Chlorine", amount=1},
      {type="fluid", name="Hydrogen", amount=1},
      {type="item", name="Sodium_hydroxide", amount=1},
    },
	icon = "__NCP-Tech__/graphics/fluid/Chlorine.png",
	subgroup = "NCP_fluids",
  },
  {
    type = "recipe",
    name = "Hydrogen_chloride",
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
      {type="fluid", name="Hydrogen_chloride", amount=1},
    },
	icon = "__NCP-Tech__/graphics/fluid/Hydrogen_chloride.png",
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
      {type="fluid", name="Hydrogen_chloride", amount=1},
      {type="fluid", name="Water_distilled", amount=1},
    },
    results =
    {
      {type="fluid", name="Hydrochloric_acid", amount=1},
    },
	icon = "__NCP-Tech__/graphics/fluid/Hydrochloric_acid.png",
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
	icon = "__NCP-Tech__/graphics/fluid/Ferric_chloride_solution.png",
	subgroup = "NCP_fluids",
  },


--brine bool

	{
    type = "recipe",
    name = "Lithium_chloride",
    category = "Distillation",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="fluid", name="Brine", amount=10},
    },
    results =
    {
		{type="item", name="Salt", amount=1, probability = 0.05},
		{type="item", name="Potassium_nitrate", amount=1, probability = 0.03},
		{type="item", name="Lithium_chloride", amount=1, probability = 0.01},
		{type="fluid", name="Water_distilled", amount=6},
    },
	icon = "__NCP-Tech__/graphics/item/Lithium_chloride.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Lithium_chloride_no_water",
    category = "Distillation",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
	  {type="fluid", name="Brine", amount=10},
    },
    results =
    {
    {type="item", name="Salt", amount=1, probability = 0.05},
	{type="item", name="Lithium_chloride", amount=1, probability = 0.01},

    },
	icon = "__NCP-Tech__/graphics/item/Lithium_chloride.png",
	subgroup = "Recourses",
  },


  {
    type = "recipe",
    name = "Lithium_carbonate",
    category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Sodium_carbonate", 1},
      {"Lithium_chloride", 1},
    },
    result = "Lithium_carbonate",
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
      {"Lithium_carbonate", 1},
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

	  {type="item", name="Lithium_chloride", amount=1},
	  {type="item", name="Sodium_perchlorate", amount=1},
    },
    results =
    {
      {type="item", name="Lithium_perchlorate", amount=1},
    },
	icon = "__NCP-Tech__/graphics/item/Lithium_perchlorate.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Sodium_chlorate",
    category = "Electrolyzer",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {

	  {type="fluid", name="Water_distilled", amount=1},
	  {type="item", name="Salt", amount=1},
    },
    results =
    {
      {type="item", name="Sodium_chlorate", amount=1},
      {type="fluid", name="Hydrogen", amount=1},
    },
	icon = "__NCP-Tech__/graphics/item/Sodium_chlorate.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Sodium_perchlorate",
    category = "Electrolyzer",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {

	  {type="fluid", name="Water_distilled", amount=1},
	  {type="item", name="Sodium_chlorate", amount=1},
    },
    results =
    {
      {type="item", name="Sodium_perchlorate", amount=1},
      {type="fluid", name="Hydrogen", amount=1},
    },
	icon = "__NCP-Tech__/graphics/item/Sodium_perchlorate.png",
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
	  {"Graphite_dust", 1},
	  {"Battery_casing", 1},
    },
    result = "Li-ion_battery",
  },
  {
    type = "recipe",
    name = "Magnesium_hydroxide",
    category = "Electrolyzer",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="item", name="Calcium_oxide", amount=1},
	  {type="fluid", name="Water", amount=10},
	  {type="fluid", name="Brine", amount=10},
    },
    results =
    {
      {type="item", name="Magnesium_hydroxide", amount=1, probability = 0.5},
    },
	icon = "__NCP-Tech__/graphics/item/Magnesium_hydroxide.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Magnesium_oxide",
    category = "Furnace",
    energy_required = 6,
    enabled = "true",
    ingredients =
    {
      {type="item", name="Magnesium_hydroxide", amount=1},
    },
    results =
    {
      {type="item", name="Magnesium_oxide", amount=1, probability = 1},
    },
	icon = "__NCP-Tech__/graphics/item/Magnesium_oxide.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Magnesium_billet",
    category = "Electric_furnace",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="item", name="Magnesium_oxide", amount=1},
	  {type="item", name="Ferrosilicon", amount=1},
    },
    results =
    {
      {type="item", name="Magnesium_billet", amount=1, probability = 1},
	  {type="item", name="Pig_iron", amount=1, probability = 1},
	  {type="item", name="Silicon_dioxide", amount=1, probability = 1},
    },
	icon = "__NCP-Tech__/graphics/item/Magnesium_billet.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Ferrosilicon",
    category = "Blast_furnace",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="item", name="Magnetite_concentrate", amount=1},
	  {type="item", name="Silicon_dioxide", amount=1},
	  {type="item", name="Coal_coke", amount=1},
    },
    results =
    {
      {type="item", name="Ferrosilicon", amount=1, probability = 1},
    },
	icon = "__NCP-Tech__/graphics/item/Ferrosilicon.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Ferrosilicon2",
    category = "Electric_arc_furnace",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="item", name="Magnetite_concentrate", amount=1},
	  {type="item", name="Silicon_dioxide", amount=1},
	  {type="item", name="Coal_coke", amount=1},
    },
    results =
    {
      {type="item", name="Ferrosilicon", amount=1, probability = 1},
    },
	icon = "__NCP-Tech__/graphics/item/Ferrosilicon.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Magnesium_chloride",
    category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="item", name="Magnesium_hydroxide", amount=1},
	  {type="fluid", name="Hydrochloric_acid", amount=1},
    },
    results =
    {
      {type="item", name="Magnesium_chloride", amount=1, probability = 1},
	  {type="fluid", name="Water_distilled", amount=1},
    },
	icon = "__NCP-Tech__/graphics/item/Magnesium_chloride.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Magnesium2",
    category = "Electrolyzer",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="item", name="Magnesium_chloride", amount=1},
    },
    results =
    {
      {type="item", name="Magnesium_billet", amount=1, probability = 1},
	  {type="fluid", name="Chlorine", amount=1},
    },
	icon = "__NCP-Tech__/graphics/item/Magnesium_billet.png",
	subgroup = "Recourses",
  },











  --Graphite

  {
    type = "recipe",
    name = "Graphite_crushed_ore",
    category = "Crusher",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="item", name="Graphite_ore", amount=1},
    },
    results =
    {
      {type="item", name="Graphite_crushed_ore", amount=1, probability = 1},
    },
	icon = "__NCP-Tech__/graphics/item/Graphite_crushed_ore.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Graphite_crushed",
    category = "Ore_washing",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="item", name="Graphite_crushed_ore", amount=2},
	  {type="fluid", name="Water", amount=10},
    },
    results =
    {
      {type="item", name="Graphite_crushed", amount=1, probability = 1},
	  {type="item", name="Stone_crushed", amount=1, probability = 1},
    },
	icon = "__NCP-Tech__/graphics/item/Graphite_crushed.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Graphite_dust",
    category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="item", name="Graphite_crushed", amount=5},
	  {type="fluid", name="Water_distilled", amount=10},
    },
    results =
    {
      {type="item", name="Graphite_crushed", amount=4, probability = 1},
	  {type="item", name="Graphite_dust", amount=1, probability = 1},
    },
	icon = "__NCP-Tech__/graphics/item/Graphite_dust.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Graphite_electrode",
    category = "Electric_furnace",
    energy_required = 30,
    enabled = "true",
    ingredients =
    {
      {type="item", name="Graphite_dust", amount=100},
    },
    results =
    {
      {type="item", name="Graphite_electrode", amount=1, probability = 1},

    },
	icon = "__NCP-Tech__/graphics/item/Graphite_electrode.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Graphite_crucible",
    category = "Electric_furnace",
    energy_required = 5,
    enabled = "true",
    ingredients =
    {
      {type="item", name="Graphite_dust", amount=20},
    },
    results =
    {
      {type="item", name="Graphite_crucible", amount=1, probability = 1},

    },
	icon = "__NCP-Tech__/graphics/item/Graphite_crucible.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Graphite_rod",
    category = "Electric_furnace",
    energy_required = 5,
    enabled = "true",
    ingredients =
    {
      {type="item", name="Graphite_dust", amount=20},
    },
    results =
    {
      {type="item", name="Graphite_rod", amount=1, probability = 1},

    },
	icon = "__NCP-Tech__/graphics/item/Graphite_rod.png",
	subgroup = "Recourses",
  },
  --[[{
    type = "recipe",
    name = "Silicon_furnace",
    energy_required = 5,
    enabled = "true",
    ingredients =
    {
      {type="item", name="Electric_furnace", amount=1},
	  {type="item", name="Graphite_crucible", amount=1},
	  {type="item", name="Graphite_rod", amount=2},
    },
    results =
    {
      {type="item", name="Silicon_furnace", amount=1, probability = 1},

    },
	icon = "__NCP-Tech__/graphics/item/Silicon_furnace.png",
	subgroup = "Recourses",
  },


  --Concrete


 {
    type = "recipe",
    name = "Cement",
	category = "Grinding_mill",
    energy_required = 10,
    enabled = "true",
    ingredients =
    {
      {type="item", name="Calcium_sulfate", amount=1},
	  {type="item", name="Cement_clinker", amount=9},
    },
    results =
    {
      {type="item", name="Cement", amount=10, probability = 1},

    },
	icon = "__NCP-Tech__/graphics/item/Cement.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Cement_bauxite",
	category = "Grinding_mill",
    energy_required = 12,
    enabled = "true",
    ingredients =
    {
      {type="item", name="Cement", amount=7},
	  {type="item", name="Bauxite_tailings", amount=3},
    },
    results =
    {
      {type="item", name="Cement_bauxite", amount=10, probability = 1},

    },
	icon = "__NCP-Tech__/graphics/item/Cement_bauxite.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Cement_slag",
	category = "Grinding_mill",
    energy_required = 16,
    enabled = "true",
    ingredients =
    {
      {type="item", name="Cement", amount=1},
	  {type="item", name="Slag", amount=9},
    },
    results =
    {
      {type="item", name="Cement_slag", amount=10, probability = 1},

    },
	icon = "__NCP-Tech__/graphics/item/Cement_slag.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Concrete_block",
	category = "Chemical_plant",
    energy_required = 5,
    enabled = "true",
    ingredients =
    {
      {type="item", name="Cement", amount=3},
	  {type="fluid", name="Water_distilled", amount=2},
	  {type="item", name="Sand", amount=6},
	  {type="item", name="Gravel", amount=12},
    },
    results =
    {
      {type="item", name="Concrete_block", amount=1, probability = 1},

    },
	icon = "__NCP-Tech__/graphics/item/Concrete_block.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Concrete_pipe",
	category = "Chemical_plant",
    energy_required = 5,
    enabled = "true",
    ingredients =
    {
      {type="item", name="Cement", amount=3},
	  {type="fluid", name="Water_distilled", amount=2},
	  {type="item", name="Sand", amount=6},
	  {type="item", name="Gravel", amount=12},
    },
    results =
    {
      {type="item", name="Concrete_pipe", amount=1, probability = 1},

    },
	icon = "__NCP-Tech__/graphics/item/Concrete_pipe.png",
	subgroup = "pipe",
  },
  {
    type = "recipe",
    name = "Concrete_underground_pipe",
    energy_required = 5,
    enabled = "true",
    ingredients =
    {
      {type="item", name="Concrete_pipe", amount=22},

    },
    results =
    {
      {type="item", name="Concrete_underground_pipe", amount=1, probability = 1},

    },
	icon = "__NCP-Tech__/graphics/item/Concrete_underground_pipe.png",
	subgroup = "underground_pipe",
  },
  {
    type = "recipe",
    name = "Concrete_block_2",
	category = "Chemical_plant",
    energy_required = 5,
    enabled = "true",
    ingredients =
    {
      {type="item", name="Cement_bauxite", amount=3},
	  {type="fluid", name="Water_distilled", amount=2},
	  {type="item", name="Sand", amount=6},
	  {type="item", name="Gravel", amount=12},
    },
    results =
    {
      {type="item", name="Concrete_block", amount=1, probability = 1},

    },
	icon = "__NCP-Tech__/graphics/item/Concrete_block.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Concrete_block_3",
	category = "Chemical_plant",
    energy_required = 5,
    enabled = "true",
    ingredients =
    {
      {type="item", name="Cement_slag", amount=3},
	  {type="fluid", name="Water_distilled", amount=2},
	  {type="item", name="Sand", amount=6},
	  {type="item", name="Gravel", amount=12},
    },
    results =
    {
      {type="item", name="Concrete_block", amount=1, probability = 1},

    },
	icon = "__NCP-Tech__/graphics/item/Concrete_block.png",
	subgroup = "Recourses",
  },


    --fiberglass

  {
    type = "recipe",
    name = "Aluminosilicate_glass",
	category = "Furnace",
    energy_required = 12,
    enabled = "true",
    ingredients =
    {
      {type="item", name="Silicon_dioxide", amount=6},
	  {type="item", name="Magnesium_oxide", amount=1},
	  {type="item", name="Alumina", amount=2},
	  {type="item", name="Calcium_carbonate", amount=1},
    },
    results =
    {
      {type="item", name="Aluminosilicate_glass", amount=10, probability = 1},

    },
	icon = "__NCP-Tech__/graphics/item/Aluminosilicate_glass.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Fiberglass_roving",
	category = "Extruder",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="item", name="Aluminosilicate_glass", amount=1},
    },
    results =
    {
      {type="item", name="Fiberglass_roving", amount=1, probability = 1},

    },
	icon = "__NCP-Tech__/graphics/item/Fiberglass_roving.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Fiberglass_cloth",
	category = "Assembling_machine",
    energy_required = 4,
    enabled = "true",
    ingredients =
    {
      {type="item", name="Fiberglass_roving", amount=1},
    },
    results =
    {
      {type="item", name="Fiberglass_cloth", amount=1, probability = 1},

    },
	icon = "__NCP-Tech__/graphics/item/Fiberglass_cloth.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Fiberglass_laminate",
	category = "Assembling_machine",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="item", name="Fiberglass_cloth", amount=1},
	  {type="item", name="Resin", amount=1},
    },
    results =
    {
      {type="item", name="Fiberglass_laminate", amount=1, probability = 1},

    },
	icon = "__NCP-Tech__/graphics/item/Fiberglass_laminate.png",
	subgroup = "Recourses",
  },



  {
    type = "recipe",
    name = "Oxide_glass",
	category = "Furnace",
    energy_required = 15,
    enabled = "true",
    ingredients =
    {
      {type="item", name="Alumina", amount=9},
	  {type="item", name="Germanium_dioxide", amount=1},
    },
    results =
    {
      {type="item", name="Oxide_glass", amount=10, probability = 1},

    },
	icon = "__NCP-Tech__/graphics/item/Oxide_glass.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Glass_tube",
	category = "Extruder",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="item", name="Oxide_glass", amount=1},
    },
    results =
    {
      {type="item", name="Glass_tube", amount=1, probability = 1},

    },
	icon = "__NCP-Tech__/graphics/item/Glass_tube.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Purified_glass_tube",
	category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="item", name="Glass_tube", amount=1},
	  {type="fluid", name="Hydrofluoric_acid", amount=1},
    },
    results =
    {
      {type="item", name="Purified_glass_tube", amount=1, probability = 1},

    },
	icon = "__NCP-Tech__/graphics/item/Purified_glass_tube.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Optical_fiber",
	category = "Assembling_machine",
    energy_required = 20,
    enabled = "true",
    ingredients =
    {
      {type="item", name="Purified_glass_tube", amount=1},
    },
    results =
    {
      {type="item", name="Optical_fiber", amount=1, probability = 1},

    },
	icon = "__NCP-Tech__/graphics/item/Optical_fiber.png",
	subgroup = "Recourses",
  },









  --Limestone

  {
    type = "recipe",
    name = "Limestone_crushed",
	category = "Crusher",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="item", name="Quarried_limestone", amount=1},
    },
    results =
    {
      {type="item", name="Limestone_crushed", amount=1, probability = 1},

    },
	icon = "__NCP-Tech__/graphics/item/Limestone_crushed.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Calcium_carbonate",
	category = "Grinding_mill",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="item", name="Limestone_crushed", amount=1},
    },
    results =
    {
      {type="item", name="Calcium_carbonate", amount=1, probability = 1},

    },
	icon = "__NCP-Tech__/graphics/item/Calcium_carbonate.png",
	subgroup = "Recourses",
  },


  {
    type = "recipe",
    name = "Sodium_carbonate",
	category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="item", name="Calcium_carbonate", amount=1},
	  {type="fluid", name="Water", amount=1},
    },
    results =
    {
      {type="item", name="Sodium_carbonate", amount=1, probability = 1},
	  {type="item", name="Calcium_chloride", amount=1, probability = 1},
    },
	icon = "__NCP-Tech__/graphics/item/Sodium_carbonate.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Glass",
	category = "Furnace",
    energy_required = 8,
    enabled = "true",
    ingredients =
    {
      {type="item", name="Calcium_carbonate", amount=1},
	  {type="item", name="Sodium_carbonate", amount=2},
	  {type="item", name="Silicon_dioxide", amount=7},
    },
    results =
    {
      {type="item", name="Glass", amount=10, probability = 1},

    },
	icon = "__NCP-Tech__/graphics/item/Glass.png",
	subgroup = "Recourses",
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
    energy_required = 3,
    enabled = "true",
    ingredients =
    {
      {"Plastic_pellets", 3},
	  {"Lead_plate", 5},
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
	  {type="fluid", name="Water_distilled", amount=1},
    },
    results =
    {
      {type="item", name="Silver_nitrate", amount=1},
	  {type="fluid", name="Nitrogen_dioxide", amount=1},
	  {type="fluid", name="Water_distilled", amount=1},
    },
	icon = "__NCP-Tech__/graphics/item/Silver_nitrate.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Nitric_acid",
    category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="fluid", name="Water_distilled", amount=1},
	  {type="fluid", name="Nitrogen_dioxide", amount=1},
    },
    results =
    {
	  {type="fluid", name="Nitric_acid", amount=1},
    },
	icon = "__NCP-Tech__/graphics/fluid/Nitric_acid.png",
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
	  {type="fluid", name="Water_distilled", amount=1, probability =0.9},
    },
	icon = "__NCP-Tech__/graphics/item/Silver_oxide.png",
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
    name = "Nichrome",
    category = "Electric_furnace",
    energy_required = 10,
    enabled = "true",
    ingredients =
    {
      {type="item", name="Ferrochrome", amount=3},
      {type="item", name="Nickel_billet", amount=2},
    },
    results =
    {
	  {type="item", name="Nichrome", amount=5},

    },
	icon = "__NCP-Tech__/graphics/item/Nichrome.png",
	subgroup = "Recourses",
  },

  {
    type = "recipe",
    name = "Brass_billet",
    category = "Furnace",
    energy_required = 10,
    enabled = "true",
    ingredients =
    {
      {"Copper_billet", 7},
	  {"Zinc_billet", 3},
    },
    results =
    {
	  {type="item", name="Brass_billet", amount=10},

    },
	icon = "__NCP-Tech__/graphics/item/Brass_billet.png",
	subgroup = "Recourses",
  },

  ------------------------

  {
    type = "recipe",
    name = "Lead_solder_ingot",
    category = "Furnace",
    energy_required = 6,
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
	icon = "__NCP-Tech__/graphics/item/Lead_solder_ingot.png",
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
    category = "Furnace",
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
	icon = "__NCP-Tech__/graphics/item/Lead_free_solder_ingot.png",
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
	icon = "__NCP-Tech__/graphics/item/Lead_free_solder.png",
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
	icon = "__NCP-Tech__/graphics/item/Solder_paste.png",
	subgroup = "Recourses",
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
      {"raw-wood", 1},
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
      {"Potassium_nitrate", 1},
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
    name = "Uraninite_ore_concentrate",
    category = "Grinding_mill",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Uraninite_crushed_ore", 2},

    },
    results =
    {
      {type="item", name="Uraninite_ore_concentrate", amount=1},

    },
	icon = "__NCP-Tech__/graphics/item/Uraninite_ore_concentrate.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Yellowcake",
    category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Uraninite_ore_concentrate", 1},
	  {type="fluid", name="Ferric_chloride_solution", amount=1}
    },
    results =
    {
      {type="item", name="Yellowcake", amount=1},
	  {type="item", name="Sand", amount=1}
    },
	icon = "__NCP-Tech__/graphics/item/Yellowcake.png",
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
      {"Yellowcake", 1},
      {type="fluid", name="Nitric_acid", amount=1}
    },
    results =
    {
      {type="fluid", name="Uranyl_nitrate", amount=1},
    },
	icon = "__NCP-Tech__/graphics/fluid/Uranyl_nitrate.png",
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
	icon = "__NCP-Tech__/graphics/fluid/ADU.png",
	subgroup = "NCP_fluids",
  },
  {
    type = "recipe",
    name = "Uranium_dioxide",
    category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="fluid", name="ADU", amount=1},
      {type="fluid", name="Hydrogen", amount=1}
    },
    results =
    {
      {type="item", name="Uranium_dioxide", amount=1},
    },
	icon = "__NCP-Tech__/graphics/item/Uranium_dioxide.png",
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
      {type="item", name="Uranium_dioxide", amount=1},
      {type="fluid", name="Hydrofluoric_acid", amount=4},
    },
    results =
    {
      {type="item", name="Uranium_tetrafluoride", amount=1},
    },
	icon = "__NCP-Tech__/graphics/item/Uranium_tetrafluoride.png",
	subgroup = "NCP_fluids",
  },
  {
    type = "recipe",
    name = "Uranium_hexafluoride",
    category = "Electrolyzer",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="item", name="Uranium_tetrafluoride", amount=1},
      {type="fluid", name="Hydrofluoric_acid", amount=2},
    },
    results =
    {
      {type="fluid", name="Uranium_hexafluoride", amount=1},
    },
	icon = "__NCP-Tech__/graphics/fluid/Uranium_hexafluoride.png",
	subgroup = "NCP_fluids",
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
    name = "Copper_concentrate",
    category = "Ore_washing",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Chalcopyrite_crushed_ore", 2},
      {type="fluid", name="Water", amount=10}
    },
    results =
    {
      {type="item", name="Copper_concentrate", amount=1},
      {type="item", name="Stone_crushed", amount=1}
    },
	icon = "__NCP-Tech__/graphics/item/Copper_concentrate.png",
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
      {"Copper_concentrate", 1},
      {type="fluid", name="Oxygen", amount=1},
    },
    results =
    {
      {type="item", name="Copper_blister", amount=1},
      {type="item", name="Slag", amount=1},
      {type="fluid", name="Sulfur_dioxide", amount=1},
    },
	icon = "__NCP-Tech__/graphics/item/Copper_blister.png",
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
      {"Copper_concentrate", 1},
      {type="fluid", name="Oxygen", amount=1},
    },
    results =
    {
      {type="item", name="Copper_blister", amount=1},
      {type="item", name="Slag", amount=1},
      {type="fluid", name="Sulfur_dioxide", amount=1},
    },
	icon = "__NCP-Tech__/graphics/item/Copper_blister.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Copper_anode",
    category = "Chemical_furnace",
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
	icon = "__NCP-Tech__/graphics/item/Copper_anode.png",
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
	icon = "__NCP-Tech__/graphics/item/Copper_billet.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Gold_concentrate",
    category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="fluid", name="Anode_slime", amount=5},
      {type="fluid", name="Chlorine", amount=2},
	  {type="fluid", name="Hydrochloric_acid", amount=1},
    },
    results =
    {
      {type="item", name="Gold_concentrate", amount=1, probability =0.02},

    },
	icon = "__NCP-Tech__/graphics/item/Gold_concentrate.png",
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
      {type="fluid", name="Water", amount=10}
    },
    results =
    {
      {type="item", name="Nickel_concentrate", amount=1},
      {type="item", name="Stone_crushed", amount=1}
    },
	icon = "__NCP-Tech__/graphics/item/Nickel_concentrate.png",
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
      {type="fluid", name="Oxygen", amount=1},
    },
    results =
    {
      {type="item", name="Nickel_dust", amount=1},
      {type="item", name="Slag", amount=1},
      {type="fluid", name="Sulfur_dioxide", amount=1},
    },
	icon = "__NCP-Tech__/graphics/item/Nickel_dust.png",
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
      {type="item", name="Cobalt_oxide", amount=1, probability =0.04},
    },
	icon = "__NCP-Tech__/graphics/item/Nickel_cathode.png",
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
      {"Nickel_cathode", 1},
      {type="fluid", name="Hydrogen", amount=1},
    },
    results =
    {
      {type="item", name="Nickel_billet", amount=1},
    },
	icon = "__NCP-Tech__/graphics/item/Nickel_billet.png",
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
      {type="fluid", name="Water", amount=10}
    },
    results =
    {
      {type="item", name="Zinc_concentrate", amount=1},
      {type="item", name="Stone_crushed", amount=1}
    },
	icon = "__NCP-Tech__/graphics/item/Zinc_concentrate.png",
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
      {type="fluid", name="Oxygen", amount=1},
    },
    results =
    {
      {type="item", name="Zinc_matte", amount=1},
      {type="item", name="Slag", amount=1},
      {type="fluid", name="Sulfur_dioxide", amount=1},
      {type="item", name="Germanium_concentrate", amount=1, probability = 0.004},
    },
	icon = "__NCP-Tech__/graphics/item/Zinc_matte.png",
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
      {type="fluid", name="Anode_slime", amount=1},
    },
	icon = "__NCP-Tech__/graphics/item/Zinc_billet.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Germanium_tetrachloride",
    category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="item", name="Germanium_concentrate", amount=1},
	  {type="fluid", name="Chlorine", amount=1},
    },
    results =
    {
      {type="fluid", name="Germanium_tetrachloride", amount=1, probability = 1},
      {type="fluid", name="Oxygen", amount=1, probability = 1},
    },
	icon = "__NCP-Tech__/graphics/fluid/Germanium_tetrachloride.png",
	subgroup = "NCP_fluids",
  },
  {
    type = "recipe",
    name = "Germanium_dioxide",
    category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
	  {type="fluid", name="Water_distilled", amount=1},
	  {type="fluid", name="Germanium_tetrachloride", amount=1},
    },
    results =
    {
      {type="item", name="Germanium_dioxide", amount=1, probability = 1},
      {type="fluid", name="Hydrogen", amount=1, probability = 1},
    },
	icon = "__NCP-Tech__/graphics/item/Germanium_dioxide.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Germanium",
    category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
	  {type="fluid", name="Hydrogen", amount=1},
	  {type="item", name="Germanium_dioxide", amount=1},
    },
    results =
    {
      {type="item", name="Germanium", amount=1, probability = 1},
      {type="fluid", name="Water_distilled", amount=1, probability = 1},
    },
	icon = "__NCP-Tech__/graphics/item/Germanium.png",
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
      {type="fluid", name="Water_distilled", amount=1}
    },
    results =
    {
      {type="fluid", name="Sodium_tugstate_solution", amount=1},
      {type="item", name="Stone_crushed", amount=1}
    },
	icon = "__NCP-Tech__/graphics/fluid/Sodium_tugstate_solution.png",
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
	icon = "__NCP-Tech__/graphics/item/Ammonium_Paratungstate.png",
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
    name = "Tungsten_carbide_billet",
    category = "Electric_furnace",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {"Tungsten_powder", 1},
	  {"Carbon_dust", 1},
    },
    result = "Tungsten_carbide_billet",
  },





  --native copper
  {
    type = "recipe",
    name = "Copper_billet",
    category = "Furnace",
    energy_required = 4,
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
	icon = "__NCP-Tech__/graphics/fluid/Ammonia.png",
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
	icon = "__NCP-Tech__/graphics/fluid/Nitric_acid.png",
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
	icon = "__NCP-Tech__/graphics/fluid/Sulfur_dioxide.png",
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
      {type="fluid", name="Water_distilled", amount=1},
    },
    results =
    {
      {type="fluid", name="Sulfuric_acid", amount=1},

    },
	icon = "__NCP-Tech__/graphics/fluid/Sulfuric_acid.png",
	subgroup = "NCP_fluids",
  },
  {
    type = "recipe",
    name = "Sulfur_trioxide",
    category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="fluid", name="Sulfur_dioxide", amount=1},
      {type="fluid", name="Oxygen", amount=1},
    },
    results =
    {
      {type="fluid", name="Sulfur_trioxide", amount=1},

    },
	icon = "__NCP-Tech__/graphics/fluid/Sulfur_trioxide.png",
	subgroup = "NCP_fluids",
  },
  {
    type = "recipe",
    name = "Oleum",
    category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="fluid", name="Sulfur_trioxide", amount=1},
      {type="fluid", name="Sulfuric_acid", amount=1},
    },
    results =
    {
      {type="fluid", name="Oleum", amount=1},

    },
	icon = "__NCP-Tech__/graphics/fluid/Oleum.png",
	subgroup = "NCP_fluids",
  },



  {
    type = "recipe",
    name = "Cotton_farm",
    category = "Farm",
    energy_required = 120,
    enabled = "true",
    ingredients =
    {
      {type="item", name="Fertilizer", amount=4},
	  {type="item", name="Cotton_seed", amount=9},
      {type="fluid", name="Water", amount=600},
    },
    results =
    {
      {type="item", name="Cotton", amount_min=1, amount_max= 30},
      {type="item", name="Cotton_seed", amount_min=0, amount_max= 17, probability= 0.8},
    },
	icon = "__NCP-Tech__/graphics/item/Cotton.png",
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
	icon = "__NCP-Tech__/graphics/item/Guncotton.png",
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
	icon = "__NCP-Tech__/graphics/item/Cordite.png",
	subgroup = "Recourses",
  },



  --napalm

  {
    type = "recipe",
    name = "Ethylbenzene",
	category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="fluid", name="Ethylene", amount=1},
	  {type="fluid", name="Benzene", amount=1},
    },
    results =
    {
      {type="fluid", name="Ethylbenzene", amount=1, probability = 1},

    },
	icon = "__NCP-Tech__/graphics/fluid/Ethylbenzene.png",
	subgroup = "NCP_fluids",
  },
  {
    type = "recipe",
    name = "Styrene",
	category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="fluid", name="Ethylbenzene", amount=1},
    },
    results =
    {
		{type="fluid", name="Styrene", amount=1, probability = 1},
		{type="fluid", name="Hydrogen", amount=1, probability = 1},
    },
	icon = "__NCP-Tech__/graphics/fluid/Styrene.png",
	subgroup = "NCP_fluids",
  },
  {
    type = "recipe",
    name = "Styrofoam",
	category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="fluid", name="Styrene", amount=1},
    },
    results =
    {
		{type="item", name="Styrofoam", amount=1, probability = 1},
    },
	icon = "__NCP-Tech__/graphics/item/Styrofoam.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Napalm",
	category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="item", name="Styrofoam", amount=1},
	  {type="fluid", name="Diesel", amount=1},
    },
    results =
    {
		{type="fluid", name="Napalm", amount=1, probability = 1},
    },
	icon = "__NCP-Tech__/graphics/fluid/Napalm.png",
	subgroup = "NCP_fluids",
  },




  --steel



  {
    type = "recipe",
    name = "Steel_billet",
    category = "Electric_arc_furnace",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="item", name="Direct_reduced_iron", amount=1},
    },
    results =
    {
	{type="item", name="Steel_billet", amount=1, probability = 1},
	{type="item", name="Slag", amount=1, probability = 1},
    },
	icon = "__NCP-Tech__/graphics/item/Steel_billet.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Steel_billet_2",
	category = "Blast_furnace",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="item", name="Pig_iron", amount=1},
	  {type="fluid", name="Oxygen", amount=100},
    },
    results =
    {
		{type="item", name="Steel_billet", amount=1, probability = 1},
    },
	icon = "__NCP-Tech__/graphics/item/Steel_billet.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Stainless_steel_mix_hot",
	category = "Electric_arc_furnace",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
      {type="item", name="Nickel_billet", amount=1},
	  {type="item", name="Ferrochrome", amount=1},
	  {type="item", name="Steel_billet", amount=1},
    },
    results =
    {
		{type="fluid", name="Stainless_steel_mix_hot", amount=1, probability = 1},
    },
	icon = "__NCP-Tech__/graphics/fluid/Stainless_steel_mix_hot.png",
	subgroup = "NCP_fluids",
  },
  {
    type = "recipe",
    name = "Stainless_steel_billet",
	category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
	  {type="fluid", name="Oxygen", amount=1},
	  {type="fluid", name="Stainless_steel_mix_hot", amount=1},
    },
    results =
    {
		{type="item", name="Stainless_steel_billet", amount=1, probability = 1},
    },
	icon = "__NCP-Tech__/graphics/item/Stainless_steel_billet.png",
	subgroup = "Recourses",
  },

  ------carbon fiber fabric
  {
    type = "recipe",
    name = "Acrylonitrile",
    category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
	  {type="fluid", name="Petroleum_gas", amount=1},
	  {type="fluid", name="Ammonia", amount=1},
	  {type="fluid", name="Oxygen", amount=1},
    },
    results =
    {
		{type="fluid", name="Acrylonitrile", amount=1, probability = 1},
		{type="fluid", name="Water_distilled", amount=1, probability = 1},
    },
	icon = "__NCP-Tech__/graphics/fluid/Acrylonitrile.png",
	subgroup = "NCP_fluids",
  },
  {
    type = "recipe",
    name = "Plastic_pellets2",
	category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
	  {type="fluid", name="Acrylonitrile", amount=1},
	  {type="fluid", name="Styrene", amount=1},
	  {type="fluid", name="Butadiene", amount=1},
    },
    results =
    {
		{type="item", name="Plastic_pellets", amount=1, probability = 1},
    },
	icon = "__NCP-Tech__/graphics/item/Plastic_pellets.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Plastic_pellets2",
	category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
	  {type="fluid", name="Acrylonitrile", amount=1},
	  {type="fluid", name="Styrene", amount=1},
	  {type="fluid", name="Butadiene", amount=1},
    },
    results =
    {
		{type="item", name="Plastic_pellets", amount=1, probability = 1},
    },
	icon = "__NCP-Tech__/graphics/item/Plastic_pellets.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "PAN_filament",
	category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
	  {type="fluid", name="Acrylonitrile", amount=1},
    },
    results =
    {
		{type="item", name="PAN_filament", amount=1, probability = 1},
    },
	icon = "__NCP-Tech__/graphics/item/PAN_filament.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Carbon_fiber_filament",
	category = "Electric_arc_furnace",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
	  {type="item", name="PAN_filament", amount=1},
    },
    results =
    {
		{type="item", name="Carbon_fiber_filament", amount=1, probability = 1},
    },
	icon = "__NCP-Tech__/graphics/item/Carbon_fiber_filament.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "Carbon_fiber_fabric",
	category = "Assembling_machine",
    energy_required = 5,
    enabled = "true",
    ingredients =
    {
	  {type="item", name="Carbon_fiber_filament", amount=1},
	  {type="item", name="Resin", amount=1},
    },
    results =
    {
		{type="item", name="Carbon_fiber_fabric", amount=1, probability = 1},
    },
	icon = "__NCP-Tech__/graphics/item/Carbon_fiber_fabric.png",
	subgroup = "Recourses",
  },
  --TNT

  {
    type = "recipe",
    name = "MNT",
	category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
	  {type="fluid", name="Nitric_sulfuric_acid_mixture", amount=1},
	  {type="fluid", name="Toluene", amount=1},
    },
    results =
    {
		{type="fluid", name="MNT", amount=1, probability = 1},
    },
	icon = "__NCP-Tech__/graphics/fluid/MNT.png",
	subgroup = "NCP_fluids",
  },
  {
    type = "recipe",
    name = "DNT",
	category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
	  {type="fluid", name="MNT", amount=1},
	  {type="fluid", name="Nitric_acid", amount=1},
    },
    results =
    {
		{type="item", name="DNT", amount=1, probability = 1},
    },
	icon = "__NCP-Tech__/graphics/item/DNT.png",
	subgroup = "Recourses",
  },
  {
    type = "recipe",
    name = "TNT",
	category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
	  {type="item", name="DNT", amount=1},
	  {type="fluid", name="Nitric_acid", amount=1},
	  {type="fluid", name="Oleum", amount=1},
    },
    results =
    {
		{type="item", name="TNT", amount=1, probability = 1},
    },
	icon = "__NCP-Tech__/graphics/item/TNT.png",
	subgroup = "Recourses",
  },




  {
    type = "recipe",
    name = "Seed_oil",
	category = "Compressor",
    energy_required = 5,
    enabled = "true",
    ingredients =
    {
	  {type="item", name="Cotton_seed", amount=3},
    },
    results =
    {
		{type="fluid", name="Seed_oil", amount=1, probability = 1},
    },
	icon = "__NCP-Tech__/graphics/fluid/Seed_oil.png",
	subgroup = "NCP_fluids",
  },

  {
    type = "recipe",
    name = "Glycerol",
	category = "Chemical_plant",
    energy_required = 2,
    enabled = "true",
    ingredients =
    {
	  {type="fluid", name="Seed_oil", amount=1},
	  {type="fluid", name="Water_distilled", amount=1},
	  {type="item", name="Sodium_hydroxide", amount=1},
    },
    results =
    {
		{type="fluid", name="Glycerol", amount=1, probability = 1},
    },
	icon = "__NCP-Tech__/graphics/fluid/Glycerol.png",
	subgroup = "NCP_fluids",
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
  {
    type = "recipe",
    name = "stonetest",
    energy_required = 0.2,
    enabled = "true",
    ingredients =
    {
      {"Quarried_stone", 1},
    },
    result = "stone",
  },
  {
    type = "recipe",
    name = "tooltest",
    energy_required = 0.2,
    enabled = "true",
    ingredients =
    {
      {type="item",name="testTool", amount=1, probability = 0.1},
    },
    result = "stone",
  },
  {
    type = "recipe",
    name = "tooltest3",
    energy_required = 0.2,
    enabled = "true",
    ingredients =
    {
      {type="item", name="stone", amount=1, probability = 0.1},
    },
    result = "stone",
  },
  {
    type = "recipe",
    name = "tooltest2",
    energy_required = 0.2,
    enabled = "true",
    ingredients =
    {
      {"stone", 1},
    },
    result = "testTool",
  },
  {
    type = "tool",
    name = "testTool",
    icon = "__base__/graphics/icons/science-pack-1.png",
    icon_size=32,
    
    subgroup = "science-pack",
    order = "a[science-pack-1]",
    stack_size = 200,
    durability = 10,

  },

  --]]


  --CHEATS



  {
    type = "recipe",
    name = "copper_cheat",
    energy_required = 0.1,
    enabled = "true",
    ingredients =
    {
      {"Quarried_stone", 1},
    },
	results =
    {
      {type="item", name="copper-plate", amount=50},

    },
  },
  {
    type = "recipe",
    name = "iron_cheat",
    energy_required = 0.1,
    enabled = "true",
    ingredients =
    {
      {"Quarried_stone", 1},
    },
	results =
    {
      {type="item", name="iron-plate", amount=50},

    },
  },
  {
    type = "recipe",
    name = "steelcheat",
    energy_required = 0.1,
    enabled = "true",
    ingredients =
    {
      {"Quarried_stone", 1},
    },
	results =
    {
      {type="item", name="steel-plate", amount=5},

    },
  },

  {
    type = "recipe",
    name = "CheatFuelrecipe",
    energy_required = 0.1,
    enabled = "true",
    ingredients =
    {
      {"Quarried_stone", 1},
    },
	results =
    {
      {type="item", name="aaaaaaCheatFuel", amount=50},

    },
  },
  {
    type = "recipe",
    name = "steelcheat",
    energy_required = 0.1,
    enabled = "true",
    ingredients =
    {
      {"Quarried_stone", 1},
    },
	results =
    {
      {type="item", name="Quarried_stone", amount=50},

    },
  },

  {
    type = "recipe",
    name = "linja",
    energy_required = 0.1,
    enabled = "true",
    ingredients =
    {
      {"Quarried_stone", 1},
    },
	results =
    {
      {type="item", name="express-transport-belt", amount=50},

    },
  },
  {
    type = "recipe",
    name = "smains",
    energy_required = 0.1,
    enabled = "true",
    ingredients =
    {
      {"Quarried_stone", 1},
    },
	results =
    {
      {type="item", name="fast-inserter", amount=50},

    },
  },
  {
    type = "recipe",
    name = "nopins",
    energy_required = 0.1,
    enabled = "true",
    ingredients =
    {
      {"Quarried_stone", 1},
    },
	results =
    {
      {type="item", name="stack-inserter", amount=50},

    },
  },
 --[[ {
    type = "recipe",
    name = "op_gen",
    energy_required = 0.1,
    enabled = "true",
    ingredients =
    {
      {"Quarried_stone", 1},
    },
	results =
    {
      {type="item", name="OP_generator", amount=50},

    },
  },
  --]]


  {
    type = "recipe",
    name = "expundbelt",
    energy_required = 0.1,
    enabled = "true",
    ingredients =
    {
      {"Quarried_stone", 1},
    },
	results =
    {
      {type="item", name="express-underground-belt", amount=50},

    },
  },
  {
    type = "recipe",
    name = "normpipe",
    energy_required = 0.1,
    enabled = "true",
    ingredients =
    {
      {"Quarried_stone", 1},
    },
	results =
    {
      {type="item", name="pipe", amount=50},

    },
  },
  {
    type = "recipe",
    name = "pipeund",
    energy_required = 0.1,
    enabled = "true",
    ingredients =
    {
      {"Quarried_stone", 1},
    },
	results =
    {
      {type="item", name="pipe-to-ground", amount=50},

    },
  },
  {
    type = "recipe",
    name = "medipole",
    energy_required = 0.1,
    enabled = "true",
    ingredients =
    {
      {"Quarried_stone", 1},
    },
	results =
    {
      {type="item", name="medium-electric-pole", amount=50},

    },
  },
  {
    type = "recipe",
    name = "akku",
    energy_required = 0.1,
    enabled = "true",
    ingredients =
    {
      {"Quarried_stone", 1},
    },
	results =
    {
      {type="item", name="accumulator", amount=50},

    },
  },
  {
    type = "recipe",
    name = "alkuu",
    energy_required = 0.1,
    enabled = "true",
    ingredients =
    {
      {"stone", 1},
    },
	results =
    {
      {type="item", name="Quarried_stone", amount=50},

    },
  },





}
)
