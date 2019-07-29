data.raw["resource"]["iron-ore"] = nil
data.raw["resource"]["copper-ore"] = nil




data.raw.resource["coal"].minable = (
	{
      hardness = 0.9,
      mining_particle = "stone-particle",
      mining_time = 2,
      results =
      {
         {type="item", name="coal", amount=1 ,probability = 1},
         {type="item", name="Diamond_uncut", amount=1, probability = 0.0001},
      },
    }

)

data.raw.resource["stone"].autoplace = (
  {
    control = "stone",
    sharpness = 1,
    richness_multiplier = 1500,
    richness_base = 500,
	richness_multiplier_distance_bonus = 20,
    size_control_multiplier = 0.06,
	coverage = 0.02,
	starting_area_amount = 1500,
    peaks =
    {
      {
        noise_layer = "stone",
        noise_octaves_difference = -1.5,
		noise_persistence = 0.3,
      },

    }
  }
)


data.raw.resource["stone"].minable = (
	{
      hardness = 0.9,
      mining_particle = "stone-particle",
      mining_time = 2,
      results =
      {
         {type="item", name="Quarried_stone", amount=1 ,probability = 0.60},
		 {type="item", name="Limestone_Quarried", amount=1, probability = 0.60},
		 {type="item", name="Quartz_rock", amount=1, probability = 0.10},
      },
    }

)

data.raw.resource["crude-oil"].minable = (
    {
      hardness = 1,
      mining_time = 1,
      results =
      {
        {
          type = "fluid",
          name = "Crude_oil",
          amount_min = 1,
          amount_max = 1,
          probability = 1
        }
      }
    }

)


function makeore (a)
	local name=a.name
	local icon=a.icon or "__NCP-Tech__/graphics/item/"..name..".png"
	local results=a.results
	local map_color = a.map_color or {r=math.random(), g=math.random(), b=math.random()}
local spawnarea=200
if (name=="Copper_native_ore") then
	spawnarea=1500
end

