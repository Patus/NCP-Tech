data.raw["offshore-pump"]["offshore-pump"].fluid = "Water_dirty"
--data.raw["offshore-pump"]["offshore-pump"].pumping_speed = 0.1

--[[data.raw["boiler"]["boiler"].energy_consumption = "2MW"
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
    }]]--

--data.raw["generator"]["steam-engine"].effectivity = 0.3
--data.raw["generator"]["steam-engine"].fluid_usage_per_tick = 0.3
--[[
--(name,icon,hardness,mining_time,result,max_health,result_inventory_size,source_inventory_size,fluidIn,fluidOut,fast_replaceable_group,crafting_categories,crafting_speed,energy_usage)
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
makeAssemblingmachine ("Assembling_machine","Assembling_machine",0.2,0.5,"Assembling_machine",250,1,1,2,2,"Assembling_machine",{"Assembling_machine"},2,"0.15MW")
makeAssemblingmachine ("Refinery","Refinery",0.2,0.5,"Refinery",250,1,1,4,4,"Refinery",{"Refinery"},1,"0.05MW")
makeAssemblingmachine ("Electric_flash_furnace","Electric_flash_furnace",0.2,0.5,"Electric_flash_furnace",250,1,1,2,2,"Electric_flash_furnace",{"Electric_flash_furnace"},1,"1.2MW")
makeAssemblingmachine ("Electric_chemical_furnace","Electric_chemical_furnace",0.2,0.5,"Electric_chemical_furnace",250,1,1,2,2,"Electric_chemical_furnace",{"Electric_chemical_furnace"},1,"0.0015MW")
makeAssemblingmachine ("Bank","Bank",0.2,0.5,"Bank",250,1,1,0,0,"Bank",{"Bank"},1,"0.02MW")

]]--
Assembling_machine("Assembling_machine_t1",1)
Assembling_machine("Assembling_machine_t2",2)
Assembling_machine("Assembling_machine_t3",3)
Assembling_machine("Assembling_machine_t4",4)
Assembling_machine("Assembling_machine_t5",5)

Blast_furnace("Blast_furnace_t1",1)

Boiler("Boiler_t1",1)
Boiler("Boiler_t2",2)
Boiler("Boiler_t3",3)
Boiler("Boiler_t4",4)

Chemical_plant("Chemical_plant_t1",1)
Chemical_plant("Chemical_plant_t2",2)
Chemical_plant("Chemical_plant_t3",3)

Compressor("Compressor_t1",1)
Compressor("Compressor_t2",2)

Cracking_plant("Cracking_plant_t1",1)
Cracking_plant("Cracking_plant_t2",2)

Crusher("Crusher_t1",1)
Crusher("Crusher_t2",2)
Crusher("Crusher_t3",3)

Cryogenic_distillation_plant("Cryogenic_distillation_plant_t1",1)

Bank("Currency_exchange_t1",1)

Distillation("Distillery_t1",1)
Distillation("Distillery_t2",2)
Distillation("Distillery_t3",3)

Electric_pole("Distribution_pole_t1",1)
Electric_pole("Distribution_pole_t2",2)
Electric_pole("Distribution_pole_t3",3)

Electric_arc_furnace("Electric_arc_furnace_t1",1)

Electric_chemical_furnace("Electric_chemical_furnace_t1",1)
Electric_chemical_furnace("Electric_chemical_furnace_t2",2)
Electric_chemical_furnace("Electric_chemical_furnace_t3",3)

Electric_flash_furnace("Electric_flash_furnace_t1",1)
Electric_flash_furnace("Electric_flash_furnace_t2",2)

Electric_furnace("Electric_furnace_t1",1)
Electric_furnace("Electric_furnace_t2",2)
Electric_furnace("Electric_furnace_t3",3)

Electric_pole("Electric_pole_t1",1)

Electrolyzer("Electrolyzer_t1",1)
Electrolyzer("Electrolyzer_t2",2)
Electrolyzer("Electrolyzer_t3",3)

Electronics_assembly_machine("Electronics_assembling_macine_t1",1)

Extruder("Extruder_t1",1)
Extruder("Extruder_t2",2)
Extruder("Extruder_t3",3)
Extruder("Extruder_t4",4)

Farm("Farm_t1",1)
Farm("Farm_t2",2)

Flash_furnace("Flash_furnace_t1",1)

Furnace("Furnace_t1",1)
Furnace("Furnace_t2",2)
Furnace("Furnace_t3",3)

GrindingMill("Grinding_mill_t1",1)
GrindingMill("Grinding_mill_t2",2)
GrindingMill("Grinding_mill_t3",3)

InserterFilterStack("Inserter_filter_stack_t3",3)

InserterFilter("Inserter_filter_t3",3)
InserterFilter("Inserter_filter_t4",4)

InserterLongStack("Inserter_long_stack_t3",3)
InserterLongStack("Inserter_long_stack_t4",4)

InserterLong("Inserter_long_t2",2)
InserterLong("Inserter_long_t3",3)
InserterLong("Inserter_long_t4",4)

InserterStack("Inserter_stack_t3",3)
InserterStack("Inserter_stack_t4",4)

InserterNormal("Inserter_t1",1)
InserterNormal("Inserter_t2",2)
InserterNormal("Inserter_t3",3)
InserterNormal("Inserter_t4",4)
InserterNormal("Inserter_t5",5)

Laboratory("Laboratory_t1",1)

Locomotive("Locomotive_t1",1)
Locomotive("Locomotive_t2",2)

