data:extend(
{
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
      {type="item", name="Quarried_stone", amount=1}
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
  
  
  })
