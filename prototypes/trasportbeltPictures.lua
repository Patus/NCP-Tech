-- Specifies set of pictures and animations used by more entities, to avoid duplication.
-- The standard set of transport belt pictures (vertical/horizontal + endigns + startings)
-- are used in transport belt, transport belt to ground and splitter.

ending_patch_prototype =
  {
    sheet =
    {
      filename = "__base__/graphics/entity/basic-transport-belt/start-end-integration-patches.png",
      width = 40,
      height = 40,
      priority = "extra-high"
    }
  }

---------------------- BASIC BELT PICTURES
crude_belt_horizontal =
  {
    filename = "__NCP-Tech__/graphics/entity/Transport/Transportbelt_crude.png",
    priority = "extra-high",
    width = 40,
    height = 40,
    frame_count = 16
  }
crude_belt_vertical =
  {
    filename = "__NCP-Tech__/graphics/entity/Transport/Transportbelt_crude.png",
    priority = "extra-high",
    width = 40,
    height = 40,
    frame_count = 16,
    y = 40
  }
crude_belt_ending_top =
  {
    filename = "__NCP-Tech__/graphics/entity/Transport/Transportbelt_crude.png",
    priority = "extra-high",
    width = 40,
    height = 40,
    frame_count = 16,
    y = 80
  }
crude_belt_ending_bottom =
  {
    filename = "__NCP-Tech__/graphics/entity/Transport/Transportbelt_crude.png",
    priority = "extra-high",
    width = 40,
    height = 40,
    frame_count = 16,
    y = 120
  }
crude_belt_ending_side =
  {
    filename = "__NCP-Tech__/graphics/entity/Transport/Transportbelt_crude.png",
    priority = "extra-high",
    width = 40,
    height = 40,
    frame_count = 16,
    y = 160
  }
crude_belt_starting_top =
  {
    filename = "__NCP-Tech__/graphics/entity/Transport/Transportbelt_crude.png",
    priority = "extra-high",
    width = 40,
    height = 40,
    frame_count = 16,
    y = 200
  }
crude_belt_starting_bottom =
  {
    filename = "__NCP-Tech__/graphics/entity/Transport/Transportbelt_crude.png",
    priority = "extra-high",
    width = 40,
    height = 40,
    frame_count = 16,
    y = 240
  }
crude_belt_starting_side =
  {
    filename = "__NCP-Tech__/graphics/entity/Transport/Transportbelt_crude.png",
    priority = "extra-high",
    width = 40,
    height = 40,
    frame_count = 16,
    y = 280
  }