data:extend(
{
 {
    type = "resource",
    name = name,
    icon = icon,
	icon_size = 32,
    flags = {"placeable-neutral"},
    order="a-b-a",
    minable =
    {
      hardness = 0.9,
      mining_particle = "copper-ore-particle",
      mining_time = 2,
      results=results,
	  --fluid_amount = 10,
      --required_fluid = "water"
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace =
    {
      control = name,
      sharpness = 1,
      richness_multiplier = 13000,
      richness_base = 350,
	  richness_multiplier_distance_bonus = 100,
      size_control_multiplier = 0.1,
	  coverage = 0.03,
	  starting_area_amount = spawnarea,
	  random_probability_penalty=0,
	  --max_probability = 0.035,
      peaks = {
		{
			influence = 0.2,
			starting_area_weight_optimal = 0,
			starting_area_weight_range = 0,
			starting_area_weight_max_range = 2,
		},
        {
			influence = 0.7,
			noise_layer = name,
			--noise_octaves_difference = -0.23,
			--noise_persistence = 0.6,
			noise_octaves_difference = -0.75,
			noise_persistence = 0.5,
			starting_area_weight_optimal = 0,
			starting_area_weight_range = 0,
			starting_area_weight_max_range = 2,
        },
      },
    },
    stage_counts = {15000, 9500, 5500, 2900, 1300, 400, 150, 80},
    stages =
    {
      sheet =
      {
        filename = "__NCP-Tech__/graphics/entity/Ores/hr_"..name..".png",
        priority = "extra-high",
          size = 128,
          frame_count = 8,
          variation_count = 8,
          scale = 0.5
      }
    },
    map_color = map_color
  }
  })

if name=="Clay_ore" then
data.raw.resource[name].icon="__NCP-Tech__/graphics/item/Clay_wet.png"
end


end


makeore {name="Graphite_ore",map_color={r=0.25, g=0.25, b=0.25},
	results={		{type="item", name="Graphite_ore", amount=1, probability = 1},
									{type="item", name="Diamond_uncut", amount=1, probability = 0.001},
									}}

--makeore ("Clay_ore",{			{type="item", name="Clay_wet", amount=1, probability = 1}})
makeore{ name="Copper_native_ore",map_color={r=0.921, g=0.619, b=0.298},
results={	{type="item", name="Copper_native_ore", amount=1, probability = 1}
}}
makeore{ name="Scheelite_ore",map_color={r=0.866, g=0.690, b=0.333},
results={		{type="item", name="Scheelite_ore", amount=1, probability = 1}
}}
makeore{ name="Chalcopyrite_ore",map_color={r=0.650, g=0.682, b=0.380},
results={	{type="item", name="Chalcopyrite_ore", amount=1, probability = 1},
								{type="item", name="Pentlandite_ore", amount=1, probability = 0.25},
								{type="item", name="Sulfur", amount=1, probability = 0.10}
								}}
makeore{ name="Uranite_ore",map_color={r=0.164, g=0.600, b=0.019},
results={		{type="item", name="Uraninite_ore", amount=1, probability = 1}
}}
makeore{ name="Fluorite_ore",map_color={r=0.396, g=0.117, b=0.462},
results={		{type="item", name="Fluorite_ore", amount=1, probability = 1}
}}
makeore{ name="Cassiterite_ore",map_color={r=0.560, g=0.560, b=0.560},
results={	{type="item", name="Cassiterite_ore", amount=1, probability = 1}
}}
makeore{name="Galena_ore",map_color={r=0.658, g=0.666, b=0.701},
results={			{type="item", name="Galena_ore", amount=1, probability = 1},
								{type="item", name="Sphalerite_ore", amount=1, probability = 0.25},
								{type="item", name="Sulfur", amount=1, probability = 0.10}
}}
makeore{name="Rutile_ore",map_color={r=0.384, g=0.305, b=0.450},
results={			{type="item", name="Rutile_ore", amount=1, probability = 1}
}}
makeore{name="Magnetite_ore",map_color={r=0.286, g=0.372, b=0.731},
results={		{type="item", name="Magnetite_ore", amount=1, probability = 1},
								{type="item", name="Chromite_ore", amount=1, probability = 0.10}
}}
makeore{name="Bauxite_ore",map_color={r=0.741, g=0.596, b=0.725},
results={{type="item", name="Bauxite_ore", amount=1, probability = 1}
}}




--]]




data:extend(
{
  {
    type = "resource",
    name = "Brine_pool",
    icon = "__NCP-Tech__/graphics/fluid/Brine.png",
	icon_size = 32,
    flags = {"placeable-neutral"},
    category = "basic-fluid",
    order="a-b-a",
    infinite = true,
    minimum = 1500,
    normal = 15000,
    minable =
    {
      hardness = 1,
      mining_time = 1,
      results =
      {
        {
          type = "fluid",
          name = "Brine",
          amount_min = 1,
          amount_max = 1,
          probability = 1,
        }
      }
    },
    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace =
    {
      control = "Brine_pool",
      sharpness = 0.99,
      max_probability = 0.035,
      richness_base = 6000,
      richness_multiplier = 30000,
      richness_multiplier_distance_bonus = 10,
      coverage = 0.02, -- Cover on average 2% of surface area.
      peaks =
      {
        {
          noise_layer = "Brine_pool",
          noise_octaves_difference = -1,
          noise_persistence = 0.4,
        }
      }
    },
    stage_counts = {0},
    stages =
    {
      sheet =
      {
        filename = "__NCP-Tech__/graphics/entity/Ores/Brine_ore.png",
        priority = "extra-high",
        width = 75,
        height = 61,
        frame_count = 4,
        variation_count = 1
      }
    },
    map_color = {r=0.3, g=0.3, b=1},
    map_grid = false
  }
})










