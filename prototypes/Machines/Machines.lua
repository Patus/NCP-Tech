data.raw["offshore-pump"]["offshore-pump"].fluid = "Water_dirty"
data.raw["offshore-pump"]["offshore-pump"].pumping_speed = 0.1

data.raw["boiler"]["boiler"].energy_consumption = "2MW"
data.raw["boiler"]["boiler"].burner =
    {
      effectivity = 0.4,
      fuel_inventory_size = 1,
      emissions = 0.1 / 6.5,
      smoke =
      {
        {
          name = "smoke",
          position = {0.0, -0.8},
          frequency = 5,
          starting_vertical_speed = 0.0,
          starting_frame_deviation = 60
        }
      }
    }

data.raw["generator"]["steam-engine"].effectivity = 0.3
data.raw["generator"]["steam-engine"].fluid_usage_per_tick = 0.3
function makeFluidbox (production_type,position)
	return			{
						production_type = production_type,
						pipe_picture = assembler2pipepictures(),
						pipe_covers = pipecoverspictures(),
						base_area = 10,
						base_level = -1,
						pipe_connections = {{ type=production_type, position = position }}
					}
end

function boxes(name,size,Number,fluid_boxes)
	local size=size
	local fluid_boxes=fluid_boxes
	local x=1
	if(name=="input")then 
		x=-1
	end
	if(Number==1)then
		if (size==3)then
			fluid_boxes[#fluid_boxes+1]=makeFluidbox(name,{0, x*2})
		else
			fluid_boxes[#fluid_boxes+1]=makeFluidbox(name,{0, x*3})
		end
	end
	if(Number==2)then 
		if (size==3)then
		fluid_boxes[#fluid_boxes+1]=makeFluidbox(name,{-1, x*2})
		fluid_boxes[#fluid_boxes+1]=makeFluidbox(name,{1, x*2})
		else
		fluid_boxes[#fluid_boxes+1]=makeFluidbox(name,{-1, x*3})
		fluid_boxes[#fluid_boxes+1]=makeFluidbox(name,{1, x*3})
		end
	end
	if(Number==3)then 
		fluid_boxes[#fluid_boxes+1]=makeFluidbox(name,{-2, x*3})
		fluid_boxes[#fluid_boxes+1]=makeFluidbox(name,{0, x*3})
		fluid_boxes[#fluid_boxes+1]=makeFluidbox(name,{2, x*3})
		size=5
	end
	if(Number==4)then 
		fluid_boxes[#fluid_boxes+1]=makeFluidbox(name,{-3, x*1})
		fluid_boxes[#fluid_boxes+1]=makeFluidbox(name,{-1, x*3})
		fluid_boxes[#fluid_boxes+1]=makeFluidbox(name,{1, x*3})
		fluid_boxes[#fluid_boxes+1]=makeFluidbox(name,{3, x*1})
		size=5
	end
	if(Number==5)then 
		fluid_boxes[#fluid_boxes+1]=makeFluidbox(name,{-3, x*1})
		fluid_boxes[#fluid_boxes+1]=makeFluidbox(name,{-2, x*3})
		fluid_boxes[#fluid_boxes+1]=makeFluidbox(name,{0, x*3})
		fluid_boxes[#fluid_boxes+1]=makeFluidbox(name,{2, x*3})
		fluid_boxes[#fluid_boxes+1]=makeFluidbox(name,{3, x*1})
		size=5
	end
	return size,fluid_boxes
end

function makeAssemblingmachine (name,icon,hardness,mining_time,result,max_health,result_inventory_size,source_inventory_size,fluidIn,fluidOut,fast_replaceable_group,crafting_categories,crafting_speed,energy_usage)
	local size=3
	local fluid_boxes={off_when_no_fluid_recipe = false}
	local asd={}
	local animation
	local collision_box
	local selection_box
	
	if(fluidIn>fluidOut)then
		size,fluid_boxes=boxes("input",size,fluidIn,fluid_boxes)
		size,fluid_boxes=boxes("output",size,fluidOut,fluid_boxes)
	else
		size,fluid_boxes=boxes("output",size,fluidOut,fluid_boxes)
		size,fluid_boxes=boxes("input",size,fluidIn,fluid_boxes)
	end
	
	
	if (size==5) then
		collision_box = {{-2.2, -2.2}, {2.2, 2.2}}
		selection_box = {{-2.5, -2.5}, {2.5, 2.5}}
		animation =
			{
			filename = "__NCP-Tech__/graphics/entity/Machines/assembling-machine-2.png",
			priority = "high",
			width = 189,
			height = 165,
			frame_count = 32,
			line_length = 8,
			shift = {0.66, -0.1}
			}
	else
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}}
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}}

		animation =
			{
			filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2.png",
			priority = "high",
			width = 113,
			height = 99,
			frame_count = 32,
			line_length = 8,
			shift = {0.4, -0.06}
			}
	
	end
	data:extend(
		{
	
			{
				type = "assembling-machine",
				name = name,
				icon = "__NCP-Tech__/graphics/item/"..icon..".png",
				flags = {"placeable-neutral", "placeable-player", "player-creation"},
				minable = {hardness = hardness, mining_time = mining_time, result = result},
				max_health = max_health,
				corpse = "big-remnants",
				dying_explosion = "medium-explosion",
				result_inventory_size = result_inventory_size,
				source_inventory_size = source_inventory_size,
	
				resistances =
				{
					{
						type = "fire",
						percent = 70
					}
				},
				fluid_boxes =fluid_boxes,
				collision_box = collision_box,
				selection_box = selection_box,
				fast_replaceable_group = fast_replaceable_group,
				animation = animation,
				open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
				close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
				vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
				working_sound =
				{
					sound = {
						{
							filename = "__base__/sound/assembling-machine-t2-1.ogg",
							volume = 0.8
						},
						{
						filename = "__base__/sound/assembling-machine-t2-2.ogg",
						volume = 0.8
						},
					},
					idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
					apparent_volume = 1.5,
				},
				crafting_categories = crafting_categories,
				crafting_speed = crafting_speed,
				energy_source =
				{
					type = "electric",
					usage_priority = "secondary-input",
					emissions = 0.40 / 2.5
				},
				energy_usage = energy_usage,
				ingredient_count = 4,
				module_specification =
				{
					module_slots = 2
				},
				allowed_effects = {"consumption", "speed", "productivity", "pollution"}
			}
		}
	)

end 
makeAssemblingmachine ("Electric_furnace","Electric_furnace",0.2,0.5,"Electric_furnace",250,1,1,1,1,"Electric_furnace",{"Electric_furnace"},1,"1.6MW")
makeAssemblingmachine ("Rotary_kiln","Rotary_kiln",0.2,0.5,"Rotary_kiln",250,1,1,2,2,"Rotary_kiln",{"Rotary_kiln"},1,"2MW")
makeAssemblingmachine ("Ore_washing","Ore_washing",0.2,0.5,"Ore_washing",250,1,1,1,1,"Ore_washing",{"Ore_washing"},1,"0.1MW")
makeAssemblingmachine ("Chemical_plant","Chemical_plant",0.2,0.5,"Chemical_plant",250,1,1,4,4,"Chemical_plant",{"Chemical_plant"},1,"0.7MW")
makeAssemblingmachine ("Electrolyzer","Electrolyzer",0.2,0.5,"Electrolyzer",250,1,1,2,2,"Electrolyzer",{"Electrolyzer"},1,"1.25MW")
makeAssemblingmachine ("Chemical_furnace","Chemical_furnace",0.2,0.5,"Chemical_furnace",250,1,1,2,2,"Chemical_furnace",{"Chemical_furnace"},1,"1.1MW")
makeAssemblingmachine ("Pump","Pump",0.2,0.5,"Pump",250,1,1,2,2,"Pump",{"Pump"},1,"30kW")
makeAssemblingmachine ("Blast_furnace","Blast_furnace",0.2,0.5,"Blast_furnace",250,1,1,2,2,"Blast_furnace",{"Blast_furnace"},1,"0.35MW")
makeAssemblingmachine ("Nuclear_fuel_processing_plant","Nuclear_fuel_processing_plant",0.2,0.5,"Nuclear_fuel_processing_plant",250,1,1,4,4,"Nuclear_fuel_processing_plant",{"Nuclear_fuel_processing_plant"},1,"0.6MW")
makeAssemblingmachine ("Rolling_machine","Rolling_machine",0.2,0.5,"Rolling_machine",250,1,1,2,2,"Rolling_machine",{"Rolling_machine"},1,"0.15MW")
makeAssemblingmachine ("Mixer","Mixer",0.2,0.5,"Mixer",250,1,1,2,2,"Mixer",{"Mixer"},1,"0.15MW")
makeAssemblingmachine ("Cracking_plant","Cracking_plant",0.2,0.5,"Cracking_plant",250,1,1,4,4,"Cracking_plant",{"Cracking_plant"},1,"2.9MW")
makeAssemblingmachine ("Distillation","Distillation",0.2,0.5,"Distillation",250,1,1,4,4,"Distillation",{"Distillation"},1,"4.0MW")
makeAssemblingmachine ("Compressor","Compressor",0.2,0.5,"Compressor",250,1,1,2,2,"Compressor",{"Compressor"},1,"0.1MW")
makeAssemblingmachine ("Electric_arc_furnace","Electric_arc_furnace",0.2,0.5,"Electric_arc_furnace",250,1,1,2,2,"Electric_arc_furnace",{"Electric_arc_furnace"},1,"1.68MW")
makeAssemblingmachine ("Vacuum_oxygen_decarburization","Vacuum_oxygen_decarburization",0.2,0.5,"Vacuum_oxygen_decarburization",250,1,1,2,2,"Vacuum_oxygen_decarburization",{"Vacuum_oxygen_decarburization"},1,"0.15MW")
makeAssemblingmachine ("Cryogenic_distillation_plant","Cryogenic_distillation_plant",0.2,0.5,"Cryogenic_distillation_plant",250,1,1,2,2,"Cryogenic_distillation_plant",{"Cryogenic_distillation_plant"},1,"0.3MW")
makeAssemblingmachine ("Farm","Farm",0.2,0.5,"Farm",250,1,1,2,2,"Farm",{"Farm"},1,"0.1MW")
makeAssemblingmachine ("Electronics_assembly_machine","Electronics_assembly_machine",0.2,0.5,"Electronics_assembly_machine",250,1,1,2,2,"Electronics_assembly_machine",{"Electronics_assembly_machine"},1,"0.15MW")
makeAssemblingmachine ("Flash_furnace","Flash_furnace",0.2,0.5,"Flash_furnace",250,1,1,2,2,"Flash_furnace",{"Flash_furnace"},1,"0.8MW")
makeAssemblingmachine ("TSL_furnace","TSL_furnace",0.2,0.5,"TSL_furnace",250,1,1,2,2,"TSL_furnace",{"TSL_furnace"},1,"0.15MW")
makeAssemblingmachine ("Extruder","Extruder",0.2,0.5,"Extruder",250,1,1,2,2,"Extruder",{"Extruder"},1,"0.05MW")
makeAssemblingmachine ("Milling_machine","Milling_machine",0.2,0.5,"Milling_machine",250,1,1,2,2,"Milling_machine",{"Milling_machine"},1,"0.15MW")
makeAssemblingmachine ("Furnace","Furnace",0.2,0.5,"Furnace",250,1,1,2,2,"Furnace",{"Furnace"},1,"1.2MW")
makeAssemblingmachine ("Assembling_machine","Assembling_machine",0.2,0.5,"Assembling_machine",250,1,1,2,2,"Assembling_machine",{"Assembling_machine"},1,"0.15MW")
makeAssemblingmachine ("Refinery","Refinery",0.2,0.5,"Refinery",250,1,1,4,4,"Refinery",{"Refinery"},1,"0.05MW")
makeAssemblingmachine ("Electric_flash_furnace","Electric_flash_furnace",0.2,0.5,"Electric_flash_furnace",250,1,1,2,2,"Electric_flash_furnace",{"Electric_flash_furnace"},1,"1.2MW")
makeAssemblingmachine ("Electric_chemical_furnace","Electric_chemical_furnace",0.2,0.5,"Electric_chemical_furnace",250,1,1,2,2,"Electric_chemical_furnace",{"Electric_chemical_furnace"},1,"0.0015MW")
makeAssemblingmachine ("Bank","Bank",0.2,0.5,"Bank",250,1,1,0,0,"Bank",{"Bank"},1,"0.02MW")




--local asdasd=makeFluidbox ("input",{-2, x*3})
data:extend(
{
	{
    type = "furnace",
    name = "Crusher",
    icon = "__NCP-Tech__/graphics/item/Crusher.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "Crusher"},
    max_health = 250,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
	result_inventory_size = 3,
	source_inventory_size = 1,
	
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
	fluid_boxes =
    {
      {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = { {type="input", position = {1, -2}},{ type="input", position = {-1, -2}}}
      },
      {
        production_type = "output",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{type="output", position = {1, 2}},{type="output", position = {-1, 2}}}
    },
    off_when_no_fluid_recipe = true
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    fast_replaceable_group = "Crusher",
    animation =
    {
      filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2.png",
      priority = "high",
      width = 113,
      height = 99,
      frame_count = 32,
      line_length = 8,
      shift = {0.4, -0.06}
    },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/assembling-machine-t2-1.ogg",
          volume = 0.8
        },
        {
          filename = "__base__/sound/assembling-machine-t2-2.ogg",
          volume = 0.8
        },
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5,
    },
    crafting_categories = {"Crusher"},
    crafting_speed = 0.75,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.04 / 2.5
    },
    energy_usage = "300kW",
    ingredient_count = 4,
    module_specification =
    {
      module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"}
  },
  
  {
    type = "furnace",
    name = "Filter",
    icon = "__NCP-Tech__/graphics/item/Filter.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "Filter"},
    max_health = 250,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
	source_inventory_size=1,
	result_inventory_size=1,
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 1,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, -2} }}
      },
      {
        production_type = "output",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 1,
        base_level = 1,
        pipe_connections = {{ type="output", position = {0, 2} }}
      },
      off_when_no_fluid_recipe = true
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    fast_replaceable_group = "Filter",
    animation =
    {
      filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2.png",
      priority = "high",
      width = 113,
      height = 99,
      frame_count = 32,
      line_length = 8,
      shift = {0.4, -0.06}
    },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/assembling-machine-t2-1.ogg",
          volume = 0.8
        },
        {
          filename = "__base__/sound/assembling-machine-t2-2.ogg",
          volume = 0.8
        },
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5,
    },
    crafting_categories = {"Filter"},
    crafting_speed = 0.75,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.04 / 2.5
    },
    energy_usage = "100kW",
    ingredient_count = 4,
    module_specification =
    {
      module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"}
  },
  
 
}
)
data:extend(
{
  
  
  
  {
    type = "furnace",
    name = "Grinding_mill",
    icon = "__NCP-Tech__/graphics/item/Grinding_mill.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "Grinding_mill"},
    max_health = 250,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
	result_inventory_size = 4,
	source_inventory_size = 1,
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = { {type="input", position = {1, -2}},{ type="input", position = {-1, -2}}}
      },
      {
        production_type = "output",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{type="output", position = {1, 2}},{type="output", position = {-1, 2}}}
    },
      off_when_no_fluid_recipe = true
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    fast_replaceable_group = "Grinding_mill",
    animation =
    {
      filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2.png",
      priority = "high",
      width = 113,
      height = 99,
      frame_count = 32,
      line_length = 8,
      shift = {0.4, -0.06}
    },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/assembling-machine-t2-1.ogg",
          volume = 0.8
        },
        {
          filename = "__base__/sound/assembling-machine-t2-2.ogg",
          volume = 0.8
        },
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5,
    },
    crafting_categories = {"Grinding_mill"},
    crafting_speed = 0.75,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.04 / 2.5
    },
    energy_usage = "200kW",
    ingredient_count = 4,
    module_specification =
    {
      module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"}
  },
  
  
  
  
  
  
}
)

data:extend(
{
  
  
  
  
  
  
  {
    type = "furnace",
    name = "Market",
    icon = "__NCP-Tech__/graphics/item/Market.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "Market"},
    max_health = 250,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
	result_inventory_size = 3,
	source_inventory_size = 1,
	
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = { {type="input", position = {1, -2}},{ type="input", position = {-1, -2}}}
      },
      {
        production_type = "output",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{type="output", position = {1, 2}},{type="output", position = {-1, 2}}}
    },
      off_when_no_fluid_recipe = true
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    fast_replaceable_group = "Market",
    animation =
    {
      filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2.png",
      priority = "high",
      width = 113,
      height = 99,
      frame_count = 32,
      line_length = 8,
      shift = {0.4, -0.06}
    },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/assembling-machine-t2-1.ogg",
          volume = 0.8
        },
        {
          filename = "__base__/sound/assembling-machine-t2-2.ogg",
          volume = 0.8
        },
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5,
    },
    crafting_categories = {"Market"},
    crafting_speed = 0.75,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.04 / 2.5
    },
    energy_usage = "50kW",
    ingredient_count = 4,
    module_specification =
    {
      module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"}
  },
  
  
  
  
  {
    type= "item",
    name= "OP_generator",
    icon = "__NCP-Tech__/graphics/item/Electric_chemical_furnace.png",
    flags= { "goes-to-main-inventory" },
    subgroup = "ores",
    order= "a-b-c",
    stack_size= 50,
	place_result= "OP_generator",
  },
  
  {
    type = "generator",
    name = "OP_generator",
    icon = "__base__/graphics/icons/steam-engine.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "OP_generator"},
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    effectivity = 100000000,
    fluid_usage_per_tick = 0.01,
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    collision_box = {{-1.35, -2.35}, {1.35, 2.35}},
    selection_box = {{-1.5, -2.5}, {1.5, 2.5}},
    fluid_box =
    {
      base_area = 1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, 3} },
        { position = {0, -3} },
      },
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-output"
    },
    horizontal_animation =
    {
      filename = "__base__/graphics/entity/steam-engine/steam-engine-horizontal.png",
      width = 246,
      height = 137,
      frame_count = 32,
      line_length = 8,
      shift = {1.34, -0.06}
    },
    vertical_animation =
    {
      filename = "__base__/graphics/entity/steam-engine/steam-engine-vertical.png",
      width = 155,
      height = 186,
      frame_count = 32,
      line_length = 8,
      shift = {0.812, 0.031}
    },
    smoke =
    {
      {
        name = "light-smoke",
        north_position = {0.9, 0.0},
        east_position = {-2.0, -2.0},
        frequency = 10 / 32,
        starting_vertical_speed = 0.08,
        slow_down_factor = 1,
        starting_frame_deviation = 60
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/steam-engine-90bpm.ogg",
        volume = 0.6
      },
      match_speed_to_activity = true,
    },
    min_perceived_performance = 0.25,
    performance_to_sound_speedup = 0.5
  },
  
  
  
  
  
  
  
  
  
  
}
)


--]]
