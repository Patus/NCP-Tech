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
  
  })