--[[
data:extend(
{

  {
    type = "resource",
    name = "Graphite_ore",
    icon = "__NCP-Tech__/graphics/item/Graphite_ore.png",
    flags = {"placeable-neutral"},
    order="a-b-a",
    minable =
    {
      hardness = 0.9,
      mining_particle = "copper-ore-particle",
      mining_time = 2,
      results =
      {
         {type="item", name="Graphite_ore", amount=1, probability = 1},
         {type="item", name="Diamond_uncut", amount=1, probability = 0.001},
      },
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace =
    {
      control = "Graphite_ore",
      sharpness = 1,
      richness_multiplier = 1500,
      richness_base = 500,
	  richness_multiplier_distance_bonus = 20,
      size_control_multiplier = 0.06,
	  coverage = 0.02,
	  starting_area_amount = 1500,

      peaks = {

        {
			noise_layer = "Graphite_ore",
			noise_octaves_difference = -1.5,
			noise_persistence = 0.3,
        },
      },
    },
    stage_counts = {1000, 600, 400, 200, 100, 50, 20, 1},
    stages =
    {
      sheet =
      {
        filename = "__NCP-Tech__/graphics/entity/Ores/Graphite.png",
        priority = "extra-high",
        width = 38,
        height = 38,
        frame_count = 4,
        variation_count = 8
      }
    },
    map_color = {r=0.803, g=0.388, b=0.215}
  },
  {
    type = "resource",
    name = "Clay_ore",
    icon = "__NCP-Tech__/graphics/item/Clay_wet.png",
    flags = {"placeable-neutral"},
    order="a-b-a",
    minable =
    {
      hardness = 0.9,
      mining_particle = "copper-ore-particle",
      mining_time = 2,
      result = "Clay_wet"
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace =
    {
      control = "Clay_ore",
      sharpness = 1,
      richness_multiplier = 15000,
      richness_base = 400,
      size_control_multiplier = 0.06,
      peaks = {
        {
          influence = 0.2,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.65,

          noise_octaves_difference = -1.9,
		  noise_layer = "Clay_ore",
          noise_persistence = 0.3,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
      },
    },
    stage_counts = {1000, 600, 400, 200, 100, 50, 20, 1},
    stages =
    {
      sheet =
      {
        filename = "__NCP-Tech__/graphics/entity/Ores/Clay.png",
        priority = "extra-high",
        width = 38,
        height = 38,
        frame_count = 4,
        variation_count = 8
      }
    },
    map_color = {r=0.803, g=0.388, b=0.215}
  },


  {
    type = "resource",
    name = "Bauxite_ore",
    icon = "__NCP-Tech__/graphics/item/Bauxite_ore.png",
    flags = {"placeable-neutral"},
    order="a-b-a",
    minable =
    {
      hardness = 0.9,
      mining_particle = "copper-ore-particle",
      mining_time = 2,
      result = "Bauxite_ore"
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace =
    {
      control = "Bauxite_ore",
      sharpness = 1,
      richness_multiplier = 13000,
      richness_base = 350,
      size_control_multiplier = 0.06,
      peaks = {
        {
          influence = 0.2,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.65,

          noise_octaves_difference = -1.9,
		  noise_layer = "Bauxite_ore",
          noise_persistence = 0.3,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
      },
    },
    stage_counts = {1000, 600, 400, 200, 100, 50, 20, 1},
    stages =
    {
      sheet =
      {
        filename = "__NCP-Tech__/graphics/entity/Ores/bauxite.png",
        priority = "extra-high",
        width = 38,
        height = 38,
        frame_count = 4,
        variation_count = 8
      }
    },
    map_color = {r=0.803, g=0.388, b=0.215}
  },
  {
    type = "resource",
    name = "Copper_native_ore",
    icon = "__NCP-Tech__/graphics/item/Copper_native_ore.png",
    flags = {"placeable-neutral"},
    order="a-b-a",
    minable =
    {
      hardness = 0.9,
      mining_particle = "copper-ore-particle",
      mining_time = 2,
      result = "Copper_native_ore"
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace =
    {
      control = "Copper_native_ore",
      sharpness = 1,
      richness_multiplier = 13000,
      richness_base = 100,
      size_control_multiplier = 0.01,
      peaks = {
        {
          influence = 0.1,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.65,

          noise_octaves_difference = -1.9,
		  noise_layer = "Copper_native_ore",
          noise_persistence = 0.8,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
      },
    },
    stage_counts = {1000, 600, 400, 200, 100, 50, 20, 1},
    stages =
    {
      sheet =
      {
        filename = "__NCP-Tech__/graphics/entity/Ores/Copper_native.png",
        priority = "extra-high",
        width = 38,
        height = 38,
        frame_count = 4,
        variation_count = 8
      }
    },
    map_color = {r=0.803, g=0.388, b=0.215}
  },
  {
    type = "resource",
    name = "Scheelite_ore",
    icon = "__NCP-Tech__/graphics/item/Scheelite_ore.png",
    flags = {"placeable-neutral"},
    order="a-b-a",
    minable =
    {
      hardness = 0.9,
      mining_particle = "copper-ore-particle",
      mining_time = 2,
      result = "Scheelite_ore"
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace =
    {
      control = "Scheelite_ore",
      sharpness = 1,
      richness_multiplier = 13000,
      richness_base = 350,
      size_control_multiplier = 0.06,
      peaks = {
        {
          influence = 0.2,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.65,

          noise_octaves_difference = -1.9,
		  noise_layer = "Scheelite_ore",
          noise_persistence = 0.3,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
      },
    },
    stage_counts = {1000, 600, 400, 200, 100, 50, 20, 1},
    stages =
    {
      sheet =
      {
        filename = "__NCP-Tech__/graphics/entity/Ores/Scheelite.png",
        priority = "extra-high",
        width = 38,
        height = 38,
        frame_count = 4,
        variation_count = 8
      }
    },
    map_color = {r=0.803, g=0.388, b=0.215}
  },
  {
    type = "resource",
    name = "Chalcopyrite_ore",
    icon = "__NCP-Tech__/graphics/item/Chalcopyrite_ore.png",
    flags = {"placeable-neutral"},
    order="a-b-a",
    minable =
    {
      hardness = 0.9,
      mining_particle = "copper-ore-particle",
      mining_time = 2,
      results =
      {
         {type="item", name="Chalcopyrite_ore", amount=1, probability = 1},
         {type="item", name="Pentlandite_ore", amount=1, probability = 0.25},
		 {type="item", name="Sulfur", amount=1, probability = 0.10},
      },
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace =
    {
      control = "Chalcopyrite_ore",
      sharpness = 1,
      richness_multiplier = 13000,
      richness_base = 350,
      size_control_multiplier = 0.06,
      peaks = {
        {
          influence = 0.2,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.65,

          noise_octaves_difference = -1.9,
		  noise_layer = "Chalcopyrite_ore",
          noise_persistence = 0.3,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
      },
    },
    stage_counts = {1000, 600, 400, 200, 100, 50, 20, 1},
    stages =
    {
      sheet =
      {
        filename = "__NCP-Tech__/graphics/entity/Ores/Chalcopyrite.png",
        priority = "extra-high",
        width = 38,
        height = 38,
        frame_count = 4,
        variation_count = 8
      }
    },
    map_color = {r=0.803, g=0.388, b=0.215}
  },
  {
    type = "resource",
    name = "Uraninite_ore",
    icon = "__NCP-Tech__/graphics/item/Uraninite_ore.png",
    flags = {"placeable-neutral"},
    order="a-b-a",
    minable =
    {
      hardness = 0.9,
      mining_particle = "copper-ore-particle",
      mining_time = 2,
      result = "Uraninite_ore"
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace =
    {
      control = "Uraninite_ore",
      sharpness = 1,
      richness_multiplier = 13000,
      richness_base = 350,
      size_control_multiplier = 0.06,
      peaks = {
        {
          influence = 0.2,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.65,

          noise_octaves_difference = -1.9,
		  noise_layer = "Uraninite_ore",
          noise_persistence = 0.3,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
      },
    },
    stage_counts = {1000, 600, 400, 200, 100, 50, 20, 1},
    stages =
    {
      sheet =
      {
        filename = "__NCP-Tech__/graphics/entity/Ores/Uraninite.png",
        priority = "extra-high",
        width = 38,
        height = 38,
        frame_count = 4,
        variation_count = 8
      }
    },
    map_color = {r=0.803, g=0.388, b=0.215}
  },
  {
    type = "resource",
    name = "Fluorite_ore",
    icon = "__NCP-Tech__/graphics/item/Fluorite_ore.png",
    flags = {"placeable-neutral"},
    order="a-b-a",
    minable =
    {
      hardness = 0.9,
      mining_particle = "copper-ore-particle",
      mining_time = 2,
      result = "Fluorite_ore"
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace =
    {
      control = "Fluorite_ore",
      sharpness = 1,
      richness_multiplier = 13000,
      richness_base = 350,
      size_control_multiplier = 0.06,
      peaks = {
        {
          influence = 0.2,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.65,

          noise_octaves_difference = -1.9,
		  noise_layer = "Fluorite_ore",
          noise_persistence = 0.3,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
      },
    },
    stage_counts = {1000, 600, 400, 200, 100, 50, 20, 1},
    stages =
    {
      sheet =
      {
        filename = "__NCP-Tech__/graphics/entity/Ores/Fluorite.png",
        priority = "extra-high",
        width = 38,
        height = 38,
        frame_count = 4,
        variation_count = 8
      }
    },
    map_color = {r=0.803, g=0.388, b=0.215}
  },
  {
    type = "resource",
    name = "Cassiterite_ore",
    icon = "__NCP-Tech__/graphics/item/Cassiterite_ore.png",
    flags = {"placeable-neutral"},
    order="a-b-a",
    minable =
    {
      hardness = 0.9,
      mining_particle = "copper-ore-particle",
      mining_time = 2,
      result = "Cassiterite_ore"
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace =
    {
      control = "Cassiterite_ore",
      sharpness = 1,
      richness_multiplier = 13000,
      richness_base = 350,
      size_control_multiplier = 0.06,
      peaks = {
        {
          influence = 0.2,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.65,

          noise_octaves_difference = -1.9,
		  noise_layer = "Cassiterite_ore",
          noise_persistence = 0.3,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
      },
    },
    stage_counts = {1000, 600, 400, 200, 100, 50, 20, 1},
    stages =
    {
      sheet =
      {
        filename = "__NCP-Tech__/graphics/entity/Ores/Cassiterite.png",
        priority = "extra-high",
        width = 38,
        height = 38,
        frame_count = 4,
        variation_count = 8
      }
    },
    map_color = {r=0.803, g=0.388, b=0.215}
  },
  {
    type = "resource",
    name = "Galena_ore",
    icon = "__NCP-Tech__/graphics/item/Galena_ore.png",
    flags = {"placeable-neutral"},
    order="a-b-a",
    minable =
    {
      hardness = 0.9,
      mining_particle = "copper-ore-particle",
      mining_time = 2,
      results =
      {
         {type="item", name="Galena_ore", amount=1, probability = 1},
         {type="item", name="Sphalerite_ore", amount=1, probability = 0.25},
		 {type="item", name="Sulfur", amount=1, probability = 0.10},
      },
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace =
    {
      control = "Galena_ore",
      sharpness = 1,
      richness_multiplier = 13000,
      richness_base = 350,
      size_control_multiplier = 0.06,
      peaks = {
        {
          influence = 0.2,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.65,

          noise_octaves_difference = -1.9,
		  noise_layer = "Galena_ore",
          noise_persistence = 0.3,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
      },
    },
    stage_counts = {1000, 600, 400, 200, 100, 50, 20, 1},
    stages =
    {
      sheet =
      {
        filename = "__NCP-Tech__/graphics/entity/Ores/Galena.png",
        priority = "extra-high",
        width = 38,
        height = 38,
        frame_count = 4,
        variation_count = 8
      }
    },
    map_color = {r=0.803, g=0.388, b=0.215}
  },
  {
    type = "resource",
    name = "Rutile_ore",
    icon = "__NCP-Tech__/graphics/item/Rutile_ore.png",
    flags = {"placeable-neutral"},
    order="a-b-a",
    minable =
    {
      hardness = 0.9,
      mining_particle = "copper-ore-particle",
      mining_time = 2,
      result = "Rutile_ore"
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace =
    {
      control = "Rutile_ore",
      sharpness = 1,
      richness_multiplier = 13000,
      richness_base = 350,
      size_control_multiplier = 0.06,
      peaks = {
        {
          influence = 0.2,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.65,

          noise_octaves_difference = -1.9,
		  noise_layer = "Rutile_ore",
          noise_persistence = 0.3,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
      },
    },
    stage_counts = {1000, 600, 400, 200, 100, 50, 20, 1},
    stages =
    {
      sheet =
      {
        filename = "__NCP-Tech__/graphics/entity/Ores/Rutile.png",
        priority = "extra-high",
        width = 38,
        height = 38,
        frame_count = 4,
        variation_count = 8
      }
    },
    map_color = {r=0.803, g=0.388, b=0.215}
  },
  {
    type = "resource",
    name = "Magnetite_ore",
    icon = "__NCP-Tech__/graphics/item/Magnetite_ore.png",
    flags = {"placeable-neutral"},
    order="a-b-a",
    minable =
    {
      hardness = 0.9,
      mining_particle = "copper-ore-particle",
      mining_time = 2,
      results =
      {
         {type="item", name="Magnetite_ore", amount=1, probability = 1},
         {type="item", name="Chromite_ore", amount=1, probability = 0.10},
      },
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace =
    {
      control = "Magnetite_ore",
      sharpness = 1,
      richness_multiplier = 13000,
      richness_base = 350,
      size_control_multiplier = 0.06,
      peaks = {
        {
          influence = 0.2,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.65,

          noise_octaves_difference = -1.9,
		  noise_layer = "Magnetite_ore",
          noise_persistence = 0.3,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
      },
    },
    stage_counts = {1000, 600, 400, 200, 100, 50, 20, 1},
    stages =
    {
      sheet =
      {
        filename = "__NCP-Tech__/graphics/entity/Ores/Magnetite.png",
        priority = "extra-high",
        width = 38,
        height = 38,
        frame_count = 4,
        variation_count = 8
      }
    },
    map_color = {r=0.803, g=0.388, b=0.215}
  },
  {
    type = "resource",
    name = "Brine_pool",
    icon = "__NCP-Tech__/graphics/fluid/Brine.png",
    flags = {"placeable-neutral"},
    category = "basic-fluid",
    order="a-b-a",
    infinite = true,
    minimum = 750,
    normal = 7500,
    minable =
    {
      hardness = 1,
      mining_time = 1,
      results =
      {
        {
          type = "fluid",
          name = "Brine",
          amount_min = 1,
          amount_max = 1,
          probability = 1,
        }
      }
    },
    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace =
    {
      control = "Brine_pool",
      sharpness = 1,
      max_probability = 0.04,
      richness_multiplier = 150000,
      richness_base = 5000,
      size_control_multiplier = 0.06,
      peaks =
      {
        {
          influence = 0.1
        },
        {
          influence = 0.105,
          starting_area_weight_optimal = 1,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.67,
          noise_layer = "Brine_pool",
          noise_octaves_difference = -2.7,
          noise_persistence = 0.3
        }
      }
    },
    stage_counts = {0},
    stages =
    {
      sheet =
      {
        filename = "__NCP-Tech__/graphics/entity/Ores/Brine.png",
        priority = "extra-high",
        width = 75,
        height = 61,
        frame_count = 4,
        variation_count = 1
      }
    },
    map_color = {r=0.8, g=0.1, b=0.8},
    map_grid = false
  },
}
)
--]]
