data:extend(
{
  {
    type = "ammo-category",
    name = "lead_shot"
  },
  {
    type = "ammo",
    name = "lead_shot",
    icon = "__NCP-Tech__/graphics/item/Lead_shot.png",
	icon_size = 32,
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "lead_shot",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          source_effects =
          {
              type = "create-explosion",
              entity_name = "explosion-gunshot"
          },
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "explosion-hit"
            },
            {
              type = "damage",
              damage = { amount = 5 , type = "physical"}
            }
          }
        }
      }
    },
    magazine_size = 1,
    subgroup = "Ammo",
    order = "a-b-c",
    stack_size = 200
  },
  }
  )