MiningDrill("Mining_drill_t1",1)
MiningDrill("Mining_drill_t2",2)
MiningDrill("Mining_drill_t3",3)

NuclearFuelProcessingPlant("Nuclear_fuel_processing_plant_t1",1)

OffsorePump("Offshore_pump_t1",1)
OffsorePump("Offshore_pump_t2",2)
OffsorePump("Offshore_pump_t3",3)

Ore_washing("Ore_washer_t1",1)
Ore_washing("Ore_washer_t2",2)
Ore_washing("Ore_washer_t3",3)

PumpJack("Pump_jack_t1",1)

Pump("Pump_t1",1)
Pump("Pump_t2",2)
Pump("Pump_t3",3)



PumpJack("Pumpjack_t1",1)
PumpJack("Pumpjack_t2",2)
PumpJack("Pumpjack_t3",3)

Radar("Radar_t1",1)

Refinery("Refinery_t1",1)
Refinery("Refinery_t2",2)

Roboport("Roboport_t1",1)

Rolling_machine("Rolling_machine_t1",1)
Rolling_machine("Rolling_machine_t2",2)
Rolling_machine("Rolling_machine_t3",3)
Rolling_machine("Rolling_machine_t4",4)

SolarArray("Solar_array_t1",1)
SolarArray("Solar_array_t2",2)

Splitter("Splitter_t1",1)
Splitter("Splitter_t2",2)
Splitter("Splitter_t3",3)
Splitter("Splitter_t4",4)
Splitter("Splitter_t5",5)
Splitter("Splitter_t6",6)
Splitter("Splitter_t7",7)

SteamEngine("Steam_engine_generator_t1",1)

SteamTurbine("Steam_tubine_t1",1)
SteamTurbine("Steam_turbine_t2",2)
SteamTurbine("Steam_turbine_t3",3)

MiningDrill("Stirling_miner_t1",1)

OffsorePump("Stirling_offshore_pump_t1",1)

Electric_pole("Substation_t1",1)

Electric_pole("Transmission_pole_t1",1)
Electric_pole("Transmission_pole_t2",2)
Electric_pole("Transmission_pole_t3",3)

TransportBelt("Transport_belt_t1",1)
TransportBelt("Transport_belt_t2",2)
TransportBelt("Transport_belt_t3",3)
TransportBelt("Transport_belt_t4",4)
TransportBelt("Transport_belt_t5",5)
TransportBelt("Transport_belt_t6",6)
TransportBelt("Transport_belt_t7",7)

TransportBeltUnderground("Transport_belt_underground_t1",1)
TransportBeltUnderground("Transport_belt_underground_t2",2)
TransportBeltUnderground("Transport_belt_underground_t3",3)
TransportBeltUnderground("Transport_belt_underground_t4",4)
TransportBeltUnderground("Transport_belt_underground_t5",5)
TransportBeltUnderground("Transport_belt_underground_t6",6)
TransportBeltUnderground("Transport_belt_underground_t7",7)

--ASDASDASD("AAAAADDDDDDDDDD",1)


















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
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    effectivity = 100000000,
    fluid_usage_per_tick = 0.01,
	maximum_temperature = 165,
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
	  height = 2,
      base_level = -1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        {type = "input-output", position = {0, 3} },
        {type = "input-output", position = {0, -3} },
      },
	  production_type = "input-output"
    },
	fluid_input =
    {
      name = "water",
      amount = 0.0,
      minimum_temperature = 100.0
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-output"
    },
    horizontal_animation =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/steam-engine/steam-engine-H.png",
          width = 176,
          height = 128,
          frame_count = 32,
          line_length = 8,
          shift = util.by_pixel(1, -5),
          hr_version = {
            filename = "__base__/graphics/entity/steam-engine/hr-steam-engine-H.png",
            width = 352,
            height = 257,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(1, -4.75),
            scale = 0.5
          },
        },
        {
          filename = "__base__/graphics/entity/steam-engine/steam-engine-H-shadow.png",
          width = 254,
          height = 80,
          frame_count = 32,
          line_length = 8,
          draw_as_shadow = true,
          shift = util.by_pixel(48, 24),
          hr_version = {
            filename = "__base__/graphics/entity/steam-engine/hr-steam-engine-H-shadow.png",
            width = 508,
            height = 160,
            frame_count = 32,
            line_length = 8,
            draw_as_shadow = true,
            shift = util.by_pixel(48, 24),
            scale = 0.5
          },
        },
      },
    },
    vertical_animation =
    {
      layers = 
      {
        {
          filename = "__base__/graphics/entity/steam-engine/steam-engine-V.png",
          width = 112,
          height = 195,
          frame_count = 32,
          line_length = 8,
          shift = util.by_pixel(5, -6.5),
          hr_version = {
            filename = "__base__/graphics/entity/steam-engine/hr-steam-engine-V.png",
            width = 225,
            height = 391,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(4.75, -6.25),        
            scale = 0.5
          },
        },
        {
          filename = "__base__/graphics/entity/steam-engine/steam-engine-V-shadow.png",
          width = 165,
          height = 153,
          frame_count = 32,
          line_length = 8,
          draw_as_shadow = true,
          shift = util.by_pixel(40.5, 9.5),
          hr_version = {
            filename = "__base__/graphics/entity/steam-engine/hr-steam-engine-V-shadow.png",
            width = 330,
            height = 307,
            frame_count = 32,
            line_length = 8,
            draw_as_shadow = true,
            shift = util.by_pixel(40.5, 9.25),        
            scale = 0.5
          },
        },
      },
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
