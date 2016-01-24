data:extend(
{
  {
    type = "recipe",
    name = "Quarried_stone",
    enabled = "true",
    ingredients =
    {
      {"stone", 1}
    },
    result = "Quarried_stone",
  },
  {
    type = "recipe",
    name = "Crushed_stone",
    enabled = "true",
    ingredients =
    {
      {"Quarried_stone", 1}
    },
    result = "Crushed_stone",
  },
  {
    type = "recipe",
    name = "Quartz",
    enabled = "true",
    ingredients =
    {
      {"Crushed_stone", 1}
    },
    result = "Quartz",
  },
  {
    type = "recipe",
    name = "Gravel",
    enabled = "true",
    ingredients =
    {
      {"Crushed_stone", 1}
    },
    result = "Gravel",
  },
  {
    type = "recipe",
    name = "Sand1",
    enabled = "true",
    ingredients =
    {
      {"Crushed_stone", 1}
    },
    result = "Sand",
  },
  {
    type = "recipe",
    name = "Sand2",
    enabled = "true",
    ingredients =
    {
      {"Gravel", 1}
    },
    result = "Sand",
  },
  {
    type = "recipe",
    name = "Clay_dry",
    enabled = "true",
    ingredients =
    {
      {"Silt", 1}
    },
    result = "Clay_dry",
  },
  {
    type = "recipe",
    name = "Clay_wet",
    enabled = "true",
    ingredients =
    {
      {"Clay_dry", 1}
    },
    result = "Clay_wet",
  },
  {
    type = "recipe",
    name = "Silicon_boule",
    enabled = "true",
    ingredients =
    {
      {"Silicon_dioxide", 1}
    },
    result = "Silicon_boule",
  },
  {
    type = "recipe",
    name = "Silicon_dioxide",
    enabled = "true",
    ingredients =
    {
      {"Quartz", 1}
    },
    result = "Silicon_dioxide",
  },
  {
    type = "recipe",
    name = "Silicon_wafer",
    enabled = "true",
    ingredients =
    {
      {"Silicon_boule", 1}
    },
    result = "Silicon_wafer",
  },
  {
    type = "recipe",
    name = "Silt",
    enabled = "true",
    ingredients =
    {
      {"Sand", 1}
    },
    result = "Silt",
  },
  {
    type = "recipe",
    name = "brick2",
    enabled = "true",
    ingredients =
    {
      {"Clay_wet", 1}
    },
    result = "stone-brick",
  },
  
  
  })