local hit_effects = require ("__base__.prototypes.entity.demo-hit-effects")
local sounds = require("__base__.prototypes.entity.demo-sounds")
require ("__base__.prototypes.entity.assemblerpipes")
require ("__base__.prototypes.entity.demo-pipecovers")


function oldmakeItem(name,stack_size,subgroup,place_result,order)
	local icon="__NCP-Tech__/graphics/item/"..name..".png"

	if(order=="" or order==nil)then
		order="a-b-c"
	end
	if(string.sub(name,-7)=="_bottle" or string.sub(name,-7)=="_barrel") then
		icon="__NCP-Tech__/graphics/item/B"..string.sub(name,-5)..".png"
	end
	data:extend({
	{
		type= "item",
		name= name,
		icon = icon,

	icon_size=32,

		subgroup = subgroup,
		order= order,
		stack_size= stack_size,
		place_result =nil,
		},

	})
	if(place_result==true)then
		data.raw["item"][name].place_result=name
	end

end



function makeItem(a)
	--local icon="__NCP-Tech__/graphics/item/"..a.name..".png"



	local name=a.name
	local icon= a.icon or "__NCP-Tech__/graphics/item/"..a.name..".png"
	local flags=a.flags or nil
	local subgroup=a.subgroup or "notsubgoup"
	local order=a.order or "a-b-c"
	local stack_size=a.stack_size or 20
	local place_result=a.place_result or nil

	data:extend({
	{
		type= "item",
		name= name,
		icon = icon,
		icon_size = 32,
		flags= flags,
		subgroup = subgroup,
		order= order,
		stack_size= stack_size,
		place_result =place_result,
		},

	})


end

function recipeNumber(name)
local i=0
while true do
	if(data.raw["recipe"][name.."_"..i]==nil)then
		return (name.."_"..i)
	end
i=i+1
end



end


recipeNames={}
function makeRecipe(a)
	if(data.raw["item"][a.name]==nil)then
		--makeItem{name=a.name,icon=a.icon,flags=a.flags,subgroup=a.subgroup,order=a.order,stack_size=a.stack,place_result=a.place_result}
	end
	local itemType="item"
	if(a.fluidIcon==true)then
		itemType="fluid"
	end

	local name=a.name
	local category= a.category or "crafting"
	local energy_required=a.energy_required or 2
	local enabled=a.enabled or "true"
	local ingredients=a.ingredients or {}
	local results=a.results or {{type="item", name=a.name, amount=1,probability =1}}
	local icon=a.icon or "__NCP-Tech__/graphics/"..itemType.."/"..a.name..".png"
	local subgroup=a.subgroup or "notsubgoup"
	local itemName=name

	name=recipeNumber(name)


	recipeNames[name]={recipeName=name,itemName=itemName,price=nil}

	--table.insert(recipeNames, {name=name,itemName=itemName})
	data:extend({
	{
		type = "recipe",
		name=name,
		category =category,
		energy_required = energy_required,
		enabled = "true",
		ingredients =ingredients,

		results = results,

		icon = icon,

	icon_size=32,
		subgroup = subgroup,
	},
	})



	--for i , item in pairs(input) do

		--table.insert(data.raw["recipe"][name].ingredients, {type=item[1], name=item[2], amount=item[3]})
	--end

	--for i , item in pairs(output) do
		--table.insert(data.raw["recipe"][name].results, {type=item[1], name=item[2], amount=item[3]})
	--end

end

function oldmakeRecipe(name,input,output,category,subgroup)
	local icon = "__NCP-Tech__/graphics/"..output[1][1].."/"..output[1][2]..".png"

	if(string.sub(output[1][2],-7)=="_bottle" or string.sub(output[1][2],-7)=="_barrel") then
		icon="__NCP-Tech__/graphics/"..output[1][1].."/B"..string.sub(output[1][2],-5)..".png"
	end

	data:extend({
	{
		type = "recipe",
		name = name,
		category =category,
		energy_required = 1,
		enabled = "true",
		ingredients =
		{

		},
		results =
		{

		},
		icon = icon,

	icon_size=32,
		subgroup = subgroup,
	},
	})



	for i , item in pairs(input) do

		table.insert(data.raw["recipe"][name].ingredients, {type=item[1], name=item[2], amount=item[3]})
	end

	for i , item in pairs(output) do
		table.insert(data.raw["recipe"][name].results, {type=item[1], name=item[2], amount=item[3]})
	end

end

function noRecipe(name)
	local icon = "__NCP-Tech__/graphics/None.png"

	data:extend({
	{
		type = "recipe",
		name = name,
		--category =category,
		energy_required = 1,
		enabled = "true",
		ingredients =
		{

		},
		results =
		{
			{type="item", name=name, amount=1},
		},
		icon = icon,
	icon_size=32,
		--subgroup = subgroup,
	},
	})


end



function makeFluidbox (production_type,position)
	local basepipelevel=1
	if(production_type=="input")then
		basepipelevel=-1
	end
	return			{
						production_type = production_type,
						pipe_picture = assembler2pipepictures(),
						pipe_covers = pipecoverspictures(),
						base_area = 10,
						base_level = basepipelevel,
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

				icon_size=32,
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


function createAssemblingMachine (a)

	local name=a.name
	local icon=a.icon or "__NCP-Tech__/graphics/item/"..name..".png"
	local minable=a.minable or {hardness = 0.2, mining_time = 0.5, result = name}
	local max_health=a.max_health or 250
	local result_inventory_size=a.result_inventory_size or 1
	local source_inventory_size=a.source_inventory_size or 1
	local fast_replaceable_group=a.fast_replaceable_group or name
	local crafting_categories=a.crafting_categories or {"crafting"}
	local crafting_speed=a.crafting_speed or 1
	local energy_usage=a.energy_usage or "1kW"
	local fluidIn=a.fluidIn or 1
	local fluidOut=a.fluidOut or 1

	local size=a.size or 3
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
		--animation =
			-- {
			-- filename = "__NCP-Tech__/graphics/entity/Machines/assembling-machine-2.png",
			-- priority = "high",
			-- width = 189,
			-- height = 165,
			-- frame_count = 32,
			-- line_length = 8,
			-- shift = {0.66, -0.1}
			-- }
			animation =
			    {
			      layers =
			      {
			        {
			          filename = "__base__/graphics/entity/assembling-machine-1/assembling-machine-1.png",
			          priority="high",
			          width = 108,
			          height = 114,
			          frame_count = 32,
			          line_length = 8,
			          shift = util.by_pixel(0, 2),
			          hr_version =
			          {
			            filename = "__base__/graphics/entity/assembling-machine-1/hr-assembling-machine-1.png",
			            priority="high",
			            width = 214,
			            height = 226,
			            frame_count = 32,
			            line_length = 8,
			            shift = util.by_pixel(0, 2),
			            scale = 0.5
			          }
			        },
			        {
			          filename = "__base__/graphics/entity/assembling-machine-1/assembling-machine-1-shadow.png",
			          priority="high",
			          width = 95,
			          height = 83,
			          frame_count = 1,
			          line_length = 1,
			          repeat_count = 32,
			          draw_as_shadow = true,
			          shift = util.by_pixel(8.5, 5.5),
			          hr_version =
			          {
			            filename = "__base__/graphics/entity/assembling-machine-1/hr-assembling-machine-1-shadow.png",
			            priority="high",
			            width = 190,
			            height = 165,
			            frame_count = 1,
			            line_length = 1,
			            repeat_count = 32,
			            draw_as_shadow = true,
			            shift = util.by_pixel(8.5, 5),
			            scale = 0.5
			          }
			        }
			      }
			    }
	else
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}}
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}}

		animation =
			{
			  layers =
			  {
				{
				  filename = "__base__/graphics/entity/assembling-machine-1/assembling-machine-1.png",
				  priority="high",
				  width = 108,
				  height = 114,
				  frame_count = 32,
				  line_length = 8,
				  shift = util.by_pixel(0, 2),
				  hr_version =
				  {
					filename = "__base__/graphics/entity/assembling-machine-1/hr-assembling-machine-1.png",
					priority="high",
					width = 214,
					height = 226,
					frame_count = 32,
					line_length = 8,
					shift = util.by_pixel(0, 2),
					scale = 0.5
				  }
				},
				{
				  filename = "__base__/graphics/entity/assembling-machine-1/assembling-machine-1-shadow.png",
				  priority="high",
				  width = 95,
				  height = 83,
				  frame_count = 1,
				  line_length = 1,
				  repeat_count = 32,
				  draw_as_shadow = true,
				  shift = util.by_pixel(8.5, 5.5),
				  hr_version =
				  {
					filename = "__base__/graphics/entity/assembling-machine-1/hr-assembling-machine-1-shadow.png",
					priority="high",
					width = 190,
					height = 165,
					frame_count = 1,
					line_length = 1,
					repeat_count = 32,
					draw_as_shadow = true,
					shift = util.by_pixel(8.5, 5),
					scale = 0.5
				  }
				}
			  }
			}

	end
	data:extend(
		{

			{
				type = "assembling-machine",
				name = name,
				icon = icon,
				icon_size = 32,
				flags = {"placeable-neutral", "placeable-player", "player-creation"},
				minable = minable,
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

function createFurnace (a)
	local name=a.name
	local icon=a.icon or "__NCP-Tech__/graphics/item/"..name..".png"
	local minable=a.minable or {mining_time = 1, result = name}
	local max_health=a.max_health or 350
	local crafting_categories=a.crafting_categories or {"smelting"}
	local crafting_speed=a.crafting_speed or 2
	local energy_usage=a.energy_usage or "180kW"
	local source_inventory_size=a.source_inventory_size or 1
	local result_inventory_size=a.result_inventory_size or 1
	local fast_replaceable_group=a.fast_replaceable_group or "furnace"



	data:extend({


	{
    type = "furnace",
    name = name,
    icon = icon,
	icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = minable,
    max_health = max_health,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    light = {intensity = 1, size = 10},
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    module_specification =
    {
      module_slots = 2,
      module_info_icon_shift = {0, 0.8}
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = crafting_categories,
    result_inventory_size = result_inventory_size,
    crafting_speed = crafting_speed,
    energy_usage = energy_usage,
    source_inventory_size = source_inventory_size,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.005
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-furnace.ogg",
        volume = 0.7
      },
      apparent_volume = 1.5
    },
	animation =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/stone-furnace/stone-furnace.png",
          priority = "extra-high",
          width = 81,
          height = 64,
          frame_count = 1,
          shift = util.by_pixel(14.5, 2),
          hr_version =
          {
            filename = "__base__/graphics/entity/stone-furnace/hr-stone-furnace.png",
            priority = "extra-high",
            width = 151,
            height = 146,
            frame_count = 1,
            shift = util.by_pixel(-0.25, 6),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/stone-furnace/stone-furnace-shadow.png",
          priority = "extra-high",
          width = 81,
          height = 64,
          frame_count = 1,
          draw_as_shadow = true,
          shift = util.by_pixel(14.5, 2),
          hr_version =
          {
            filename = "__base__/graphics/entity/stone-furnace/hr-stone-furnace-shadow.png",
            priority = "extra-high",
            width = 164,
            height = 74,
            frame_count = 1,
            draw_as_shadow = true,
            shift = util.by_pixel(14.5, 13),
            scale = 0.5
          }
        }
      }
    },
	working_visualisations =
    {
      {
        north_position = {0.0, 0.0},
        east_position = {0.0, 0.0},
        south_position = {0.0, 0.0},
        west_position = {0.0, 0.0},
        animation =
        {
          filename = "__base__/graphics/entity/stone-furnace/stone-furnace-fire.png",
          priority = "extra-high",
          line_length = 8,
          width = 20,
          height = 49,
          frame_count = 48,
          axially_symmetrical = false,
          direction_count = 1,
          shift = util.by_pixel(-0.5, 5.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/stone-furnace/hr-stone-furnace-fire.png",
            priority = "extra-high",
            line_length = 8,
            width = 41,
            height = 100,
            frame_count = 48,
            axially_symmetrical = false,
            direction_count = 1,
            shift = util.by_pixel(-0.75, 5.5),
            scale = 0.5
          }
        },
      light = {intensity = 1, size = 1, color = {r=1.0, g=1.0, b=1.0}}
      }
    },
    fast_replaceable_group = fast_replaceable_group
  },
})
end

function createTrasportBelt (a)
	local name=a.name
	local icon=a.icon or "__NCP-Tech__/graphics/item/"..name..".png"
	local minable=a.minable or {hardness = 0.2, mining_time = 0.3, result = name}
	local max_health=a.max_health or 150

	local aaaaaa=a.aaaaaa or aaaaaa
	data:extend({

	{
    type = "transport-belt",
    name = name,
    icon = icon,
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = minable,
    max_health = max_health,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/transport-belt.ogg",
        volume = 0.4
      },
      max_sounds_per_type = 3
    },
	animation_speed_coefficient = 32,
    belt_animation_set = basic_belt_animation_set,
    fast_replaceable_group = "transport-belt",
    next_upgrade = "fast-transport-belt",
    speed = 0.03125,
    connector_frame_sprites = transport_belt_connector_frame_sprites,
    circuit_wire_connection_points = circuit_connector_definitions["belt"].points,
    circuit_connector_sprites = circuit_connector_definitions["belt"].sprites,
    circuit_wire_max_distance = transport_belt_circuit_wire_max_distance
  },
	})
end

function createBoiler (a)
	local name=a.name
	local icon=a.icon or "__NCP-Tech__/graphics/item/"..name..".png"
	local minable=a.minable or {hardness = 0.2, mining_time = 0.3, result = "transport-belt"}
	local max_health=a.max_health or 200
	local target_temperature=a.target_temperature or 165
	local energy_consumption=a.energy_consumption or "1.8MW"
	local burning_cooldown=a.burning_cooldown or 20

	local aaaaaa=a.aaaaaa or aaaaaa
	data:extend({

	{
    type = "boiler",
    name = name,
    icon = icon,
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = minable,
    max_health = max_health,
    corpse = "small-remnants",
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    mode = "output-to-separate-pipe",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      },
      {
        type = "explosion",
        percent = 30
      },
      {
        type = "impact",
        percent = 30
      }
    },
    collision_box = {{-1.29, -0.79}, {1.29, 0.79}},
    selection_box = {{-1.5, -1}, {1.5, 1}},
    target_temperature = target_temperature,
    fluid_box =
    {
      base_area = 1,
      height = 2,
      base_level = -1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        {type = "input-output", position = {-2, 0.5}},
        {type = "input-output", position = {2, 0.5}}
      },
      production_type = "input-output"
    },
    output_fluid_box =
    {
      base_area = 1,
      height = 2,
      base_level = 1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        {type = "output", position = {0, -1.5}}
      },
      production_type = "output"
    },
    fluid_input =
    {
      name = "Water",
      amount = 0.0
    },
    fluid_output =
    {
      name = "steam",-- oli steam
      amount = 0.0
    },
    energy_consumption = energy_consumption,
    energy_source =
    {
      type = "burner",
      fuel_category = "chemical",
      effectivity = 1,
      fuel_inventory_size = 1,
      emissions = 0.1 / 6.5,
      smoke =
      {
        {
          name = "smoke",
          north_position = util.by_pixel(-38, -47.5),
          south_position = util.by_pixel(38.5, -32),
          east_position = util.by_pixel(20, -70),
          west_position = util.by_pixel(-19, -8.5),
          frequency = 15,
          starting_vertical_speed = 0.0,
          starting_frame_deviation = 60
        }
      }
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/boiler.ogg",
        volume = 0.8
      },
      max_sounds_per_type = 3
    },

	structure =
    {
      north =
      {
        layers =
        {
          {
            filename = "__base__/graphics/entity/boiler/boiler-N-idle.png",
            priority = "extra-high",
            width = 131,
            height = 108,
            shift = util.by_pixel(-0.5, 4),
            hr_version =
        {
              filename = "__base__/graphics/entity/boiler/hr-boiler-N-idle.png",
              priority = "extra-high",
              width = 269,
              height = 221,
              shift = util.by_pixel(-1.25, 5.25),
              scale = 0.5
            }
          },
          {
            filename = "__base__/graphics/entity/boiler/boiler-N-shadow.png",
            priority = "extra-high",
            width = 137,
            height = 82,
            shift = util.by_pixel(20.5, 9),
            draw_as_shadow = true,
            hr_version =
        {
              filename = "__base__/graphics/entity/boiler/hr-boiler-N-shadow.png",
              priority = "extra-high",
              width = 274,
              height = 164,
              scale = 0.5,
              shift = util.by_pixel(20.5, 9),
              draw_as_shadow = true
            }
          }
        }
      },
      east =
      {
        layers =
        {
          {
            filename = "__base__/graphics/entity/boiler/boiler-E-idle.png",
            priority = "extra-high",
            width = 105,
            height = 147,
            shift = util.by_pixel(-3.5, -0.5),
            hr_version =
        {
              filename = "__base__/graphics/entity/boiler/hr-boiler-E-idle.png",
              priority = "extra-high",
              width = 216,
              height = 301,
              shift = util.by_pixel(-3, 1.25),
              scale = 0.5
            }
          },
          {
            filename = "__base__/graphics/entity/boiler/boiler-E-shadow.png",
            priority = "extra-high",
            width = 92,
            height = 97,
            shift = util.by_pixel(30, 9.5),
            draw_as_shadow = true,
            hr_version =
        {
              filename = "__base__/graphics/entity/boiler/hr-boiler-E-shadow.png",
              priority = "extra-high",
              width = 184,
              height = 194,
              scale = 0.5,
              shift = util.by_pixel(30, 9.5),
              draw_as_shadow = true
            }
          }
        }
      },
      south =
      {
        layers =
        {
          {
            filename = "__base__/graphics/entity/boiler/boiler-S-idle.png",
            priority = "extra-high",
            width = 128,
            height = 95,
            shift = util.by_pixel(3, 12.5),
            hr_version =
        {
              filename = "__base__/graphics/entity/boiler/hr-boiler-S-idle.png",
              priority = "extra-high",
              width = 260,
              height = 192,
              shift = util.by_pixel(4, 13),
              scale = 0.5
            }
          },
          {
            filename = "__base__/graphics/entity/boiler/boiler-S-shadow.png",
            priority = "extra-high",
            width = 156,
            height = 66,
            shift = util.by_pixel(30, 16),
            draw_as_shadow = true,
            hr_version =
        {
              filename = "__base__/graphics/entity/boiler/hr-boiler-S-shadow.png",
              priority = "extra-high",
              width = 311,
              height = 131,
              scale = 0.5,
              shift = util.by_pixel(29.75, 15.75),
              draw_as_shadow = true
            }
          }
        }
      },
      west =
      {
        layers =
        {
          {
            filename = "__base__/graphics/entity/boiler/boiler-W-idle.png",
            priority = "extra-high",
            width = 96,
            height = 132,
            shift = util.by_pixel(1, 5),
            hr_version =
        {
              filename = "__base__/graphics/entity/boiler/hr-boiler-W-idle.png",
              priority = "extra-high",
              width = 196,
              height = 273,
              shift = util.by_pixel(1.5, 7.75),
              scale = 0.5
            }
          },
          {
            filename = "__base__/graphics/entity/boiler/boiler-W-shadow.png",
            priority = "extra-high",
            width = 103,
            height = 109,
            shift = util.by_pixel(19.5, 6.5),
            draw_as_shadow = true,
            hr_version =
        {
              filename = "__base__/graphics/entity/boiler/hr-boiler-W-shadow.png",
              priority = "extra-high",
              width = 206,
              height = 218,
              scale = 0.5,
              shift = util.by_pixel(19.5, 6.5),
              draw_as_shadow = true
            }
          }
        }
      }
    },

    patch =
    {
      east =
      {
        filename = "__base__/graphics/entity/boiler/boiler-E-patch.png",
        priority = "extra-high",
        width = 3,
        height = 17,
        shift = util.by_pixel(33.5, -13.5),
        hr_version =
        {
          filename = "__base__/graphics/entity/boiler/hr-boiler-E-patch.png",
          width = 6,
          height = 36,
          shift = util.by_pixel(33.5, -13.5),
          scale = 0.5
        }
      }
    },

    fire_flicker_enabled = true,
    fire =
    {
      north =
      {
        filename = "__base__/graphics/entity/boiler/boiler-N-fire.png",
        priority = "extra-high",
        frame_count = 64,
        line_length = 8,
        width = 12,
        height = 13,
        animation_speed = 0.5,
        shift = util.by_pixel(0, -8.5),
        hr_version =
        {
          filename = "__base__/graphics/entity/boiler/hr-boiler-N-fire.png",
          priority = "extra-high",
          frame_count = 64,
          line_length = 8,
          width = 26,
          height = 26,
          animation_speed = 0.5,
          shift = util.by_pixel(0, -8.5),
          scale = 0.5
        }
      },
      east =
      {
        filename = "__base__/graphics/entity/boiler/boiler-E-fire.png",
        priority = "extra-high",
        frame_count = 64,
        line_length = 8,
        width = 14,
        height = 14,
        animation_speed = 0.5,
        shift = util.by_pixel(-10, -22),
        hr_version =
        {
          filename = "__base__/graphics/entity/boiler/hr-boiler-E-fire.png",
          priority = "extra-high",
          frame_count = 64,
          line_length = 8,
          width = 28,
          height = 28,
          animation_speed = 0.5,
          shift = util.by_pixel(-9.5, -22),
          scale = 0.5
        }
      },
      south =
      {
        filename = "__base__/graphics/entity/boiler/boiler-S-fire.png",
        priority = "extra-high",
        frame_count = 64,
        line_length = 8,
        width = 12,
        height = 9,
        animation_speed = 0.5,
        shift = util.by_pixel(-1, -26.5),
        hr_version =
        {
          filename = "__base__/graphics/entity/boiler/hr-boiler-S-fire.png",
          priority = "extra-high",
          frame_count = 64,
          line_length = 8,
          width = 26,
          height = 16,
          animation_speed = 0.5,
          shift = util.by_pixel(-1, -26.5),
          scale = 0.5
        }
      },
      west =
      {
        filename = "__base__/graphics/entity/boiler/boiler-W-fire.png",
        priority = "extra-high",
        frame_count = 64,
        line_length = 8,
        width = 14,
        height = 14,
        animation_speed = 0.5,
        shift = util.by_pixel(13, -23),
        hr_version =
        {
          filename = "__base__/graphics/entity/boiler/hr-boiler-W-fire.png",
          priority = "extra-high",
          frame_count = 64,
          line_length = 8,
          width = 30,
          height = 29,
          animation_speed = 0.5,
          shift = util.by_pixel(13, -23.25),
          scale = 0.5
        }
      }
    },

    fire_glow_flicker_enabled = true,

    fire_glow =
    {
      north =
      {
        filename = "__base__/graphics/entity/boiler/boiler-N-light.png",
        priority = "extra-high",
        frame_count = 1,
        width = 100,
        height = 87,
        shift = util.by_pixel(-1, -6.5),
        blend_mode = "additive",
        hr_version =
        {
          filename = "__base__/graphics/entity/boiler/hr-boiler-N-light.png",
          priority = "extra-high",
          frame_count = 1,
          width = 200,
          height = 173,
          shift = util.by_pixel(-1, -6.75),
          blend_mode = "additive",
          scale = 0.5
        }
      },
      east =
      {
        filename = "__base__/graphics/entity/boiler/boiler-E-light.png",
        priority = "extra-high",
        frame_count = 1,
        width = 70,
        height = 122,
        shift = util.by_pixel(0, -13),
        blend_mode = "additive",
        hr_version =
        {
          filename = "__base__/graphics/entity/boiler/hr-boiler-E-light.png",
          priority = "extra-high",
          frame_count = 1,
          width = 139,
          height = 244,
          shift = util.by_pixel(0.25, -13),
          blend_mode = "additive",
          scale = 0.5
        }
      },
      south =
      {
        filename = "__base__/graphics/entity/boiler/boiler-S-light.png",
        priority = "extra-high",
        frame_count = 1,
        width = 100,
        height = 81,
        shift = util.by_pixel(1, 5.5),
        blend_mode = "additive",
        hr_version =
        {
          filename = "__base__/graphics/entity/boiler/hr-boiler-S-light.png",
          priority = "extra-high",
          frame_count = 1,
          width = 200,
          height = 162,
          shift = util.by_pixel(1, 5.5),
          blend_mode = "additive",
          scale = 0.5
        }
      },
      west =
      {
        filename = "__base__/graphics/entity/boiler/boiler-W-light.png",
        priority = "extra-high",
        frame_count = 1,
        width = 68,
        height = 109,
        shift = util.by_pixel(2, -6.5),
        blend_mode = "additive",
        hr_version =
        {
          filename = "__base__/graphics/entity/boiler/hr-boiler-W-light.png",
          priority = "extra-high",
          frame_count = 1,
          width = 136,
          height = 217,
          shift = util.by_pixel(2, -6.25),
          blend_mode = "additive",
          scale = 0.5
        }
      }
    },
    burning_cooldown = 20
  },
	})
end
function createContainer (a)
	local name=a.name
	local icon=a.icon or "__NCP-Tech__/graphics/item/"..name..".png"
	local minable=a.minable or {hardness = 1, mining_time = 1, result = name}
	local max_health=a.max_health or 100
	local inventory_size=a.inventory_size or 16
	local fast_replaceable_group=a.fast_replaceable_group or "container"
	local aaaaaa=a.aaaaaa or aaaaaa
	data:extend({
	{
    type = "container",
    name = name,
    icon = icon,
	icon_size=32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "wooden-chest"},
    max_health = max_health,
    corpse = "small-remnants",
    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    fast_replaceable_group = fast_replaceable_group,
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    inventory_size = inventory_size,
    open_sound = { filename = "__base__/sound/wooden-chest-open.ogg" },
    close_sound = { filename = "__base__/sound/wooden-chest-close.ogg" },
    vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
	picture =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/wooden-chest/wooden-chest.png",
          priority = "extra-high",
          width = 32,
          height = 36,
          shift = util.by_pixel(0.5, -2),
          hr_version =
          {
            filename = "__base__/graphics/entity/wooden-chest/hr-wooden-chest.png",
            priority = "extra-high",
            width = 62,
            height = 72,
            shift = util.by_pixel(0.5, -2),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/wooden-chest/wooden-chest-shadow.png",
          priority = "extra-high",
          width = 52,
          height = 20,
          shift = util.by_pixel(10, 6.5),
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/wooden-chest/hr-wooden-chest-shadow.png",
            priority = "extra-high",
            width = 104,
            height = 40,
            shift = util.by_pixel(10, 6.5),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      }
    },
    circuit_wire_connection_point =
    {
      shadow =
      {
        red = {0.734375, 0.453125},
        green = {0.609375, 0.515625},
      },
      wire =
      {
        red = {0.40625, 0.21875},
        green = {0.40625, 0.375},
      }
    },
    circuit_connector_sprites = get_circuit_connector_sprites({0.1875, 0.15625}, nil, 18),
    circuit_wire_max_distance = 9
  },

	})
end
function createElectricPole (a)
	local name=a.name
	local icon=a.icon or "__NCP-Tech__/graphics/item/"..name..".png"
	local minable=a.minable or {hardness = 0.2, mining_time = 0.5, result = name}
	local max_health=a.max_health or 100
	local maximum_wire_distance=a.maximum_wire_distance or 7.5
	local supply_area_distance=a.supply_area_distance or 2.5
	local aaaaaa=a.aaaaaa or aaaaaa
	data:extend({

	{
    type = "electric-pole",
    name = name,
    icon = icon,
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = minable,
    max_health = max_health,
    corpse = "small-remnants",
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.4, -0.4}, {0.4, 0.4}},
    drawing_box = {{-0.5, -2.6}, {0.5, 0.5}},
    maximum_wire_distance = maximum_wire_distance,
    supply_area_distance = supply_area_distance,
    vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
    track_coverage_during_build_by_moving = true,
	pictures =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/small-electric-pole/small-electric-pole.png",
          priority = "extra-high",
          width = 36,
          height = 108,
          direction_count = 4,
          shift = util.by_pixel(2, -42),
          hr_version =
          {
            filename = "__base__/graphics/entity/small-electric-pole/hr-small-electric-pole.png",
            priority = "extra-high",
            width = 72,
            height = 220,
            direction_count = 4,
            shift = util.by_pixel(1.5, -42.5),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/small-electric-pole/small-electric-pole-shadow.png",
          priority = "extra-high",
          width = 130,
          height = 28,
          direction_count = 4,
          shift = util.by_pixel(50, 2),
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/small-electric-pole/hr-small-electric-pole-shadow.png",
            priority = "extra-high",
            width = 256,
            height = 52,
            direction_count = 4,
            shift = util.by_pixel(51, 3),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      }
    },
	connection_points =
    {
      {
        shadow =
        {
          copper = util.by_pixel(98.5, 2.5),
          red = util.by_pixel(111.0, 4.5),
          green = util.by_pixel(85.5, 4.0)
        },
        wire =
        {
          copper = util.by_pixel(0.0, -82.5),
          red = util.by_pixel(13.0, -81.0),
          green = util.by_pixel(-12.5, -81.0)
        }
      },
      {
        shadow =
        {
          copper = util.by_pixel(99.5, 4.0),
          red = util.by_pixel(110.0, 9.0),
          green = util.by_pixel(92.5, -4.0)
        },
        wire =
        {
          copper = util.by_pixel(1.5, -81.0),
          red = util.by_pixel(12.0, -76.0),
          green = util.by_pixel(-6.0, -89.5)
        }
      },
      {
        shadow =
        {
          copper = util.by_pixel(100.5, 5.5),
          red = util.by_pixel(102.5, 14.5),
          green = util.by_pixel(103.5, -3.5)
        },
        wire =
        {
          copper = util.by_pixel(2.5, -79.5),
          red = util.by_pixel(4.0, -71.0),
          green = util.by_pixel(5.0, -89.5)
        }
      },
      {
        shadow =
        {
          copper = util.by_pixel(98.5, -1.5),
          red = util.by_pixel(88.0, 3.5),
          green = util.by_pixel(106.0, -9.0)
        },
        wire =
        {
          copper = util.by_pixel(0.5, -86.5),
          red = util.by_pixel(-10.5, -81.5),
          green = util.by_pixel(8.0, -93.5)
        }
      }
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/small-electric-pole/electric-pole-radius-visualization.png",
      width = 12,
      height = 12,
      priority = "extra-high-no-scale"
    }
  },
	})
end
function createGenerator (a)
	local name=a.name
	local icon=a.icon or "__NCP-Tech__/graphics/item/"..name..".png"
	local minable=a.minable or {hardness = 1, mining_time = 1, result = name}
	local max_health=a.max_health or 400
	local effectivity=a.effectivity or 1
	local fluid_usage_per_tick=a.fluid_usage_per_tick or 0.5
	local maximum_temperature=a.maximum_temperature or 165
	local source_inventory_size=a.source_inventory_size or 1
	local result_inventory_size=a.result_inventory_size or 1
	local fast_replaceable_group=a.fast_replaceable_group or "steam-engine"
	local aaaaaa=a.aaaaaa or aaaaaa
	data:extend({

		{
	    type = "generator",
	    name = name,
	    icon = icon,
	    icon_size = 32,
	    flags = {"placeable-neutral","player-creation"},
	    minable = {mining_time = 1, result = "steam-engine"},
	    max_health = 400,
	    corpse = "big-remnants",
	    dying_explosion = "medium-explosion",
	    alert_icon_shift = util.by_pixel(3, -34),
	    effectivity = 1,
	    fluid_usage_per_tick = 0.5,
	    maximum_temperature = 165,
	    resistances =
	    {
	      {
	        type = "fire",
	        percent = 70
	      },
	      {
	        type = "impact",
	        percent = 30
	      }
	    },
	    fast_replaceable_group = "steam-engine",
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
	        { type = "input-output", position = {0, 3} },
	        { type = "input-output", position = {0, -3} }
	      },
	      production_type = "input-output",
	      filter = "steam",
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
          hr_version =
          {
            filename = "__base__/graphics/entity/steam-engine/hr-steam-engine-H.png",
            width = 352,
            height = 257,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(1, -4.75),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/steam-engine/steam-engine-H-shadow.png",
          width = 254,
          height = 80,
          frame_count = 32,
          line_length = 8,
          draw_as_shadow = true,
          shift = util.by_pixel(48, 24),
          hr_version =
          {
            filename = "__base__/graphics/entity/steam-engine/hr-steam-engine-H-shadow.png",
            width = 508,
            height = 160,
            frame_count = 32,
            line_length = 8,
            draw_as_shadow = true,
            shift = util.by_pixel(48, 24),
            scale = 0.5
          }
        }
      }
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
          hr_version =
          {
            filename = "__base__/graphics/entity/steam-engine/hr-steam-engine-V.png",
            width = 225,
            height = 391,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(4.75, -6.25),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/steam-engine/steam-engine-V-shadow.png",
          width = 165,
          height = 153,
          frame_count = 32,
          line_length = 8,
          draw_as_shadow = true,
          shift = util.by_pixel(40.5, 9.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/steam-engine/hr-steam-engine-V-shadow.png",
            width = 330,
            height = 307,
            frame_count = 32,
            line_length = 8,
            draw_as_shadow = true,
            shift = util.by_pixel(40.5, 9.25),
            scale = 0.5
          }
        }
      }
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
	      match_speed_to_activity = true
	    },
	    min_perceived_performance = 0.25,
	    performance_to_sound_speedup = 0.5
	  },
	})
end
function createOffshorePump (a)
	local name=a.name
	local icon=a.icon or "__NCP-Tech__/graphics/item/"..name..".png"
	local minable=a.minable or {hardness = 1, mining_time = 1, result = name}
	local max_health=a.max_health or 150
	local fluid=a.fluid or "Water"
	local pumping_speed=a.pumping_speed or 20
	local aaaaaa=a.aaaaaa or aaaaaa
	data:extend({

		{
	    type = "offshore-pump",
	    name = name,
	    icon = icon,
	    icon_size = 32, icon_mipmaps = 1, --icon_size = 64, icon_mipmaps = 4,
	    flags = {"placeable-neutral", "player-creation", "filter-directions"},
	    collision_mask = { "object-layer", "train-layer" }, -- collide just with object-layer and train-layer which don't collide with water, this allows us to build on 1 tile wide ground
	    center_collision_mask = { "water-tile", "object-layer", "player-layer" }, -- to test that tile directly under the pump is ground
	    fluid_box_tile_collision_test = { "ground-tile" },
	    adjacent_tile_collision_test = { "water-tile" },
	    adjacent_tile_collision_mask = { "ground-tile" }, -- to prevent building on edge of map :(
	    adjacent_tile_collision_box = { { -1, -2 }, { 1, -1 } },
	    minable = minable,
	    max_health = max_health,
	    corpse = "offshore-pump-remnants",
	    dying_explosion = "offshore-pump-explosion",
	    fluid = fluid,
	    resistances =
	    {
	      {
	        type = "fire",
	        percent = 70
	      },
	      {
	        type = "impact",
	        percent = 30
	      }
	    },
	    collision_box = {{-0.6, -1.05}, {0.6, 0.3}},
	    selection_box = {{-0.6, -1.49}, {0.6, 0.49}},
	    damaged_trigger_effect = hit_effects.entity(),
	    fluid_box =
	    {
	      base_area = 1,
	      base_level = 1,
	      pipe_covers = pipecoverspictures(),
	      production_type = "output",
	      filter = "water",
	      pipe_connections =
	      {
	        {
	          position = {0, 1},
	          type = "output"
	        }
	      }
	    },
	    pumping_speed = pumping_speed,
	    tile_width = 1,
	    tile_height = 1,
	    vehicle_impact_sound = sounds.generic_impact,
	    open_sound = sounds.machine_open,
	    close_sound = sounds.machine_close,
	    working_sound =
	    {
	      sound =
	      {
	        {
	          filename = "__base__/sound/offshore-pump.ogg",
	          volume = 0.5
	        }
	      },
	      match_volume_to_activity = true,
	      audible_distance_modifier = 0.7,
	      max_sounds_per_type = 3,
	      fade_in_ticks = 4,
	      fade_out_ticks = 20,
	    },
	    min_perceived_performance = 0.5,
	    always_draw_fluid = true,
	    graphics_set =
	    {
	      underwater_layer_offset = 30,
	      base_render_layer = "ground-patch",
	      animation =
	      {
	        north =
	        {
	          layers =
	          {
	            {
	              filename = "__base__/graphics/entity/offshore-pump/offshore-pump_North.png",
	              priority = "high",
	              line_length = 8,
	              frame_count = 32,
	              animation_speed = 0.25,
	              width = 48,
	              height = 84,
	              shift = util.by_pixel(-2, -16),
	              hr_version =
	              {
	                filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_North.png",
	                priority = "high",
	                line_length = 8,
	                frame_count = 32,
	                animation_speed = 0.25,
	                width = 90,
	                height = 162,
	                shift = util.by_pixel(-1, -15),
	                scale = 0.5
	              }
	            },
	            {
	              filename = "__base__/graphics/entity/offshore-pump/offshore-pump_North-shadow.png",
	              priority = "high",
	              line_length = 8,
	              frame_count = 32,
	              animation_speed = 0.25,
	              width = 78,
	              height = 70,
	              shift = util.by_pixel(12, -8),
	              draw_as_shadow = true,
	              hr_version =
	              {
	                filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_North-shadow.png",
	                priority = "high",
	                line_length = 8,
	                frame_count = 32,
	                animation_speed = 0.25,
	                width = 150,
	                height = 134,
	                shift = util.by_pixel(13, -7),
	                draw_as_shadow = true,
	                scale = 0.5
	              }
	            }
	          }
	        },
	        east =
	        {
	          layers =
	          {
	            {
	              filename = "__base__/graphics/entity/offshore-pump/offshore-pump_East.png",
	              priority = "high",
	              line_length = 8,
	              frame_count = 32,
	              animation_speed = 0.25,
	              width = 64,
	              height = 52,
	              shift = util.by_pixel(14, -2),
	              hr_version =
	              {
	                filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_East.png",
	                priority = "high",
	                line_length = 8,
	                frame_count = 32,
	                animation_speed = 0.25,
	                width = 124,
	                height = 102,
	                shift = util.by_pixel(15, -2),
	                scale = 0.5
	              }
	            },
	            {
	              filename = "__base__/graphics/entity/offshore-pump/offshore-pump_East-shadow.png",
	              priority = "high",
	              line_length = 8,
	              frame_count = 32,
	              animation_speed = 0.25,
	              width = 88,
	              height = 34,
	              shift = util.by_pixel(28, 8),
	              draw_as_shadow = true,
	              hr_version =
	              {
	                filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_East-shadow.png",
	                priority = "high",
	                line_length = 8,
	                frame_count = 32,
	                animation_speed = 0.25,
	                width = 180,
	                height = 66,
	                shift = util.by_pixel(27, 8),
	                draw_as_shadow = true,
	                scale = 0.5
	              }
	            }
	          }
	        },
	        south =
	        {
	          layers =
	          {
	            {
	              filename = "__base__/graphics/entity/offshore-pump/offshore-pump_South.png",
	              priority = "high",
	              line_length = 8,
	              frame_count = 32,
	              animation_speed = 0.25,
	              width = 48,
	              height = 96,
	              shift = util.by_pixel(-2, 0),
	              hr_version =
	              {
	                filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_South.png",
	                priority = "high",
	                line_length = 8,
	                frame_count = 32,
	                animation_speed = 0.25,
	                width = 92,
	                height = 192,
	                shift = util.by_pixel(-1, 0),
	                scale = 0.5
	              }
	            },
	            {
	              filename = "__base__/graphics/entity/offshore-pump/offshore-pump_South-shadow.png",
	              priority = "high",
	              line_length = 8,
	              frame_count = 32,
	              animation_speed = 0.25,
	              width = 80,
	              height = 66,
	              shift = util.by_pixel(16, 22),
	              draw_as_shadow = true,
	              hr_version =
	              {
	                filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_South-shadow.png",
	                priority = "high",
	                line_length = 8,
	                frame_count = 32,
	                animation_speed = 0.25,
	                width = 164,
	                height = 128,
	                shift = util.by_pixel(15, 23),
	                draw_as_shadow = true,
	                scale = 0.5
	              }
	            }
	          }
	        },
	        west =
	        {
	          layers =
	          {
	            {
	              filename = "__base__/graphics/entity/offshore-pump/offshore-pump_West.png",
	              priority = "high",
	              line_length = 8,
	              frame_count = 32,
	              animation_speed = 0.25,
	              width = 64,
	              height = 52,
	              shift = util.by_pixel(-16, -2),
	              hr_version =
	              {
	                filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_West.png",
	                priority = "high",
	                line_length = 8,
	                frame_count = 32,
	                animation_speed = 0.25,
	                width = 124,
	                height = 102,
	                shift = util.by_pixel(-15, -2),
	                scale = 0.5
	              }
	            },
	            {
	              filename = "__base__/graphics/entity/offshore-pump/offshore-pump_West-shadow.png",
	              priority = "high",
	              line_length = 8,
	              frame_count = 32,
	              animation_speed = 0.25,
	              width = 88,
	              height = 34,
	              shift = util.by_pixel(-4, 8),
	              draw_as_shadow = true,
	              hr_version =
	              {
	                filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_West-shadow.png",
	                priority = "high",
	                line_length = 8,
	                frame_count = 32,
	                animation_speed = 0.25,
	                width = 172,
	                height = 66,
	                shift = util.by_pixel(-3, 8),
	                draw_as_shadow = true,
	                scale = 0.5
	              }
	            }
	          }
	        }
	      },
	      fluid_animation =
	      {
	        north =
	        {
	          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_North-fluid.png",
	          apply_runtime_tint = true,
	          line_length = 8,
	          frame_count = 32,
	          animation_speed = 0.25,
	          width = 22,
	          height = 20,
	          shift = util.by_pixel(-2, -22),
	          hr_version = {
	            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_North-fluid.png",
	            apply_runtime_tint = true,
	            line_length = 8,
	            frame_count = 32,
	            animation_speed = 0.25,
	            width = 40,
	            height = 40,
	            shift = util.by_pixel(-1, -22),
	            scale = 0.5
	          }
	        },
	        east =
	        {
	          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_East-fluid.png",
	          apply_runtime_tint = true,
	          line_length = 8,
	          frame_count = 32,
	          animation_speed = 0.25,
	          width = 20,
	          height = 24,
	          shift = util.by_pixel(6, -10),
	          hr_version = {
	            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_East-fluid.png",
	            apply_runtime_tint = true,
	            line_length = 8,
	            frame_count = 32,
	            animation_speed = 0.25,
	            width = 38,
	            height = 50,
	            shift = util.by_pixel(6, -11),
	            scale = 0.5
	          }
	        },
	        south =
	        {
	          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_South-fluid.png",
	          apply_runtime_tint = true,
	          line_length = 8,
	          frame_count = 32,
	          animation_speed = 0.25,
	          width = 20,
	          height = 8,
	          shift = util.by_pixel(-2, -4),
	          hr_version = {
	            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_South-fluid.png",
	            apply_runtime_tint = true,
	            line_length = 8,
	            frame_count = 32,
	            animation_speed = 0.25,
	            width = 36,
	            height = 14,
	            shift = util.by_pixel(-1, -4),
	            scale = 0.5
	          }
	        },
	        west =
	        {
	          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_West-fluid.png",
	          apply_runtime_tint = true,
	          line_length = 8,
	          frame_count = 32,
	          animation_speed = 0.25,
	          width = 20,
	          height = 24,
	          shift = util.by_pixel(-8, -10),
	          hr_version = {
	            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_West-fluid.png",
	            apply_runtime_tint = true,
	            line_length = 8,
	            frame_count = 32,
	            animation_speed = 0.25,
	            width = 36,
	            height = 50,
	            shift = util.by_pixel(-7, -11),
	            scale = 0.5
	          }
	        }
	      },
	      glass_pictures =
	      {
	        north =
	        {
	          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_North-glass.png",
	          width = 18,
	          height = 20,
	          shift = util.by_pixel(-2, -22),
	          hr_version =
	          {
	            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_North-glass.png",
	            width = 36,
	            height = 40,
	            shift = util.by_pixel(-2, -22),
	            scale = 0.5
	          }
	        },
	        east =
	        {
	          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_East-glass.png",
	          width = 18,
	          height = 18,
	          shift = util.by_pixel(4, -14),
	          hr_version =
	          {
	            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_East-glass.png",
	            width = 30,
	            height = 32,
	            shift = util.by_pixel(5, -13),
	            scale = 0.5
	          }
	        },
	        south =
	        {
	          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_South-glass.png",
	          width = 22,
	          height = 12,
	          shift = util.by_pixel(-2, -6),
	          hr_version =
	          {
	            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_South-glass.png",
	            width = 40,
	            height = 24,
	            shift = util.by_pixel(-1, -6),
	            scale = 0.5
	          }
	        },
	        west =
	        {
	          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_West-glass.png",
	          width = 16,
	          height = 16,
	          shift = util.by_pixel(-6, -14),
	          hr_version =
	          {
	            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_West-glass.png",
	            width = 30,
	            height = 32,
	            shift = util.by_pixel(-6, -14),
	            scale = 0.5
	          }
	        }
	      },
	      base_pictures =
	      {
	        north =
	        {
	          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_North-legs.png",
	          width = 60,
	          height = 52,
	          shift = util.by_pixel(-2, -4),
	          hr_version =
	          {
	            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_North-legs.png",
	            width = 114,
	            height = 106,
	            shift = util.by_pixel(-1, -5),
	            scale = 0.5
	          }
	        },
	        east =
	        {
	          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_East-legs.png",
	          width = 54,
	          height = 32,
	          shift = util.by_pixel(4, 12),
	          hr_version =
	          {
	            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_East-legs.png",
	            width = 106,
	            height = 60,
	            shift = util.by_pixel(4, 13),
	            scale = 0.5
	          }
	        },
	        south =
	        {
	          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_South-legs.png",
	          width = 56,
	          height = 54,
	          shift = util.by_pixel(-2, 6),
	          hr_version =
	          {
	            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_South-legs.png",
	            width = 110,
	            height = 108,
	            shift = util.by_pixel(-2, 6),
	            scale = 0.5
	          }
	        },
	        west =
	        {
	          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_West-legs.png",
	          width = 54,
	          height = 32,
	          shift = util.by_pixel(-6, 12),
	          hr_version =
	          {
	            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_West-legs.png",
	            width = 108,
	            height = 64,
	            shift = util.by_pixel(-6, 12),
	            scale = 0.5
	          }
	        }
	      },
	      underwater_pictures =
	      {
	        north =
	        {
	          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_North-underwater.png",
	          width = 52,
	          height = 16,
	          shift = util.by_pixel(-2, -34),
	          hr_version =
	          {
	            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_North-underwater.png",
	            width = 98,
	            height = 36,
	            shift = util.by_pixel(-1, -32),
	            scale = 0.5
	          }
	        },
	        east =
	        {
	          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_East-underwater.png",
	          width = 18,
	          height = 38,
	          shift = util.by_pixel(40, 16),
	          hr_version =
	          {
	            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_East-underwater.png",
	            width = 40,
	            height = 72,
	            shift = util.by_pixel(39, 17),
	            scale = 0.5
	          }
	        },
	        south =
	        {
	          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_South-underwater.png",
	          width = 52,
	          height = 26,
	          shift = util.by_pixel(-2, 48),
	          hr_version =
	          {
	            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_South-underwater.png",
	            width = 98,
	            height = 48,
	            shift = util.by_pixel(-1, 49),
	            scale = 0.5
	          }
	        },
	        west =
	        {
	          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_West-underwater.png",
	          width = 20,
	          height = 34,
	          shift = util.by_pixel(-40, 18),
	          hr_version =
	          {
	            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_West-underwater.png",
	            width = 40,
	            height = 72,
	            shift = util.by_pixel(-40, 17),
	            scale = 0.5
	          }
	        }
	      }
	    },
	    placeable_position_visualization =
	    {
	      filename = "__core__/graphics/cursor-boxes-32x32.png",
	      priority = "extra-high-no-scale",
	      width = 64,
	      height = 64,
	      scale = 0.5,
	      x = 3*64
	    },
	    circuit_wire_connection_points = circuit_connector_definitions["offshore-pump"].points,
	    circuit_connector_sprites = circuit_connector_definitions["offshore-pump"].sprites,
	    circuit_wire_max_distance = default_circuit_wire_max_distance,
	    water_reflection =
	    {
	      pictures =
	      {
	        filename = "__base__/graphics/entity/offshore-pump/offshore-pump-reflection.png",
	        priority = "extra-high",
	        width = 132,
	        height = 156,
	        shift = util.by_pixel(0, 19),
	        variation_count = 4,
	        scale = 1,
	      },
	      rotate = false,
	      orientation_to_variation = true
	    }
	  },
	})
end
function createInserter (a)
	local name=a.name
	local icon=a.icon or "__NCP-Tech__/graphics/item/"..name..".png"
	local minable=a.minable or {hardness = 0.2, mining_time = 0.5, result = name}
	local max_health=a.max_health or 150
	local energy_per_movement=a.energy_per_movement or "5KJ"
	local energy_per_rotation=a.energy_per_rotation or "5KJ"
	local extension_speed=a.extension_speed or 0.03
	local rotation_speed=a.rotation_speed or 0.014
	local fast_replaceable_group=a.fast_replaceable_group or "inserter"
	local aaaaaa=a.aaaaaa or aaaaaa
	data:extend({

	{
    type = "inserter",
    name = name,
    icon = icon,
	icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = minable,
    max_health = max_health,
    corpse = "small-remnants",
    allow_custom_vectors = false,
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
    energy_per_movement = energy_per_movement,
    energy_per_rotation = energy_per_rotation,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "0.4kW"
    },
    extension_speed = extension_speed,
    rotation_speed = rotation_speed,
    fast_replaceable_group = "inserter",
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      match_progress_to_activity = true,
      sound =
      {
        {
          filename = "__base__/sound/inserter-basic-1.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-basic-2.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-basic-3.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-basic-4.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-basic-5.ogg",
          volume = 0.75
        }
      }
    },
	hand_base_picture =
    {
      filename = "__base__/graphics/entity/inserter/inserter-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 33,
      hr_version =
      {
        filename = "__base__/graphics/entity/inserter/hr-inserter-hand-base.png",
        priority = "extra-high",
        width = 32,
        height = 136,
        scale = 0.25
      }
    },
    hand_closed_picture =
    {
      filename = "__base__/graphics/entity/inserter/inserter-hand-closed.png",
      priority = "extra-high",
      width = 18,
      height = 41,
      hr_version =
      {
        filename = "__base__/graphics/entity/inserter/hr-inserter-hand-closed.png",
        priority = "extra-high",
        width = 72,
        height = 164,
        scale = 0.25
      }
    },
    hand_open_picture =
    {
      filename = "__base__/graphics/entity/inserter/inserter-hand-open.png",
      priority = "extra-high",
      width = 18,
      height = 41,
      hr_version =
      {
        filename = "__base__/graphics/entity/inserter/hr-inserter-hand-open.png",
        priority = "extra-high",
        width = 72,
        height = 164,
        scale = 0.25
      }
    },
    hand_base_shadow =
    {
      filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
      priority = "extra-high",
      width = 8,
      height = 33,
      hr_version =
      {
        filename = "__base__/graphics/entity/burner-inserter/hr-burner-inserter-hand-base-shadow.png",
        priority = "extra-high",
        width = 32,
        height = 132,
        scale = 0.25
      }
    },
    hand_closed_shadow =
    {
      filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
      priority = "extra-high",
      width = 18,
      height = 41,
      hr_version =
      {
        filename = "__base__/graphics/entity/burner-inserter/hr-burner-inserter-hand-closed-shadow.png",
        priority = "extra-high",
        width = 72,
        height = 164,
        scale = 0.25
      }
    },
    hand_open_shadow =
    {
      filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open-shadow.png",
      priority = "extra-high",
      width = 18,
      height = 41,
      hr_version =
      {
        filename = "__base__/graphics/entity/burner-inserter/hr-burner-inserter-hand-open-shadow.png",
        priority = "extra-high",
        width = 72,
        height = 164,
        scale = 0.25
      }
    },
    pickup_position = {0, -1},
    insert_position = {0, 1.2},
    platform_picture =
    {
      sheet =
      {
        filename = "__base__/graphics/entity/inserter/inserter-platform.png",
        priority = "extra-high",
        width = 46,
        height = 46,
        shift = {0.09375, 0},
        hr_version =
        {
          filename = "__base__/graphics/entity/inserter/hr-inserter-platform.png",
          priority = "extra-high",
          width = 105,
          height = 79,
          shift = util.by_pixel(1.5, 7.5-1),
          scale = 0.5
        }
      }
    },
    circuit_wire_connection_points = circuit_connector_definitions["inserter"].points,
    circuit_connector_sprites = circuit_connector_definitions["inserter"].sprites,
    circuit_wire_max_distance = inserter_circuit_wire_max_distance,
    default_stack_control_input_signal = inserter_default_stack_control_input_signal
  },
	})
end
function createRadar (a)
	local name=a.name
	local icon=a.icon or "__NCP-Tech__/graphics/item/"..name..".png"
	local minable=a.minable or {hardness = 0.2, mining_time = 0.5, result = name}
	local max_health=a.max_health or 250
	local energy_per_sector=a.energy_per_sector or "10MJ"

	local aaaaaa=a.aaaaaa or aaaaaa
	data:extend({

		{
	    type = "radar",
	    name = name,
	    icon = "__base__/graphics/icons/radar.png",
	    icon_size = 32,
	    flags = {"placeable-player", "player-creation"},
	    minable = {hardness = 0.2, mining_time = 0.5, result = "radar"},
	    max_health = 250,
	    corpse = "big-remnants",
	    resistances =
	    {
	      {
	        type = "fire",
	        percent = 70
	      },
	      {
	        type = "impact",
	        percent = 30
	      }
	    },
	    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
	    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	    energy_per_sector = "10MJ",
	    max_distance_of_sector_revealed = 14,
	    max_distance_of_nearby_sector_revealed = 3,
	    energy_per_nearby_scan = "250kJ",
	    energy_source =
	    {
	      type = "electric",
	      usage_priority = "secondary-input"
	    },
	    energy_usage = "300kW",
	    integration_patch =
	    {
	      filename = "__base__/graphics/entity/radar/radar-integration.png",
	      priority = "low",
	      width = 119,
	      height = 108,
	      apply_projection = false,
	      direction_count = 1,
	      repeat_count = 64,
	      line_length = 1,
	      shift = util.by_pixel(1.5, 4),
	      hr_version =
	      {
	        filename = "__base__/graphics/entity/radar/hr-radar-integration.png",
	        priority = "low",
	        width = 238,
	        height = 216,
	        apply_projection = false,
	        direction_count = 1,
	        repeat_count = 64,
	        line_length = 1,
	        shift = util.by_pixel(1.5, 4),
	        scale = 0.5
	      }
	    },
		pictures =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/radar/radar.png",
          priority = "low",
          width = 98,
          height = 128,
          apply_projection = false,
          direction_count = 64,
          line_length = 8,
          shift = util.by_pixel(1, -16),
          hr_version =
          {
            filename = "__base__/graphics/entity/radar/hr-radar.png",
            priority = "low",
            width = 196,
            height = 254,
            apply_projection = false,
            direction_count = 64,
            line_length = 8,
            shift = util.by_pixel(1, -16),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/radar/radar-shadow.png",
          priority = "low",
          width = 172,
          height = 94,
          apply_projection = false,
          direction_count = 64,
          line_length = 8,
          shift = util.by_pixel(39,3),
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/radar/hr-radar-shadow.png",
            priority = "low",
            width = 343,
            height = 186,
            apply_projection = false,
            direction_count = 64,
            line_length = 8,
            shift = util.by_pixel(39.25,3),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      }
    },
	    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
	    working_sound =
	    {
	      sound =
	      {
	        {
	          filename = "__base__/sound/radar.ogg"
	        }
	      },
	      apparent_volume = 2
	    },
	    radius_minimap_visualisation_color = { r = 0.059, g = 0.092, b = 0.235, a = 0.275 }
	  },
	})
end
function createLamp (a)
	local name=a.name
	local icon=a.icon or "__NCP-Tech__/graphics/item/"..name..".png"
	local minable=a.minable or {hardness = 0.2, mining_time = 0.5, result = name}
	local max_health=a.max_health or 100
	local energy_usage_per_tick=a.energy_usage_per_tick or "5KW"
	local energy_per_rotation=a.energy_per_rotation or 5000
	local extension_speed=a.extension_speed or 0.03
	local rotation_speed=a.rotation_speed or 0.014
	local result_inventory_size=a.result_inventory_size or 1
	local fast_replaceable_group=a.fast_replaceable_group or "inserter"
	local aaaaaa=a.aaaaaa or aaaaaa
	data:extend({

	{
    type = "lamp",
    name = name,
    icon = icon,
	icon_size=32,
    flags = {"placeable-neutral", "player-creation"},
    minable = minable,
    max_health = max_health,
    corpse = "small-remnants",
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = energy_usage_per_tick,
    light = {intensity = 0.9, size = 40, color = {r=1.0, g=1.0, b=1.0}},
    light_when_colored = {intensity = 1, size = 6, color = {r=1.0, g=1.0, b=1.0}},
    glow_size = 6,
    glow_color_intensity = 0.135,
	picture_off =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/small-lamp/lamp.png",
          priority = "high",
          width = 42,
          height = 36,
          frame_count = 1,
          axially_symmetrical = false,
          direction_count = 1,
          shift = util.by_pixel(0,3),
          hr_version =
          {
            filename = "__base__/graphics/entity/small-lamp/hr-lamp.png",
            priority = "high",
            width = 83,
            height = 70,
            frame_count = 1,
            axially_symmetrical = false,
            direction_count = 1,
            shift = util.by_pixel(0.25,3),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/small-lamp/lamp-shadow.png",
          priority = "high",
          width = 38,
          height = 24,
          frame_count = 1,
          axially_symmetrical = false,
          direction_count = 1,
          shift = util.by_pixel(4,5),
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/small-lamp/hr-lamp-shadow.png",
            priority = "high",
            width = 76,
            height = 47,
            frame_count = 1,
            axially_symmetrical = false,
            direction_count = 1,
            shift = util.by_pixel(4, 4.75),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      }
    },
    picture_on =
    {
      filename = "__base__/graphics/entity/small-lamp/lamp-light.png",
      priority = "high",
      width = 46,
      height = 40,
      frame_count = 1,
      axially_symmetrical = false,
      direction_count = 1,
      shift = util.by_pixel(0, -7),
      hr_version =
      {
        filename = "__base__/graphics/entity/small-lamp/hr-lamp-light.png",
        priority = "high",
        width = 90,
        height = 78,
        frame_count = 1,
        axially_symmetrical = false,
        direction_count = 1,
        shift = util.by_pixel(0, -7),
        scale = 0.5
      }
    },
    signal_to_color_mapping =
    {
      {type="virtual", name="signal-red", color={r=1,g=0,b=0}},
      {type="virtual", name="signal-green", color={r=0,g=1,b=0}},
      {type="virtual", name="signal-blue", color={r=0,g=0,b=1}},
      {type="virtual", name="signal-yellow", color={r=1,g=1,b=0}},
      {type="virtual", name="signal-pink", color={r=1,g=0,b=1}},
      {type="virtual", name="signal-cyan", color={r=0,g=1,b=1}}
    },

    circuit_wire_connection_point = circuit_connector_definitions["lamp"].points,
    circuit_connector_sprites = circuit_connector_definitions["lamp"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance

  },
	})
end

function createMiningDrill (a)
	--local drillFuctions= require "__base__.prototypes.entity.demo-mining-drill" -- turhaaa
	local name=a.name
	local icon=a.icon or "__NCP-Tech__/graphics/item/"..name..".png"
	local minable=a.minable or {hardness = 1, mining_time = 1, result = name}
	local max_health=a.max_health or 300
	local mining_speed=a.mining_speed or 0.5
	local energy_usage=a.energy_usage or "90kW"
	local mining_power=a.mining_power or 3
	local resource_searching_radius=a.resource_searching_radius or 2.49

	local aaaaaa=a.aaaaaa or aaaaaa

	electric_drill_animation_speed = 0.4
	electric_drill_animation_sequence =
	{
	  1, 1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
	  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
	  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
	  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
	  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
	  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
	  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
	  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
	  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
	  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
	  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
	  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
	  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
	  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
	  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
	  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
	  21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 1, 1
	}

	electric_drill_animation_shadow_sequence =
	{
	  1, 1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
	  21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
	  21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
	  21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
	  21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
	  21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
	  21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
	  21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
	  21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
	  21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
	  21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
	  21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
	  21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
	  21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
	  21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
	  21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
	  21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 1, 1
	}



	data:extend({
		{
	    type = "mining-drill",
	    name = name,
	    icon = "__base__/graphics/icons/electric-mining-drill.png",
	    icon_size = 64, icon_mipmaps = 4,
	    flags = {"placeable-neutral", "player-creation"},
	    minable = minable,
	    max_health = 300,
	    resource_categories = {"basic-solid"},
	    corpse = "electric-mining-drill-remnants",
	    dying_explosion = "electric-mining-drill-explosion",
	    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
	    selection_box = {{ -1.5, -1.5}, {1.5, 1.5}},
	    damaged_trigger_effect = hit_effects.entity(),
	    input_fluid_box = (not data.is_demo) and
	    {
	      production_type = "input-output",
	      pipe_picture = assembler2pipepictures(),
	      pipe_covers = pipecoverspictures(),
	      base_area = 1,
	      height = 2,
	      base_level = -1,
	      pipe_connections =
	      {
	        { position = {-2, 0} },
	        { position = {2, 0} },
	        { position = {0, 2} }
	      }
	    } or nil,
	    working_sound =
	    {
	      sound =
	      {
	        filename = "__base__/sound/electric-mining-drill.ogg",
	        volume = 0.5
	      },
	      audible_distance_modifier = 0.6,
	      fade_in_ticks = 4,
	      fade_out_ticks = 20,
	    },
	    vehicle_impact_sound = sounds.generic_impact,
	    open_sound = sounds.machine_open,
	    close_sound = sounds.machine_close,

	    graphics_set =
	    {
	      drilling_vertical_movement_duration = 10 / electric_drill_animation_speed,
	      animation_progress = 1,
	      min_animation_progress = 0,
	      max_animation_progress = 30,

	      status_colors = electric_mining_drill_status_colors(),

	      circuit_connector_layer = "object",
	      circuit_connector_secondary_draw_order = { north = 14, east = 30, south = 30, west = 30 },

	      animation =
	      {
	        north =
	        {
	          layers =
	          {
	            {
	              priority = "high",
	              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N.png",
	              line_length = 1,
	              width = 96,
	              height = 104,
	              frame_count = 1,
	              animation_speed = electric_drill_animation_speed,
	              direction_count = 1,
	              shift = util.by_pixel(0, -4),
	              repeat_count = 5,
	              hr_version =
	              {
	                priority = "high",
	                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N.png",
	                line_length = 1,
	                width = 190,
	                height = 208,
	                frame_count = 1,
	                animation_speed = electric_drill_animation_speed,
	                direction_count = 1,
	                shift = util.by_pixel(0, -4),
	                repeat_count = 5,
	                scale = 0.5,
	              }
	            },
	            {
	              priority = "high",
	              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-output.png",
	              line_length = 5,
	              width = 32,
	              height = 34,
	              frame_count = 5,
	              animation_speed = electric_drill_animation_speed,
	              direction_count = 1,
	              shift = util.by_pixel(-4, -44),
	              hr_version =
	              {
	                priority = "high",
	                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-output.png",
	                line_length = 5,
	                width = 60,
	                height = 66,
	                frame_count = 5,
	                animation_speed = electric_drill_animation_speed,
	                direction_count = 1,
	                shift = util.by_pixel(-3, -44),
	                scale = 0.5,
	              }
	            },
	            {
	              priority = "high",
	              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-shadow.png",
	              line_length = 1,
	              width = 106,
	              height = 104,
	              frame_count = 1,
	              animation_speed = electric_drill_animation_speed,
	              draw_as_shadow = true,
	              shift = util.by_pixel(6, -4),
	              repeat_count = 5,
	              hr_version =
	              {
	                priority = "high",
	                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-shadow.png",
	                line_length = 1,
	                width = 212,
	                height = 204,
	                frame_count = 1,
	                animation_speed = electric_drill_animation_speed,
	                draw_as_shadow = true,
	                shift = util.by_pixel(6, -3),
	                repeat_count = 5,
	                scale = 0.5,
	              }
	            }
	          }
	        },
	        east =
	        {
	          layers =
	          {
	            {
	              priority = "high",
	              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E.png",
	              line_length = 1,
	              width = 96,
	              height = 94,
	              frame_count = 1,
	              animation_speed = electric_drill_animation_speed,
	              direction_count = 1,
	              shift = util.by_pixel(0, -4),
	              repeat_count = 5,
	              hr_version =
	              {
	                priority = "high",
	                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E.png",
	                line_length = 1,
	                width = 192,
	                height = 188,
	                frame_count = 1,
	                animation_speed = electric_drill_animation_speed,
	                direction_count = 1,
	                shift = util.by_pixel(0, -4),
	                repeat_count = 5,
	                scale = 0.5,
	              }
	            },
	            {
	              priority = "high",
	              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-output.png",
	              line_length = 5,
	              width = 26,
	              height = 38,
	              frame_count = 5,
	              animation_speed = electric_drill_animation_speed,
	              direction_count = 1,
	              shift = util.by_pixel(30, -8),
	              hr_version =
	              {
	                priority = "high",
	                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-output.png",
	                line_length = 5,
	                width = 50,
	                height = 74,
	                frame_count = 5,
	                animation_speed = electric_drill_animation_speed,
	                direction_count = 1,
	                shift = util.by_pixel(30, -8),
	                scale = 0.5,
	              }
	            },
	            {
	              priority = "high",
	              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-shadow.png",
	              line_length = 1,
	              width = 112,
	              height = 92,
	              frame_count = 1,
	              animation_speed = electric_drill_animation_speed,
	              draw_as_shadow = true,
	              shift = util.by_pixel(10, 2),
	              repeat_count = 5,
	              hr_version =
	              {
	                priority = "high",
	                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-shadow.png",
	                line_length = 1,
	                width = 222,
	                height = 182,
	                frame_count = 1,
	                animation_speed = electric_drill_animation_speed,
	                draw_as_shadow = true,
	                shift = util.by_pixel(10, 2),
	                repeat_count = 5,
	                scale = 0.5,
	              }
	            }
	          }
	        },
	        south =
	        {
	          layers =
	          {
	            {
	              priority = "high",
	              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S.png",
	              line_length = 1,
	              width = 92,
	              height = 98,
	              frame_count = 1,
	              animation_speed = electric_drill_animation_speed,
	              direction_count = 1,
	              shift = util.by_pixel(0, -2),
	              repeat_count = 5,
	              hr_version =
	              {
	                priority = "high",
	                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S.png",
	                line_length = 1,
	                width = 184,
	                height = 192,
	                frame_count = 1,
	                animation_speed = electric_drill_animation_speed,
	                direction_count = 1,
	                shift = util.by_pixel(0, -1),
	                repeat_count = 5,
	                scale = 0.5,
	              }
	            },
	            {
	              priority = "high",
	              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-shadow.png",
	              line_length = 1,
	              width = 106,
	              height = 102,
	              frame_count = 1,
	              animation_speed = electric_drill_animation_speed,
	              draw_as_shadow = true,
	              shift = util.by_pixel(6, 2),
	              repeat_count = 5,
	              hr_version =
	              {
	                priority = "high",
	                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-shadow.png",
	                line_length = 1,
	                width = 212,
	                height = 204,
	                frame_count = 1,
	                animation_speed = electric_drill_animation_speed,
	                draw_as_shadow = true,
	                shift = util.by_pixel(6, 2),
	                repeat_count = 5,
	                scale = 0.5,
	              }
	            }
	          }
	        },
	        west =
	        {
	          layers =
	          {
	            {
	              priority = "high",
	              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W.png",
	              line_length = 1,
	              width = 96,
	              height = 94,
	              frame_count = 1,
	              animation_speed = electric_drill_animation_speed,
	              direction_count = 1,
	              shift = util.by_pixel(0, -4),
	              repeat_count = 5,
	              hr_version =
	              {
	                priority = "high",
	                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W.png",
	                line_length = 1,
	                width = 192,
	                height = 188,
	                frame_count = 1,
	                animation_speed = electric_drill_animation_speed,
	                direction_count = 1,
	                shift = util.by_pixel(0, -4),
	                repeat_count = 5,
	                scale = 0.5,
	              }
	            },
	            {
	              priority = "high",
	              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-output.png",
	              line_length = 5,
	              width = 24,
	              height = 28,
	              frame_count = 5,
	              animation_speed = electric_drill_animation_speed,
	              direction_count = 1,
	              shift = util.by_pixel(-30, -12),
	              hr_version =
	              {
	                priority = "high",
	                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-output.png",
	                line_length = 5,
	                width = 50,
	                height = 60,
	                frame_count = 5,
	                animation_speed = electric_drill_animation_speed,
	                direction_count = 1,
	                shift = util.by_pixel(-31, -13),
	                scale = 0.5,
	              }
	            },
	            {
	              priority = "high",
	              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-shadow.png",
	              line_length = 1,
	              width = 102,
	              height = 92,
	              frame_count = 1,
	              animation_speed = electric_drill_animation_speed,
	              draw_as_shadow = true,
	              shift = util.by_pixel(-6, 2),
	              repeat_count = 5,
	              hr_version =
	              {
	                priority = "high",
	                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-shadow.png",
	                line_length = 1,
	                width = 200,
	                height = 182,
	                frame_count = 1,
	                animation_speed = electric_drill_animation_speed,
	                draw_as_shadow = true,
	                shift = util.by_pixel(-5, 2),
	                repeat_count = 5,
	                scale = 0.5,
	              }
	            }
	          }
	        },
	      },

	      shift_animation_waypoints =
	      {
	        -- Movement should be between 0.25-0.4 distance
	        -- Bounds -0.5 - 0.6
	        north = { {0, 0}, {0, -0.3}, {0, 0.1}, {0, 0.5}, {0, 0.2}, {0, -0.1}, {0, -0.5}, {0, -0.15}, {0, 0.25}, {0, 0.6}, {0, 0.3} },
	        -- Bounds -1 - 0
	        east = { {0, 0}, {-0.4, 0}, {-0.1, 0}, {-0.5, 0}, {-0.75, 0}, {-1, 0}, {-0.65, 0}, {-0.3, 0}, {-0.9, 0}, {-0.6, 0}, {-0.3, 0} },
	        -- Bounds -1 - 0
	        south = { {0, 0}, {0, -0.4}, {0, -0.1}, {0, -0.5}, {0, -0.75}, {0, -1}, {0, -0.65}, {0, -0.3}, {0, -0.9}, {0, -0.6}, {0, -0.3} },
	        -- Bounds 0 - 1
	        west = { {0, 0}, {0.4, 0}, {0.1, 0}, {0.5, 0}, {0.75, 0}, {1, 0}, {0.65, 0}, {0.3, 0}, {0.9, 0}, {0.6, 0}, {0.3, 0} },
	      },

	      shift_animation_waypoint_stop_duration = 195 / electric_drill_animation_speed,
	      shift_animation_transition_duration = 30 / electric_drill_animation_speed,

	      working_visualisations =
	      {
	        -- dust animation 1
	        {
	          constant_speed = true,
	          synced_fadeout = true,
	          align_to_waypoint = true,
	          apply_tint = "resource-color",
	          animation = electric_mining_drill_smoke(),
	          north_position = { 0, 0.25 },
	          east_position = { 0, 0 },
	          south_position = { 0, 0.25 },
	          west_position = { 0, 0 },
	        },

	        -- dust animation directional 1
	        {
	          constant_speed = true,
	          fadeout = true,
	          apply_tint = "resource-color",
	          north_animation =
	          {
	            layers =
	            {
	              {
	                priority = "high",
	                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-smoke.png",
	                line_length = 5,
	                width = 24,
	                height = 30,
	                frame_count = 10,
	                animation_speed = electric_drill_animation_speed,
	                direction_count = 1,
	                shift = util.by_pixel(-2, -44),
	                hr_version =
	                {
	                  priority = "high",
	                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-smoke.png",
	                  line_length = 5,
	                  width = 42,
	                  height = 58,
	                  frame_count = 10,
	                  animation_speed = electric_drill_animation_speed,
	                  direction_count = 1,
	                  shift = util.by_pixel(-1, -44),
	                  scale = 0.5,
	                }
	              }
	            }
	          },
	          east_animation = nil,
	          south_animation = nil,
	          west_animation = nil,
	        },

	        -- drill back animation
	        {
	          animated_shift = true,
	          always_draw = true,
	          north_animation =
	          {
	            layers =
	            {
	              electric_mining_drill_animation(),
	              electric_mining_drill_shadow_animation()
	            }
	          },
	          east_animation =
	          {
	            layers =
	            {
	              electric_mining_drill_horizontal_animation(),
	              electric_mining_drill_horizontal_shadow_animation()
	            }
	          },
	          south_animation =
	          {
	            layers =
	            {
	              electric_mining_drill_animation(),
	              electric_mining_drill_shadow_animation()
	            }
	          },
	          west_animation =
	          {
	            layers =
	            {
	              electric_mining_drill_horizontal_animation(),
	              electric_mining_drill_horizontal_shadow_animation()
	            }
	          },
	        },

	        -- dust animation 2
	        {
	          constant_speed = true,
	          synced_fadeout = true,
	          align_to_waypoint = true,
	          apply_tint = "resource-color",
	          animation = electric_mining_drill_smoke_front(),
	          north_position = { 0, 0.25 },
	          east_position = { 0, 0 },
	          south_position = { 0, 0.25 },
	          west_position = { 0, 0 },
	        },

	        -- dust animation directional 2
	        {
	          constant_speed = true,
	          fadeout = true,
	          apply_tint = "resource-color",
	          north_animation = nil,
	          east_animation =
	          {
	            layers =
	            {
	              {
	                priority = "high",
	                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-smoke.png",
	                line_length = 5,
	                width = 24,
	                height = 28,
	                frame_count = 10,
	                animation_speed = electric_drill_animation_speed,
	                direction_count = 1,
	                shift = util.by_pixel(24, -12),
	                hr_version =
	                {
	                  priority = "high",
	                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-smoke.png",
	                  line_length = 5,
	                  width = 46,
	                  height = 56,
	                  frame_count = 10,
	                  animation_speed = electric_drill_animation_speed,
	                  direction_count = 1,
	                  shift = util.by_pixel(24, -12),
	                  scale = 0.5,
	                }
	              }
	            }
	          },
	          south_animation =
	          {
	            layers =
	            {
	              {
	                priority = "high",
	                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-smoke.png",
	                line_length = 5,
	                width = 24,
	                height = 18,
	                frame_count = 10,
	                animation_speed = electric_drill_animation_speed,
	                direction_count = 1,
	                shift = util.by_pixel(-2, 20),
	                hr_version =
	                {
	                  priority = "high",
	                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-smoke.png",
	                  line_length = 5,
	                  width = 48,
	                  height = 36,
	                  frame_count = 10,
	                  animation_speed = electric_drill_animation_speed,
	                  direction_count = 1,
	                  shift = util.by_pixel(-2, 20),
	                  scale = 0.5,
	                }
	              }
	            }
	          },
	          west_animation =
	          {
	            layers =
	            {
	              {
	                priority = "high",
	                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-smoke.png",
	                line_length = 5,
	                width = 26,
	                height = 30,
	                frame_count = 10,
	                animation_speed = electric_drill_animation_speed,
	                direction_count = 1,
	                shift = util.by_pixel(-26, -12),
	                hr_version =
	                {
	                  priority = "high",
	                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-smoke.png",
	                  line_length = 5,
	                  width = 46,
	                  height = 54,
	                  frame_count = 10,
	                  animation_speed = electric_drill_animation_speed,
	                  direction_count = 1,
	                  shift = util.by_pixel(-25, -11),
	                  scale = 0.5,
	                }
	              }
	            }
	          }
	        },

	        -- drill front animation
	        {
	          animated_shift = true,
	          always_draw = true,
	          --north_animation = util.empty_sprite(),
	          east_animation = electric_mining_drill_horizontal_front_animation(),
	          --south_animation = util.empty_sprite(),
	          west_animation = electric_mining_drill_horizontal_front_animation(),
	        },

	        -- front frame
	        {
	          always_draw = true,
	          north_animation = nil,
	          east_animation =
	          {
	            priority = "high",
	            filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-front.png",
	            line_length = 1,
	            width = 66,
	            height = 74,
	            frame_count = 1,
	            animation_speed = electric_drill_animation_speed,
	            direction_count = 1,
	            shift = util.by_pixel(22, 10),
	            hr_version =
	            {
	              priority = "high",
	              filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-front.png",
	              line_length = 1,
	              width = 136,
	              height = 148,
	              frame_count = 1,
	              animation_speed = electric_drill_animation_speed,
	              direction_count = 1,
	              shift = util.by_pixel(21, 10),
	              scale = 0.5,
	            }
	          },
	          south_animation =
	          {
	            layers =
	            {
	              {
	                priority = "high",
	                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-output.png",
	                line_length = 5,
	                width = 44,
	                height = 28,
	                frame_count = 5,
	                animation_speed = electric_drill_animation_speed,
	                shift = util.by_pixel(-2, 34),
	                hr_version =
	                {
	                  priority = "high",
	                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-output.png",
	                  line_length = 5,
	                  width = 84,
	                  height = 56,
	                  frame_count = 5,
	                  animation_speed = electric_drill_animation_speed,
	                  shift = util.by_pixel(-1, 34),
	                  scale = 0.5,
	                }
	              },
	              {
	                priority = "high",
	                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-front.png",
	                line_length = 1,
	                width = 96,
	                height = 54,
	                frame_count = 1,
	                animation_speed = electric_drill_animation_speed,
	                repeat_count = 5,
	                shift = util.by_pixel(0, 26),
	                hr_version =
	                {
	                  priority = "high",
	                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-front.png",
	                  line_length = 1,
	                  width = 190,
	                  height = 104,
	                  frame_count = 1,
	                  animation_speed = electric_drill_animation_speed,
	                  repeat_count = 5,
	                  shift = util.by_pixel(0, 27),
	                  scale = 0.5,
	                }
	              },
	            }
	          },
	          west_animation =
	          {
	            priority = "high",
	            filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-front.png",
	            line_length = 1,
	            width = 68,
	            height = 70,
	            frame_count = 1,
	            animation_speed = electric_drill_animation_speed,
	            direction_count = 1,
	            shift = util.by_pixel(-22, 12),
	            hr_version =
	            {
	              priority = "high",
	              filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-front.png",
	              line_length = 1,
	              width = 134,
	              height = 140,
	              frame_count = 1,
	              animation_speed = electric_drill_animation_speed,
	              direction_count = 1,
	              shift = util.by_pixel(-22, 12),
	              scale = 0.5,
	            }
	          }
	        },

	        -- LEDs
	        electric_mining_drill_status_leds_working_visualisation(),

	        -- light
	        electric_mining_drill_primary_light,
	        electric_mining_drill_secondary_light
	      }
	    },

	    wet_mining_graphics_set =
	    {
	      drilling_vertical_movement_duration = 10 / electric_drill_animation_speed,
	      animation_progress = 1,
	      min_animation_progress = 0,
	      max_animation_progress = 30,

	      status_colors = electric_mining_drill_status_colors(),

	      circuit_connector_layer = "object",
	      circuit_connector_secondary_draw_order = { north = 14, east = 48, south = 48, west = 48 },

	      animation =
	      {
	        north =
	        {
	          layers =
	          {
	            {
	              priority = "high",
	              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-wet.png",
	              line_length = 1,
	              width = 96,
	              height = 100,
	              frame_count = 1,
	              animation_speed = electric_drill_animation_speed,
	              direction_count = 1,
	              shift = util.by_pixel(0, -8),
	              repeat_count = 5,
	              hr_version =
	              {
	                priority = "high",
	                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-wet.png",
	                line_length = 1,
	                width = 190,
	                height = 198,
	                frame_count = 1,
	                animation_speed = electric_drill_animation_speed,
	                direction_count = 1,
	                shift = util.by_pixel(0, -7),
	                repeat_count = 5,
	                scale = 0.5,
	              }
	            },
	            {
	              priority = "high",
	              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-output.png",
	              line_length = 5,
	              width = 32,
	              height = 34,
	              frame_count = 5,
	              animation_speed = electric_drill_animation_speed,
	              direction_count = 1,
	              shift = util.by_pixel(-4, -44),
	              hr_version =
	              {
	                priority = "high",
	                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-output.png",
	                line_length = 5,
	                width = 60,
	                height = 66,
	                frame_count = 5,
	                animation_speed = electric_drill_animation_speed,
	                direction_count = 1,
	                shift = util.by_pixel(-3, -44),
	                scale = 0.5,
	              }
	            },
	            {
	              priority = "high",
	              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-wet-shadow.png",
	              line_length = 1,
	              width = 124,
	              height = 110,
	              frame_count = 1,
	              animation_speed = electric_drill_animation_speed,
	              draw_as_shadow = true,
	              shift = util.by_pixel(12, 2),
	              repeat_count = 5,
	              hr_version =
	              {
	                priority = "high",
	                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-wet-shadow.png",
	                line_length = 1,
	                width = 248,
	                height = 222,
	                frame_count = 1,
	                animation_speed = electric_drill_animation_speed,
	                draw_as_shadow = true,
	                shift = util.by_pixel(12, 1),
	                repeat_count = 5,
	                scale = 0.5,
	              }
	            }
	          }
	        },
	        west =
	        {
	          layers =
	          {
	            {
	              priority = "high",
	              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-wet.png",
	              line_length = 1,
	              width = 96,
	              height = 106,
	              frame_count = 1,
	              animation_speed = electric_drill_animation_speed,
	              direction_count = 1,
	              shift = util.by_pixel(2, -10),
	              repeat_count = 5,
	              hr_version =
	              {
	                priority = "high",
	                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-wet.png",
	                line_length = 1,
	                width = 194,
	                height = 208,
	                frame_count = 1,
	                animation_speed = electric_drill_animation_speed,
	                direction_count = 1,
	                shift = util.by_pixel(1, -9),
	                repeat_count = 5,
	                scale = 0.5,
	              }
	            },
	            {
	              priority = "high",
	              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-output.png",
	              line_length = 5,
	              width = 24,
	              height = 28,
	              frame_count = 5,
	              animation_speed = electric_drill_animation_speed,
	              direction_count = 1,
	              shift = util.by_pixel(-30, -12),
	              hr_version =
	              {
	                priority = "high",
	                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-output.png",
	                line_length = 5,
	                width = 50,
	                height = 60,
	                frame_count = 5,
	                animation_speed = electric_drill_animation_speed,
	                direction_count = 1,
	                shift = util.by_pixel(-31, -13),
	                scale = 0.5,
	              }
	            },
	            {
	              priority = "high",
	              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-wet-shadow.png",
	              line_length = 1,
	              width = 132,
	              height = 102,
	              frame_count = 1,
	              animation_speed = electric_drill_animation_speed,
	              draw_as_shadow = true,
	              shift = util.by_pixel(8, 6),
	              repeat_count = 5,
	              hr_version =
	              {
	                priority = "high",
	                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-wet-shadow.png",
	                line_length = 1,
	                width = 260,
	                height = 202,
	                frame_count = 1,
	                animation_speed = electric_drill_animation_speed,
	                draw_as_shadow = true,
	                shift = util.by_pixel(9, 6),
	                repeat_count = 5,
	                scale = 0.5,
	              }
	            }
	          }
	        },
	        south =
	        {
	          layers =
	          {
	            {
	              priority = "high",
	              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-wet.png",
	              line_length = 1,
	              width = 98,
	              height = 106,
	              frame_count = 1,
	              animation_speed = electric_drill_animation_speed,
	              direction_count = 1,
	              shift = util.by_pixel(0, -6),
	              repeat_count = 5,
	              hr_version =
	              {
	                priority = "high",
	                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-wet.png",
	                line_length = 1,
	                width = 192,
	                height = 208,
	                frame_count = 1,
	                animation_speed = electric_drill_animation_speed,
	                direction_count = 1,
	                shift = util.by_pixel(1, -5),
	                repeat_count = 5,
	                scale = 0.5,
	              }
	            },
	            {
	              priority = "high",
	              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-wet-shadow.png",
	              line_length = 1,
	              width = 124,
	              height = 98,
	              frame_count = 1,
	              animation_speed = electric_drill_animation_speed,
	              draw_as_shadow = true,
	              shift = util.by_pixel(12, 4),
	              repeat_count = 5,
	              hr_version =
	              {
	                priority = "high",
	                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-wet-shadow.png",
	                line_length = 1,
	                width = 248,
	                height = 192,
	                frame_count = 1,
	                animation_speed = electric_drill_animation_speed,
	                draw_as_shadow = true,
	                shift = util.by_pixel(12, 5),
	                repeat_count = 5,
	                scale = 0.5,
	              }
	            }
	          }
	        },
	        east =
	        {
	          layers =
	          {
	            {
	              priority = "high",
	              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-wet.png",
	              line_length = 1,
	              width = 98,
	              height = 106,
	              frame_count = 1,
	              animation_speed = electric_drill_animation_speed,
	              direction_count = 1,
	              shift = util.by_pixel(-2, -10),
	              repeat_count = 5,
	              hr_version =
	              {
	                priority = "high",
	                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-wet.png",
	                line_length = 1,
	                width = 194,
	                height = 208,
	                frame_count = 1,
	                animation_speed = electric_drill_animation_speed,
	                direction_count = 1,
	                shift = util.by_pixel(-2, -9),
	                repeat_count = 5,
	                scale = 0.5,
	              }
	            },
	            {
	              priority = "high",
	              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-output.png",
	              line_length = 5,
	              width = 26,
	              height = 38,
	              frame_count = 5,
	              animation_speed = electric_drill_animation_speed,
	              direction_count = 1,
	              shift = util.by_pixel(30, -8),
	              hr_version =
	              {
	                priority = "high",
	                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-output.png",
	                line_length = 5,
	                width = 50,
	                height = 74,
	                frame_count = 5,
	                animation_speed = electric_drill_animation_speed,
	                direction_count = 1,
	                shift = util.by_pixel(30, -8),
	                scale = 0.5,
	              }
	            },
	            {
	              priority = "high",
	              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-wet-shadow.png",
	              line_length = 1,
	              width = 112,
	              height = 100,
	              frame_count = 1,
	              animation_speed = electric_drill_animation_speed,
	              draw_as_shadow = true,
	              shift = util.by_pixel(10, 6),
	              repeat_count = 5,
	              hr_version =
	              {
	                priority = "high",
	                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-wet-shadow.png",
	                line_length = 1,
	                width = 226,
	                height = 202,
	                frame_count = 1,
	                animation_speed = electric_drill_animation_speed,
	                draw_as_shadow = true,
	                shift = util.by_pixel(9, 5),
	                repeat_count = 5,
	                scale = 0.5,
	              }
	            }
	          }
	        },
	      },

	      shift_animation_waypoints =
	      {
	        -- Movement should be between 0.25-0.4 distance
	        -- Bounds -0.5 - 0.2
	        north = { {0, 0}, {0, -0.4}, {0, -0.1}, {0, 0.2} },
	        -- Bounds -0.3 - 0
	        east = { {0, 0}, {-0.3, 0}, {0, 0}, {-0.25, 0} },
	        -- Bounds -0.7 - 0
	        south = { {0, 0}, {0, -0.4}, {0, -0.7}, {0, -0.3} },
	        -- Bounds 0 - 0.3
	        west = { {0, 0}, {0.3, 0}, {0, 0}, {0.25, 0} },
	      },

	      shift_animation_waypoint_stop_duration = 195 / electric_drill_animation_speed,
	      shift_animation_transition_duration = 30 / electric_drill_animation_speed,

	      working_visualisations =
	      {
	        -- dust animation 1
	        {
	          constant_speed = true,
	          synced_fadeout = true,
	          align_to_waypoint = true,
	          apply_tint = "resource-color",
	          animation = electric_mining_drill_smoke(),
	          north_position = { 0, 0.25 },
	          east_position = { 0, 0 },
	          south_position = { 0, 0.25 },
	          west_position = { 0, 0 },
	        },

	        -- dust animation directional 1
	        {
	          constant_speed = true,
	          fadeout = true,
	          apply_tint = "resource-color",
	          north_animation =
	          {
	            layers =
	            {
	              {
	                priority = "high",
	                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-smoke.png",
	                line_length = 5,
	                width = 24,
	                height = 30,
	                frame_count = 10,
	                animation_speed = electric_drill_animation_speed,
	                direction_count = 1,
	                shift = util.by_pixel(-2, -44),
	                hr_version =
	                {
	                  priority = "high",
	                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-smoke.png",
	                  line_length = 5,
	                  width = 42,
	                  height = 58,
	                  frame_count = 10,
	                  animation_speed = electric_drill_animation_speed,
	                  direction_count = 1,
	                  shift = util.by_pixel(-1, -44),
	                  scale = 0.5,
	                }
	              }
	            }
	          },
	          east_animation = nil,
	          south_animation = nil,
	          west_animation = nil
	        },

	        -- drill back animation
	        {
	          animated_shift = true,
	          always_draw = true,
	          north_animation =
	          {
	            layers =
	            {
	              electric_mining_drill_animation(),
	              electric_mining_drill_shadow_animation()
	            }
	          },
	          east_animation =
	          {
	            layers =
	            {
	              electric_mining_drill_horizontal_animation(),
	              electric_mining_drill_horizontal_shadow_animation()
	            }
	          },
	          south_animation =
	          {
	            layers =
	            {
	              electric_mining_drill_animation(),
	              electric_mining_drill_shadow_animation()
	            }
	          },
	          west_animation =
	          {
	            layers =
	            {
	              electric_mining_drill_horizontal_animation(),
	              electric_mining_drill_horizontal_shadow_animation()
	            }
	          },
	        },

	        -- dust animation 2
	        {
	          constant_speed = true,
	          synced_fadeout = true,
	          align_to_waypoint = true,
	          apply_tint = "resource-color",
	          animation = electric_mining_drill_smoke_front(),
	        },

	        -- dust animation directional 2
	        {
	          constant_speed = true,
	          fadeout = true,
	          apply_tint = "resource-color",
	          north_animation = nil,
	          east_animation =
	          {
	            layers =
	            {
	              {
	                priority = "high",
	                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-smoke.png",
	                line_length = 5,
	                width = 24,
	                height = 28,
	                frame_count = 10,
	                animation_speed = electric_drill_animation_speed,
	                direction_count = 1,
	                shift = util.by_pixel(24, -12),
	                hr_version =
	                {
	                  priority = "high",
	                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-smoke.png",
	                  line_length = 5,
	                  width = 46,
	                  height = 56,
	                  frame_count = 10,
	                  animation_speed = electric_drill_animation_speed,
	                  direction_count = 1,
	                  shift = util.by_pixel(24, -12),
	                  scale = 0.5,
	                }
	              }
	            }
	          },
	          south_animation =
	          {
	            layers =
	            {
	              {
	                priority = "high",
	                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-smoke.png",
	                line_length = 5,
	                width = 24,
	                height = 18,
	                frame_count = 10,
	                animation_speed = electric_drill_animation_speed,
	                direction_count = 1,
	                shift = util.by_pixel(-2, 20),
	                hr_version =
	                {
	                  priority = "high",
	                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-smoke.png",
	                  line_length = 5,
	                  width = 48,
	                  height = 36,
	                  frame_count = 10,
	                  animation_speed = electric_drill_animation_speed,
	                  direction_count = 1,
	                  shift = util.by_pixel(-2, 20),
	                  scale = 0.5,
	                }
	              }
	            }
	          },
	          west_animation =
	          {
	            layers =
	            {
	              {
	                priority = "high",
	                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-smoke.png",
	                line_length = 5,
	                width = 26,
	                height = 30,
	                frame_count = 10,
	                animation_speed = electric_drill_animation_speed,
	                direction_count = 1,
	                shift = util.by_pixel(-26, -12),
	                hr_version =
	                {
	                  priority = "high",
	                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-smoke.png",
	                  line_length = 5,
	                  width = 46,
	                  height = 54,
	                  frame_count = 10,
	                  animation_speed = electric_drill_animation_speed,
	                  direction_count = 1,
	                  shift = util.by_pixel(-25, -11),
	                  scale = 0.5,
	                }
	              }
	            }
	          }
	        },

	        -- fluid window background (bottom)
	        {
	          -- render_layer = "lower-object-above-shadow",
	          secondary_draw_order = -49,
	          always_draw = true,
	          north_animation = nil,
	          east_animation =
	          {
	            layers =
	            {
	              {
	                priority = "high",
	                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-wet-window-background.png",
	                line_length = 1,
	                width = 12,
	                height = 8,
	                frame_count = 1,
	                animation_speed = electric_drill_animation_speed,
	                direction_count = 1,
	                shift = util.by_pixel(0, -52),
	                hr_version =
	                {
	                  priority = "high",
	                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-wet-window-background.png",
	                  line_length = 1,
	                  width = 22,
	                  height = 14,
	                  frame_count = 1,
	                  animation_speed = electric_drill_animation_speed,
	                  direction_count = 1,
	                  shift = util.by_pixel(0, -52),
	                  scale = 0.5,
	                }
	              },
	            }
	          },
	          south_animation =
	          {
	            layers =
	            {
	              {
	                priority = "high",
	                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-wet-window-background.png",
	                line_length = 1,
	                width = 16,
	                height = 12,
	                frame_count = 1,
	                animation_speed = electric_drill_animation_speed,
	                direction_count = 1,
	                shift = util.by_pixel(-2, -44),
	                hr_version =
	                {
	                  priority = "high",
	                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-wet-window-background.png",
	                  line_length = 1,
	                  width = 30,
	                  height = 20,
	                  frame_count = 1,
	                  animation_speed = electric_drill_animation_speed,
	                  direction_count = 1,
	                  shift = util.by_pixel(-2, -43),
	                  scale = 0.5,
	                }
	              },
	            }
	          },
	          west_animation =
	          {
	            layers =
	            {
	              {
	                priority = "high",
	                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-wet-window-background.png",
	                line_length = 1,
	                width = 12,
	                height = 8,
	                frame_count = 1,
	                animation_speed = electric_drill_animation_speed,
	                direction_count = 1,
	                shift = util.by_pixel(0, -52),
	                hr_version =
	                {
	                  priority = "high",
	                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-wet-window-background.png",
	                  line_length = 1,
	                  width = 22,
	                  height = 14,
	                  frame_count = 1,
	                  animation_speed = electric_drill_animation_speed,
	                  direction_count = 1,
	                  shift = util.by_pixel(0, -52),
	                  scale = 0.5,
	                }
	              },
	            }
	          },
	        },

	        -- fluid base (bottom)
	        {
	          always_draw = true,
	          -- render_layer = "lower-object-above-shadow",
	          secondary_draw_order = -48,
	          apply_tint = "input-fluid-base-color",
	          north_animation = nil,
	          east_animation =
	          {
	            layers =
	            {
	              {
	                priority = "high",
	                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-wet-fluid-background.png",
	                line_length = 1,
	                width = 12,
	                height = 8,
	                frame_count = 1,
	                animation_speed = electric_drill_animation_speed,
	                direction_count = 1,
	                shift = util.by_pixel(0, -52),
	                hr_version =
	                {
	                  priority = "high",
	                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-wet-fluid-background.png",
	                  line_length = 1,
	                  width = 22,
	                  height = 14,
	                  frame_count = 1,
	                  animation_speed = electric_drill_animation_speed,
	                  direction_count = 1,
	                  shift = util.by_pixel(0, -52),
	                  scale = 0.5,
	                }
	              },
	            }
	          },
	          south_animation =
	          {
	            layers =
	            {
	              {
	                priority = "high",
	                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-wet-fluid-background.png",
	                line_length = 1,
	                width = 14,
	                height = 8,
	                frame_count = 1,
	                animation_speed = electric_drill_animation_speed,
	                direction_count = 1,
	                shift = util.by_pixel(-2, -42),
	                hr_version =
	                {
	                  priority = "high",
	                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-wet-fluid-background.png",
	                  line_length = 1,
	                  width = 28,
	                  height = 18,
	                  frame_count = 1,
	                  animation_speed = electric_drill_animation_speed,
	                  direction_count = 1,
	                  shift = util.by_pixel(-2, -43),
	                  scale = 0.5,
	                }
	              },
	            }
	          },
	          west_animation =
	          {
	            layers =
	            {
	              {
	                priority = "high",
	                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-wet-fluid-background.png",
	                line_length = 1,
	                width = 12,
	                height = 8,
	                frame_count = 1,
	                animation_speed = electric_drill_animation_speed,
	                direction_count = 1,
	                shift = util.by_pixel(0, -52),
	                hr_version =
	                {
	                  priority = "high",
	                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-wet-fluid-background.png",
	                  line_length = 1,
	                  width = 22,
	                  height = 14,
	                  frame_count = 1,
	                  animation_speed = electric_drill_animation_speed,
	                  direction_count = 1,
	                  shift = util.by_pixel(0, -52),
	                  scale = 0.5,
	                }
	              },
	            }
	          },
	        },

	        -- fluid flow (bottom)
	        {
	          --render_layer = "lower-object-above-shadow",
	          secondary_draw_order = -47,
	          always_draw = true,
	          apply_tint = "input-fluid-flow-color",
	          north_animation = nil,
	          east_animation =
	          {
	            layers =
	            {
	              {
	                priority = "high",
	                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-wet-fluid-flow.png",
	                line_length = 1,
	                width = 12,
	                height = 8,
	                frame_count = 1,
	                animation_speed = electric_drill_animation_speed,
	                direction_count = 1,
	                shift = util.by_pixel(0, -52),
	                hr_version =
	                {
	                  priority = "high",
	                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-wet-fluid-flow.png",
	                  line_length = 1,
	                  width = 24,
	                  height = 14,
	                  frame_count = 1,
	                  animation_speed = electric_drill_animation_speed,
	                  direction_count = 1,
	                  shift = util.by_pixel(0, -52),
	                  scale = 0.5,
	                }
	              },
	            }
	          },
	          south_animation =
	          {
	            layers =
	            {
	              {
	                priority = "high",
	                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-wet-fluid-flow.png",
	                line_length = 1,
	                width = 14,
	                height = 8,
	                frame_count = 1,
	                animation_speed = electric_drill_animation_speed,
	                direction_count = 1,
	                shift = util.by_pixel(-2, -42),
	                hr_version =
	                {
	                  priority = "high",
	                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-wet-fluid-flow.png",
	                  line_length = 1,
	                  width = 26,
	                  height = 16,
	                  frame_count = 1,
	                  animation_speed = electric_drill_animation_speed,
	                  direction_count = 1,
	                  shift = util.by_pixel(-2, -42),
	                  scale = 0.5,
	                }
	              },
	            }
	          },
	          west_animation =
	          {
	            layers =
	            {
	              {
	                priority = "high",
	                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-wet-fluid-flow.png",
	                line_length = 1,
	                width = 12,
	                height = 8,
	                frame_count = 1,
	                animation_speed = electric_drill_animation_speed,
	                direction_count = 1,
	                shift = util.by_pixel(0, -52),
	                hr_version =
	                {
	                  priority = "high",
	                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-wet-fluid-flow.png",
	                  line_length = 1,
	                  width = 24,
	                  height = 14,
	                  frame_count = 1,
	                  animation_speed = electric_drill_animation_speed,
	                  direction_count = 1,
	                  shift = util.by_pixel(0, -52),
	                  scale = 0.5,
	                }
	              },
	            }
	          },
	        },

	        -- drill front animation
	        {
	          animated_shift = true,
	          always_draw = true,
	          --north_animation = util.empty_sprite(),
	          east_animation = electric_mining_drill_horizontal_front_animation(),
	          --south_animation = util.empty_sprite(),
	          west_animation = electric_mining_drill_horizontal_front_animation(),
	        },

	        -- fluid window background (front)
	        {
	          always_draw = true,
	          north_animation =
	          {
	            layers =
	            {
	              {
	                priority = "high",
	                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-wet-window-background.png",
	                line_length = 1,
	                width = 86,
	                height = 44,
	                frame_count = 1,
	                animation_speed = electric_drill_animation_speed,
	                direction_count = 1,
	                shift = util.by_pixel(0, 10),
	                hr_version =
	                {
	                  priority = "high",
	                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-wet-window-background.png",
	                  line_length = 1,
	                  width = 172,
	                  height = 90,
	                  frame_count = 1,
	                  animation_speed = electric_drill_animation_speed,
	                  direction_count = 1,
	                  shift = util.by_pixel(0, 9),
	                  scale = 0.5,
	                }
	              },
	            }
	          },
	          west_animation =
	          {
	            layers =
	            {
	              {
	                priority = "high",
	                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-wet-window-background-front.png",
	                line_length = 1,
	                width = 40,
	                height = 54,
	                frame_count = 1,
	                animation_speed = electric_drill_animation_speed,
	                direction_count = 1,
	                shift = util.by_pixel(14, 10),
	                hr_version =
	                {
	                  priority = "high",
	                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-wet-window-background-front.png",
	                  line_length = 1,
	                  width = 80,
	                  height = 106,
	                  frame_count = 1,
	                  animation_speed = electric_drill_animation_speed,
	                  direction_count = 1,
	                  shift = util.by_pixel(14, 10),
	                  scale = 0.5,
	                }
	              }
	            }
	          },
	          south_animation =
	          {
	            layers =
	            {
	              {
	                priority = "high",
	                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-wet-window-background-front.png",
	                line_length = 1,
	                width = 86,
	                height = 14,
	                frame_count = 1,
	                animation_speed = electric_drill_animation_speed,
	                direction_count = 1,
	                shift = util.by_pixel(0, -8),
	                hr_version =
	                {
	                  priority = "high",
	                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-wet-window-background-front.png",
	                  line_length = 1,
	                  width = 172,
	                  height = 22,
	                  frame_count = 1,
	                  animation_speed = electric_drill_animation_speed,
	                  direction_count = 1,
	                  shift = util.by_pixel(0, -7),
	                  scale = 0.5,
	                }
	              }
	            }
	          },
	          east_animation =
	          {
	            layers =
	            {
	              {
	                priority = "high",
	                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-wet-window-background-front.png",
	                line_length = 1,
	                width = 40,
	                height = 54,
	                frame_count = 1,
	                animation_speed = electric_drill_animation_speed,
	                direction_count = 1,
	                shift = util.by_pixel(-14, 10),
	                hr_version =
	                {
	                  priority = "high",
	                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-wet-window-background-front.png",
	                  line_length = 1,
	                  width = 82,
	                  height = 110,
	                  frame_count = 1,
	                  animation_speed = electric_drill_animation_speed,
	                  direction_count = 1,
	                  shift = util.by_pixel(-15, 9),
	                  scale = 0.5,
	                }
	              },
	            }
	          },
	        },

	        -- fluid base (front)
	        {
	          always_draw = true,
	          apply_tint = "input-fluid-base-color",
	          north_animation =
	          {
	            layers =
	            {
	              {
	                priority = "high",
	                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-wet-fluid-background.png",
	                line_length = 1,
	                width = 90,
	                height = 46,
	                frame_count = 1,
	                animation_speed = electric_drill_animation_speed,
	                direction_count = 1,
	                shift = util.by_pixel(0, 10),
	                hr_version =
	                {
	                  priority = "high",
	                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-wet-fluid-background.png",
	                  line_length = 1,
	                  width = 178,
	                  height = 94,
	                  frame_count = 1,
	                  animation_speed = electric_drill_animation_speed,
	                  direction_count = 1,
	                  shift = util.by_pixel(0, 9),
	                  scale = 0.5,
	                }
	              },
	            }
	          },
	          west_animation =
	          {
	            layers =
	            {
	              {
	                priority = "high",
	                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-wet-fluid-background-front.png",
	                line_length = 1,
	                width = 40,
	                height = 54,
	                frame_count = 1,
	                animation_speed = electric_drill_animation_speed,
	                direction_count = 1,
	                shift = util.by_pixel(14, 10),
	                hr_version =
	                {
	                  priority = "high",
	                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-wet-fluid-background-front.png",
	                  line_length = 1,
	                  width = 80,
	                  height = 102,
	                  frame_count = 1,
	                  animation_speed = electric_drill_animation_speed,
	                  direction_count = 1,
	                  shift = util.by_pixel(14, 11),
	                  scale = 0.5,
	                }
	              }
	            }
	          },
	          south_animation =
	          {
	            layers =
	            {
	              {
	                priority = "high",
	                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-wet-fluid-background-front.png",
	                line_length = 1,
	                width = 90,
	                height = 16,
	                frame_count = 1,
	                animation_speed = electric_drill_animation_speed,
	                direction_count = 1,
	                shift = util.by_pixel(0, -8),
	                hr_version =
	                {
	                  priority = "high",
	                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-wet-fluid-background-front.png",
	                  line_length = 1,
	                  width = 178,
	                  height = 28,
	                  frame_count = 1,
	                  animation_speed = electric_drill_animation_speed,
	                  direction_count = 1,
	                  shift = util.by_pixel(0, -7),
	                  scale = 0.5,
	                }
	              }
	            }
	          },
	          east_animation =
	          {
	            layers =
	            {
	              {
	                priority = "high",
	                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-wet-fluid-background-front.png",
	                line_length = 1,
	                width = 40,
	                height = 54,
	                frame_count = 1,
	                animation_speed = electric_drill_animation_speed,
	                direction_count = 1,
	                shift = util.by_pixel(-14, 10),
	                hr_version =
	                {
	                  priority = "high",
	                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-wet-fluid-background-front.png",
	                  line_length = 1,
	                  width = 82,
	                  height = 106,
	                  frame_count = 1,
	                  animation_speed = electric_drill_animation_speed,
	                  direction_count = 1,
	                  shift = util.by_pixel(-15, 10),
	                  scale = 0.5,
	                }
	              },
	            }
	          },
	        },

	        -- fluid flow (front)
	        {
	          always_draw = true,
	          apply_tint = "input-fluid-flow-color",
	          north_animation =
	          {
	            layers =
	            {
	              {
	                priority = "high",
	                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-wet-fluid-flow.png",
	                line_length = 1,
	                width = 86,
	                height = 44,
	                frame_count = 1,
	                animation_speed = electric_drill_animation_speed,
	                direction_count = 1,
	                shift = util.by_pixel(0, 10),
	                hr_version =
	                {
	                  priority = "high",
	                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-wet-fluid-flow.png",
	                  line_length = 1,
	                  width = 172,
	                  height = 88,
	                  frame_count = 1,
	                  animation_speed = electric_drill_animation_speed,
	                  direction_count = 1,
	                  shift = util.by_pixel(0, 10),
	                  scale = 0.5,
	                }
	              },
	            }
	          },
	          west_animation =
	          {
	            layers =
	            {
	              {
	                priority = "high",
	                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-wet-fluid-flow-front.png",
	                line_length = 1,
	                width = 40,
	                height = 50,
	                frame_count = 1,
	                animation_speed = electric_drill_animation_speed,
	                direction_count = 1,
	                shift = util.by_pixel(14, 12),
	                hr_version =
	                {
	                  priority = "high",
	                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-wet-fluid-flow-front.png",
	                  line_length = 1,
	                  width = 78,
	                  height = 102,
	                  frame_count = 1,
	                  animation_speed = electric_drill_animation_speed,
	                  direction_count = 1,
	                  shift = util.by_pixel(14, 11),
	                  scale = 0.5,
	                }
	              }
	            }
	          },
	          south_animation =
	          {
	            layers =
	            {
	              {
	                priority = "high",
	                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-wet-fluid-flow-front.png",
	                line_length = 1,
	                width = 86,
	                height = 12,
	                frame_count = 1,
	                animation_speed = electric_drill_animation_speed,
	                direction_count = 1,
	                shift = util.by_pixel(0, -8),
	                hr_version =
	                {
	                  priority = "high",
	                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-wet-fluid-flow-front.png",
	                  line_length = 1,
	                  width = 172,
	                  height = 22,
	                  frame_count = 1,
	                  animation_speed = electric_drill_animation_speed,
	                  direction_count = 1,
	                  shift = util.by_pixel(0, -8),
	                  scale = 0.5,
	                }
	              }
	            }
	          },
	          east_animation =
	          {
	            layers =
	            {
	              {
	                priority = "high",
	                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-wet-fluid-flow-front.png",
	                line_length = 1,
	                width = 40,
	                height = 54,
	                frame_count = 1,
	                animation_speed = electric_drill_animation_speed,
	                direction_count = 1,
	                shift = util.by_pixel(-14, 10),
	                hr_version =
	                {
	                  priority = "high",
	                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-wet-fluid-flow-front.png",
	                  line_length = 1,
	                  width = 78,
	                  height = 106,
	                  frame_count = 1,
	                  animation_speed = electric_drill_animation_speed,
	                  direction_count = 1,
	                  shift = util.by_pixel(-14, 10),
	                  scale = 0.5,
	                }
	              },
	            }
	          },
	        },

	        -- front frame (wet)
	        {
	          always_draw = true,
	          north_animation =
	          {
	            layers =
	            {
	              {
	                priority = "high",
	                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-wet-front.png",
	                line_length = 1,
	                width = 100,
	                height = 66,
	                frame_count = 1,
	                animation_speed = electric_drill_animation_speed,
	                direction_count = 1,
	                shift = util.by_pixel(0, 16),
	                hr_version =
	                {
	                  priority = "high",
	                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-wet-front.png",
	                  line_length = 1,
	                  width = 200,
	                  height = 130,
	                  frame_count = 1,
	                  animation_speed = electric_drill_animation_speed,
	                  direction_count = 1,
	                  shift = util.by_pixel(0, 16),
	                  scale = 0.5,
	                }
	              },
	            }
	          },
	          west_animation =
	          {
	            layers =
	            {
	              {
	                priority = "high",
	                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-wet-front.png",
	                line_length = 1,
	                width = 104,
	                height = 72,
	                frame_count = 1,
	                animation_speed = electric_drill_animation_speed,
	                direction_count = 1,
	                shift = util.by_pixel(-4, 12),
	                hr_version =
	                {
	                  priority = "high",
	                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-wet-front.png",
	                  line_length = 1,
	                  width = 208,
	                  height = 144,
	                  frame_count = 1,
	                  animation_speed = electric_drill_animation_speed,
	                  direction_count = 1,
	                  shift = util.by_pixel(-4, 12),
	                  scale = 0.5,
	                }
	              }
	            }
	          },
	          south_animation =
	          {
	            layers =
	            {
	              {
	                priority = "high",
	                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-output.png",
	                line_length = 5,
	                width = 44,
	                height = 28,
	                frame_count = 5,
	                animation_speed = electric_drill_animation_speed,
	                shift = util.by_pixel(-2, 34),
	                hr_version =
	                {
	                  priority = "high",
	                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-output.png",
	                  line_length = 5,
	                  width = 84,
	                  height = 56,
	                  frame_count = 5,
	                  animation_speed = electric_drill_animation_speed,
	                  shift = util.by_pixel(-1, 34),
	                  scale = 0.5,
	                }
	              },
	              {
	                priority = "high",
	                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-wet-front.png",
	                line_length = 1,
	                width = 96,
	                height = 70,
	                frame_count = 1,
	                animation_speed = electric_drill_animation_speed,
	                repeat_count = 5,
	                shift = util.by_pixel(0, 18),
	                hr_version =
	                {
	                  priority = "high",
	                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-wet-front.png",
	                  line_length = 1,
	                  width = 192,
	                  height = 140,
	                  frame_count = 1,
	                  animation_speed = electric_drill_animation_speed,
	                  repeat_count = 5,
	                  shift = util.by_pixel(0, 18),
	                  scale = 0.5,
	                }
	              },
	            }
	          },
	          east_animation =
	          {
	            layers =
	            {
	              {
	                priority = "high",
	                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-wet-front.png",
	                line_length = 1,
	                width = 106,
	                height = 76,
	                frame_count = 1,
	                animation_speed = electric_drill_animation_speed,
	                direction_count = 1,
	                shift = util.by_pixel(2, 10),
	                hr_version =
	                {
	                  priority = "high",
	                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-wet-front.png",
	                  line_length = 1,
	                  width = 208,
	                  height = 148,
	                  frame_count = 1,
	                  animation_speed = electric_drill_animation_speed,
	                  direction_count = 1,
	                  shift = util.by_pixel(3, 11),
	                  scale = 0.5,
	                }
	              },
	            }
	          },
	        },

	        -- LEDs
	        electric_mining_drill_status_leds_working_visualisation(),

	        -- light
	        electric_mining_drill_primary_light,
	        electric_mining_drill_secondary_light
	      }
	    },

	    integration_patch =
	    {
	      north =
	      {
	        priority = "high",
	        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-integration.png",
	        line_length = 1,
	        width = 110,
	        height = 108,
	        frame_count = 1,
	        animation_speed = electric_drill_animation_speed,
	        direction_count = 1,
	        shift = util.by_pixel(-2, 2),
	        repeat_count = 5,
	        hr_version =
	        {
	          priority = "high",
	          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-integration.png",
	          line_length = 1,
	          width = 216,
	          height = 218,
	          frame_count = 1,
	          animation_speed = electric_drill_animation_speed,
	          direction_count = 1,
	          shift = util.by_pixel(-1, 1),
	          repeat_count = 5,
	          scale = 0.5,
	        }
	      },
	      east =
	      {
	        priority = "high",
	        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-integration.png",
	        line_length = 1,
	        width = 116,
	        height = 108,
	        frame_count = 1,
	        animation_speed = electric_drill_animation_speed,
	        direction_count = 1,
	        shift = util.by_pixel(4, 2),
	        repeat_count = 5,
	        hr_version =
	        {
	          priority = "high",
	          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-integration.png",
	          line_length = 1,
	          width = 236,
	          height = 214,
	          frame_count = 1,
	          animation_speed = electric_drill_animation_speed,
	          direction_count = 1,
	          shift = util.by_pixel(3, 2),
	          repeat_count = 5,
	          scale = 0.5,
	        }
	      },
	      south =
	      {
	        priority = "high",
	        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-integration.png",
	        line_length = 1,
	        width = 108,
	        height = 114,
	        frame_count = 1,
	        animation_speed = electric_drill_animation_speed,
	        direction_count = 1,
	        shift = util.by_pixel(0, 4),
	        repeat_count = 5,
	        hr_version =
	        {
	          priority = "high",
	          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-integration.png",
	          line_length = 1,
	          width = 214,
	          height = 230,
	          frame_count = 1,
	          animation_speed = electric_drill_animation_speed,
	          direction_count = 1,
	          shift = util.by_pixel(0, 3),
	          repeat_count = 5,
	          scale = 0.5,
	        }
	      },
	      west =
	      {
	        priority = "high",
	        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-integration.png",
	        line_length = 1,
	        width = 118,
	        height = 106,
	        frame_count = 1,
	        animation_speed = electric_drill_animation_speed,
	        direction_count = 1,
	        shift = util.by_pixel(-4, 2),
	        repeat_count = 5,
	        hr_version =
	        {
	          priority = "high",
	          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-integration.png",
	          line_length = 1,
	          width = 234,
	          height = 214,
	          frame_count = 1,
	          animation_speed = electric_drill_animation_speed,
	          direction_count = 1,
	          shift = util.by_pixel(-4, 1),
	          repeat_count = 5,
	          scale = 0.5,
	        }
	      }
	    },

	    mining_speed = 0.5,
	    energy_source =
	    {
	      type = "electric",
	      emissions_per_minute = 10,
	      usage_priority = "secondary-input"
	    },
	    energy_usage = "90kW",
	    resource_searching_radius = 2.49,
	    vector_to_place_result = {0, -1.85},
	    module_specification =
	    {
	      module_slots = 3
	    },
	    radius_visualisation_picture =
	    {
	      filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
	      width = 10,
	      height = 10
	    },
	    monitor_visualization_tint = {r=78, g=173, b=255},
	    fast_replaceable_group = "mining-drill",

	    circuit_wire_connection_points = circuit_connector_definitions["electric-mining-drill"].points,
	    circuit_connector_sprites = circuit_connector_definitions["electric-mining-drill"].sprites,
	    circuit_wire_max_distance = default_circuit_wire_max_distance
	  },

	})
end
function createTrasportBeltUnderground (a)
	local name=a.name
	local icon=a.icon or "__NCP-Tech__/graphics/item/"..name..".png"
	local minable=a.minable or {hardness = 0.2, mining_time = 0.5, result = name}
	local max_health=a.max_health or 150
	local max_distance=a.max_distance or 5
	local speed=a.speed or 0.03125

	local aaaaaa=a.aaaaaa or aaaaaa
	data:extend({
	{
    type = "underground-belt",
    name = name,
    icon = icon,
	icon_size=32,
    flags = {"placeable-neutral", "player-creation"},
    minable = minable,
    max_health = max_health,
    corpse = "small-remnants",
    max_distance = max_distance,
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "high",
      width = 64,
      height = 64,
      x = 64,
      scale = 0.5
    },
	underground_remove_belts_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines-remove.png",
      priority = "high",
      width = 64,
      height = 64,
      x = 64,
      scale = 0.5
    },
    resistances =
    {
      {
        type = "fire",
        percent = 60
      },
      {
        type = "impact",
        percent = 30
      }
    },
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    animation_speed_coefficient = 32,
    belt_horizontal = basic_belt_horizontal,
    belt_vertical = basic_belt_vertical,
    ending_top = basic_belt_ending_top,
    ending_bottom = basic_belt_ending_bottom,
    ending_side = basic_belt_ending_side,
    starting_top = basic_belt_starting_top,
    starting_bottom = basic_belt_starting_bottom,
    starting_side = basic_belt_starting_side,
    fast_replaceable_group = "transport-belt",
    speed = speed,
    structure =
    {
      direction_in =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/underground-belt/underground-belt-structure.png",
          priority = "extra-high",
          shift = {0.25, 0},
          width = 57,
          height = 43,
          y = 43,
          hr_version =
          {
            filename = "__base__/graphics/entity/underground-belt/hr-underground-belt-structure.png",
            priority = "extra-high",
            shift = {0.15625, 0.0703125},
            width = 106,
            height = 85,
            y = 85,
            scale = 0.5
          }
        }
      },
      direction_out =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/underground-belt/underground-belt-structure.png",
          priority = "extra-high",
          shift = {0.25, 0},
          width = 57,
          height = 43,
          hr_version =
          {
            filename = "__base__/graphics/entity/underground-belt/hr-underground-belt-structure.png",
            priority = "extra-high",
            shift = {0.15625, 0.0703125},
            width = 106,
            height = 85,
            scale = 0.5
          }

        }

      }
    },
    ending_patch = ending_patch_prototype
  },

	})
end
function createSplitter (a)
	local name=a.name
	local icon=a.icon or "__NCP-Tech__/graphics/item/"..name..".png"
	local minable=a.minable or {hardness = 0.2, mining_time = 0.5, result = name}
	local max_health=a.max_health or 170
	local speed=a.speed or 0.03125

	local aaaaaa=a.aaaaaa or aaaaaa
	data:extend({
		{
	type = "splitter",
	name = name,
	icon = icon,
	icon_size = 32, icon_mipmaps = 1,
	flags = {"placeable-neutral", "player-creation"},
	minable = minable,
	max_health = 180,
	corpse = "fast-splitter-remnants",
	dying_explosion = "fast-splitter-explosion",
	resistances =
	{
		{
			type = "fire",
			percent = 60
		}
	},
	collision_box = {{-0.9, -0.4}, {0.9, 0.4}},
	selection_box = {{-0.9, -0.5}, {0.9, 0.5}},
	damaged_trigger_effect = hit_effects.entity(),
	animation_speed_coefficient = 32,
	structure_animation_speed_coefficient = 1.2,
	structure_animation_movement_cooldown = 10,
	belt_animation_set = fast_belt_animation_set,
	fast_replaceable_group = "transport-belt",
	next_upgrade = "express-splitter",
	speed = 0.0625,
	working_sound = sounds.fast_splitter,
	open_sound = sounds.machine_open,
	close_sound = sounds.machine_close,
	structure =
	{
		north =
		{
			filename = "__base__/graphics/entity/fast-splitter/fast-splitter-north.png",
			frame_count = 32,
			line_length = 8,
			priority = "extra-high",
			width = 82,
			height = 36,
			shift = util.by_pixel(6, 0),
			hr_version =
			{
				filename = "__base__/graphics/entity/fast-splitter/hr-fast-splitter-north.png",
				frame_count = 32,
				line_length = 8,
				priority = "extra-high",
				width = 160,
				height = 70,
				shift = util.by_pixel(7, 0),
				scale = 0.5
			}
		},
		east =
		{
			filename = "__base__/graphics/entity/fast-splitter/fast-splitter-east.png",
			frame_count = 32,
			line_length = 8,
			priority = "extra-high",
			width = 46,
			height = 44,
			shift = util.by_pixel(4, 12),
			hr_version =
			{
				filename = "__base__/graphics/entity/fast-splitter/hr-fast-splitter-east.png",
				frame_count = 32,
				line_length = 8,
				priority = "extra-high",
				width = 90,
				height = 84,
				shift = util.by_pixel(4, 13),
				scale = 0.5
			}
		},
		south =
		{
			filename = "__base__/graphics/entity/fast-splitter/fast-splitter-south.png",
			frame_count = 32,
			line_length = 8,
			priority = "extra-high",
			width = 82,
			height = 32,
			shift = util.by_pixel(4, 0),
			hr_version =
			{
				filename = "__base__/graphics/entity/fast-splitter/hr-fast-splitter-south.png",
				frame_count = 32,
				line_length = 8,
				priority = "extra-high",
				width = 164,
				height = 64,
				shift = util.by_pixel(4, 0),
				scale = 0.5
			}
		},
		west =
		{
			filename = "__base__/graphics/entity/fast-splitter/fast-splitter-west.png",
			frame_count = 32,
			line_length = 8,
			priority = "extra-high",
			width = 46,
			height = 44,
			shift = util.by_pixel(6, 12),
			hr_version =
			{
				filename = "__base__/graphics/entity/fast-splitter/hr-fast-splitter-west.png",
				frame_count = 32,
				line_length = 8,
				priority = "extra-high",
				width = 90,
				height = 86,
				shift = util.by_pixel(6, 12),
				scale = 0.5
			}
		}
	},
	structure_patch =
	{
		north = util.empty_sprite(),
		east =
		{
			filename = "__base__/graphics/entity/fast-splitter/fast-splitter-east-top_patch.png",
			frame_count = 32,
			line_length = 8,
			priority = "extra-high",
			width = 46,
			height = 52,
			shift = util.by_pixel(4, -20),
			hr_version =
			{
				filename = "__base__/graphics/entity/fast-splitter/hr-fast-splitter-east-top_patch.png",
				frame_count = 32,
				line_length = 8,
				priority = "extra-high",
				width = 90,
				height = 104,
				shift = util.by_pixel(4, -20),
				scale = 0.5
			}
		},
		south = util.empty_sprite(),
		west =
		{
			filename = "__base__/graphics/entity/fast-splitter/fast-splitter-west-top_patch.png",
			frame_count = 32,
			line_length = 8,
			priority = "extra-high",
			width = 46,
			height = 48,
			shift = util.by_pixel(6, -18),
			hr_version =
			{
				filename = "__base__/graphics/entity/fast-splitter/hr-fast-splitter-west-top_patch.png",
				frame_count = 32,
				line_length = 8,
				priority = "extra-high",
				width = 90,
				height = 96,
				shift = util.by_pixel(6, -18),
				scale = 0.5
			}
		}
	}
},

	})
end
function createSolarPanel (a)
	local name=a.name
	local icon=a.icon or "__NCP-Tech__/graphics/item/"..name..".png"
	local minable=a.minable or {hardness = 0.2, mining_time = 0.5, result = name}
	local max_health=a.max_health or 200
	local production=a.production or "60kW"

	local aaaaaa=a.aaaaaa or aaaaaa
	data:extend({
	{
    type = "solar-panel",
    name = name,
    icon = icon,
	icon_size=32,
    flags = {"placeable-neutral", "player-creation"},
    minable = minable,
    max_health = max_health,
    corpse = "big-remnants",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture =
    {
      filename = "__base__/graphics/entity/solar-panel/solar-panel.png",
      priority = "high",
      width = 104,
      height = 96
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    production = production
  },

	})
end
function createLocomotive (a)
	local name=a.name
	local icon=a.icon or "__NCP-Tech__/graphics/item/"..name..".png"
	local minable=a.minable or {hardness = 1, mining_time = 2, result = name}
	local max_health=a.max_health or 1000
	local weight=a.weight or 2000
	local max_speed=a.max_speed or 1.2
	local max_power=a.max_power or "600kW"
	local rail_category=a.rail_category or "regular"

	local aaaaaa=a.aaaaaa or aaaaaa
	data:extend({
		{
	    type = "locomotive",
	    name = name,
	    icon = icon,
	    icon_size = 32, icon_mipmaps = 1, --icon_size = 64, icon_mipmaps = 4,
	    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
	    minable = minable,
	    mined_sound = {filename = "__core__/sound/deconstruct-large.ogg",volume = 0.8},
	    max_health = 1000,
	    corpse = "locomotive-remnants",
	    dying_explosion = "locomotive-explosion",
	    collision_box = {{-0.6, -2.6}, {0.6, 2.6}},
	    selection_box = {{-1, -3}, {1, 3}},
	    damaged_trigger_effect = hit_effects.entity(),
	    drawing_box = {{-1, -4}, {1, 3}},
	    alert_icon_shift = util.by_pixel(0, -24),
	    weight = 2000,
	    max_speed = 1.2,
	    max_power = "600kW",
	    reversing_power_modifier = 0.6,
	    braking_force = 10,
	    friction_force = 0.50,
	    vertical_selection_shift = -0.5,
	    air_resistance = 0.0075, -- this is a percentage of current speed that will be subtracted
	    connection_distance = 3,
	    joint_distance = 4,
	    energy_per_hit_point = 5,
	    resistances =
	    {
	      {
	        type = "fire",
	        decrease = 15,
	        percent = 50
	      },
	      {
	        type = "physical",
	        decrease = 15,
	        percent = 30
	      },
	      {
	        type = "impact",
	        decrease = 50,
	        percent = 60
	      },
	      {
	        type = "explosion",
	        decrease = 15,
	        percent = 30
	      },
	      {
	        type = "acid",
	        decrease = 3,
	        percent = 20
	      }
	    },
	    burner =
	    {
	      fuel_category = "chemical",
	      effectivity = 1,
	      fuel_inventory_size = 3,
	      smoke =
	      {
	        {
	          name = "train-smoke",
	          deviation = {0.3, 0.3},
	          frequency = 100,
	          position = {0, 0},
	          starting_frame = 0,
	          starting_frame_deviation = 60,
	          height = 2,
	          height_deviation = 0.5,
	          starting_vertical_speed = 0.2,
	          starting_vertical_speed_deviation = 0.1
	        }
	      }
	    },
	    front_light =
	    {
	      {
	        type = "oriented",
	        minimum_darkness = 0.3,
	        picture =
	        {
	          filename = "__core__/graphics/light-cone.png",
	          priority = "extra-high",
	          flags = { "light" },
	          scale = 2,
	          width = 200,
	          height = 200
	        },
	        shift = {-0.6, -16},
	        size = 2,
	        intensity = 0.6,
	        color = {r = 1.0, g = 0.9, b = 0.9}
	      },
	      {
	        type = "oriented",
	        minimum_darkness = 0.3,
	        picture =
	        {
	          filename = "__core__/graphics/light-cone.png",
	          priority = "extra-high",
	          flags = { "light" },
	          scale = 2,
	          width = 200,
	          height = 200
	        },
	        shift = {0.6, -16},
	        size = 2,
	        intensity = 0.6,
	        color = {r = 1.0, g = 0.9, b = 0.9}
	      }
	    },
	    back_light = rolling_stock_back_light(),
	    stand_by_light = rolling_stock_stand_by_light(),
	    color = {r = 0.92, g = 0.07, b = 0, a = 0.5},
	    pictures =
	    {
	      layers =
	      {
	        {
	          dice = 4,
	          priority = "very-low",
	          width = 238,
	          height = 230,
	          direction_count = 256,
	          allow_low_quality_rotation = true,
	          filenames =
	          {
	            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-01.png",
	            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-02.png",
	            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-03.png",
	            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-04.png",
	            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-05.png",
	            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-06.png",
	            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-07.png",
	            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-08.png"
	          },
	          line_length = 4,
	          lines_per_file = 8,
	          shift = {0.0, -0.5},
	          hr_version =
	          {
	            priority = "very-low",
	            dice = 4,
	            width = 474,
	            height = 458,
	            direction_count = 256,
	            allow_low_quality_rotation = true,
	            filenames =
	            {
	              "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-1.png",
	              "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-2.png",
	              "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-3.png",
	              "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-4.png",
	              "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-5.png",
	              "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-6.png",
	              "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-7.png",
	              "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-8.png",
	              "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-9.png",
	              "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-10.png",
	              "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-11.png",
	              "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-12.png",
	              "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-13.png",
	              "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-14.png",
	              "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-15.png",
	              "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-16.png"
	            },
	            line_length = 4,
	            lines_per_file = 4,
	            shift = {0.0, -0.5},
	            scale = 0.5
	            }
	        },
	        {
	          priority = "very-low",
	          flags = { "mask" },
	          dice = 4,
	          width = 236,
	          height = 228,
	          direction_count = 256,
	          allow_low_quality_rotation = true,
	          filenames =
	          {
	            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-01.png",
	            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-02.png",
	            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-03.png",
	            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-04.png",
	            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-05.png",
	            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-06.png",
	            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-07.png",
	            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-08.png"
	          },
	          line_length = 4,
	          lines_per_file = 8,
	          shift = {0.0, -0.5},
	          apply_runtime_tint = true,
	          hr_version =
	            {
	              priority = "very-low",
	              flags = { "mask" },
	              dice = 4,
	              width = 472,
	              height = 456,
	              direction_count = 256,
	              allow_low_quality_rotation = true,
	              filenames =
	              {
	                "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-mask-1.png",
	                "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-mask-2.png",
	                "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-mask-3.png",
	                "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-mask-4.png",
	                "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-mask-5.png",
	                "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-mask-6.png",
	                "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-mask-7.png",
	                "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-mask-8.png",
	                "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-mask-9.png",
	                "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-mask-10.png",
	                "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-mask-11.png",
	                "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-mask-12.png",
	                "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-mask-13.png",
	                "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-mask-14.png",
	                "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-mask-15.png",
	                "__base__/graphics/entity/diesel-locomotive/hr-diesel-locomotive-mask-16.png"
	              },
	              line_length = 4,
	              lines_per_file = 4,
	              shift = {0.0, -0.5},
	              apply_runtime_tint = true,
	              scale = 0.5
	            }
	        },
	        {
	          priority = "very-low",
	          dice = 4,
	          flags = { "shadow" },
	          width = 253,
	          height = 212,
	          direction_count = 256,
	          draw_as_shadow = true,
	          allow_low_quality_rotation = true,
	          filenames =
	          {
	            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-01.png",
	            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-02.png",
	            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-03.png",
	            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-04.png",
	            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-05.png",
	            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-06.png",
	            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-07.png",
	            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-08.png"
	          },
	          line_length = 4,
	          lines_per_file = 8,
	          shift = {1, 0.3}
	        }
	      }
	    },
	    minimap_representation =
	    {
	      filename = "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-minimap-representation.png",
	      flags = {"icon"},
	      size = {20, 40},
	      scale = 0.5
	    },
	    selected_minimap_representation =
	    {
	      filename = "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-selected-minimap-representation.png",
	      flags = {"icon"},
	      size = {20, 40},
	      scale = 0.5
	    },
	    wheels = standard_train_wheels,
	    stop_trigger =
	    {
	      -- left side
	      {
	        type = "create-trivial-smoke",
	        repeat_count = 125,
	        smoke_name = "smoke-train-stop",
	        initial_height = 0,
	        -- smoke goes to the left
	        speed = {-0.03, 0},
	        speed_multiplier = 0.75,
	        speed_multiplier_deviation = 1.1,
	        offset_deviation = {{-0.75, -2.7}, {-0.3, 2.7}}
	      },
	      -- right side
	      {
	        type = "create-trivial-smoke",
	        repeat_count = 125,
	        smoke_name = "smoke-train-stop",
	        initial_height = 0,
	        -- smoke goes to the right
	        speed = {0.03, 0},
	        speed_multiplier = 0.75,
	        speed_multiplier_deviation = 1.1,
	        offset_deviation = {{0.3, -2.7}, {0.75, 2.7}}
	      },
	      {
	        type = "play-sound",
	        sound = sounds.train_brakes,
	      },
	      {
	        type = "play-sound",
	        sound = sounds.train_brake_screech,
	      },
	    },
	    drive_over_tie_trigger = drive_over_tie(),
	    tie_distance = 50,
	    vehicle_impact_sound = sounds.generic_impact,
	    working_sound =
	    {
	      sound =
	      {
	        filename = "__base__/sound/train-engine.ogg",
	        volume = 0.35
	      },
	      deactivate_sound =
	      {
	        filename = "__base__/sound/train-engine-stop.ogg",
	        volume = 0
	      },
	      match_speed_to_activity = true,
	      max_sounds_per_type = 2,
	      -- use_doppler_shift = false
	    },
	    open_sound = { filename = "__base__/sound/train-door-open.ogg", volume=0.5 },
	    close_sound = { filename = "__base__/sound/train-door-close.ogg", volume = 0.4 },
	    sound_minimum_speed = 0.5,
	    sound_scaling_ratio = 0.35,
	    water_reflection = locomotive_reflection(),
	  },

	})
end
function createCargoWagon (a)
	local name=a.name
	local icon=a.icon or "__NCP-Tech__/graphics/item/"..name..".png"
	local minable=a.minable or {hardness = 1, mining_time = 2, result = name}
	local max_health=a.max_health or 600
	local weight=a.weight or 1000
	local max_speed=a.max_speed or 1.5
	local inventory_size=a.inventory_size or 40
	local rail_category=a.rail_category or "regular"

	local aaaaaa=a.aaaaaa or aaaaaa
	data:extend({
	{
    type = "cargo-wagon",
    name = name,
    icon = icon,
	icon_size=32,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid", "not-on-map"},
    inventory_size = inventory_size,
    minable = minable,
    mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
    max_health = max_health,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-0.6, -2.4}, {0.6, 2.4}},
    selection_box = {{-1, -2.703125}, {1, 3.296875}},
    vertical_selection_shift = -0.796875,
    weight = weight,
    max_speed = max_speed,
    braking_force = 3,
    friction_force = 0.50,
    air_resistance = 0.01,
    connection_distance = 3,
    joint_distance = 4,
    energy_per_hit_point = 5,
    resistances =
    {
      {
        type = "fire",
        decrease = 15,
        percent = 50
      },
      {
        type = "physical",
        decrease = 15,
        percent = 30
      },
      {
        type = "impact",
        decrease = 50,
        percent = 60
      },
      {
        type = "explosion",
        decrease = 15,
        percent = 30
      },
      {
        type = "acid",
        decrease = 10,
        percent = 20
      }
    },
    back_light = rolling_stock_back_light(),
    stand_by_light = rolling_stock_stand_by_light(),
    color = {r = 0.43, g = 0.23, b = 0, a = 0.5},
    pictures =
    {
      layers =
      {
        {
          priority = "very-low",
          width = 222,
          height = 205,
          back_equals_front = true,
          direction_count = 128,
          filenames =
          {
            "__base__/graphics/entity/cargo-wagon/cargo-wagon-1.png",
            "__base__/graphics/entity/cargo-wagon/cargo-wagon-2.png",
            "__base__/graphics/entity/cargo-wagon/cargo-wagon-3.png",
            "__base__/graphics/entity/cargo-wagon/cargo-wagon-4.png"
          },
          line_length = 4,
          lines_per_file = 8,
          shift = {0, -0.796875},
          hr_version =
          {
            priority = "very-low",
            width = 442,
            height = 407,
            back_equals_front = true,
            direction_count = 128,
            filenames =
            {
              "__base__/graphics/entity/cargo-wagon/hr-cargo-wagon-1.png",
              "__base__/graphics/entity/cargo-wagon/hr-cargo-wagon-2.png",
              "__base__/graphics/entity/cargo-wagon/hr-cargo-wagon-3.png",
              "__base__/graphics/entity/cargo-wagon/hr-cargo-wagon-4.png"
            },
            line_length = 4,
            lines_per_file = 8,
            shift = util.by_pixel(0, -25.25),
            scale = 0.5
          }
        },
        {
          flags = { "mask" },
          priority = "very-low",
          width = 196,
          height = 174,
          direction_count = 128,
          back_equals_front = true,
          apply_runtime_tint = true,
          shift = {0, -1.125},
          filenames =
          {
            "__base__/graphics/entity/cargo-wagon/cargo-wagon-mask-1.png",
            "__base__/graphics/entity/cargo-wagon/cargo-wagon-mask-2.png",
            "__base__/graphics/entity/cargo-wagon/cargo-wagon-mask-3.png"
          },
          line_length = 4,
          lines_per_file = 11,
          hr_version =
          {
            flags = { "mask" },
            priority = "very-low",
            width = 406,
            height = 371,
            direction_count = 128,
            back_equals_front = true,
            apply_runtime_tint = true,
            shift = util.by_pixel(-0.5, -30.25),
            filenames =
            {
              "__base__/graphics/entity/cargo-wagon/hr-cargo-wagon-mask-1.png",
              "__base__/graphics/entity/cargo-wagon/hr-cargo-wagon-mask-2.png",
              "__base__/graphics/entity/cargo-wagon/hr-cargo-wagon-mask-3.png"
            },
            line_length = 4,
            lines_per_file = 11,
            scale = 0.5
          }
        },
        {
          flags = { "shadow" },
          priority = "very-low",
          width = 246,
          height = 201,
          back_equals_front = true,
          draw_as_shadow = true,
          direction_count = 128,
          filenames =
          {
            "__base__/graphics/entity/cargo-wagon/cargo-wagon-shadow-1.png",
            "__base__/graphics/entity/cargo-wagon/cargo-wagon-shadow-2.png",
            "__base__/graphics/entity/cargo-wagon/cargo-wagon-shadow-3.png",
            "__base__/graphics/entity/cargo-wagon/cargo-wagon-shadow-4.png"
          },
          line_length = 4,
          lines_per_file = 8,
          shift = {0.8, -0.078125},
          hr_version =
          {
            flags = { "shadow" },
            priority = "very-low",
            width = 490,
            height = 401,
            back_equals_front = true,
            draw_as_shadow = true,
            direction_count = 128,
            filenames =
            {
              "__base__/graphics/entity/cargo-wagon/hr-cargo-wagon-shadow-1.png",
              "__base__/graphics/entity/cargo-wagon/hr-cargo-wagon-shadow-2.png",
              "__base__/graphics/entity/cargo-wagon/hr-cargo-wagon-shadow-3.png",
              "__base__/graphics/entity/cargo-wagon/hr-cargo-wagon-shadow-4.png"
            },
            line_length = 4,
            lines_per_file = 8,
            shift = util.by_pixel(32, -2.25),
            scale = 0.5
          }
        }
      }
    },
    horizontal_doors =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-horizontal-end.png",
          line_length = 1,
          width = 220,
          height = 33,
          frame_count = 8,
          shift = {0, -0.921875},
          hr_version =
          {
            filename = "__base__/graphics/entity/cargo-wagon/hr-cargo-wagon-door-horizontal-end.png",
            line_length = 1,
            width = 438,
            height = 63,
            frame_count = 8,
            shift = util.by_pixel(0, -29.25),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-horizontal-side.png",
          line_length = 1,
          width = 186,
          height = 38,
          frame_count = 8,
          shift = {0, -0.78125},
          hr_version =
          {
            filename = "__base__/graphics/entity/cargo-wagon/hr-cargo-wagon-door-horizontal-side.png",
            line_length = 1,
            width = 368,
            height = 76,
            frame_count = 8,
            shift = util.by_pixel(0, -24.5),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-horizontal-side-mask.png",
          width = 182,
          height = 35,
          line_length = 1,
          frame_count = 8,
          shift = {0, -0.828125},
          apply_runtime_tint = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/cargo-wagon/hr-cargo-wagon-door-horizontal-side-mask.png",
            width = 320,
            height = 69,
            line_length = 1,
            frame_count = 8,
            shift = util.by_pixel(0, -26.25),
            apply_runtime_tint = true,
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-horizontal-top.png",
          line_length = 1,
          width = 184,
          height = 28,
          frame_count = 8,
          shift = {0.015625, -1.125},
          hr_version =
          {
            filename = "__base__/graphics/entity/cargo-wagon/hr-cargo-wagon-door-horizontal-top.png",
            line_length = 1,
            width = 369,
            height = 54,
            frame_count = 8,
            shift = util.by_pixel(0.75, -35.5),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-horizontal-top-mask.png",
          width = 185,
          height = 23,
          frame_count = 8,
          line_length = 1,
          shift = {0.015625, -1.17188},
          apply_runtime_tint = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/cargo-wagon/hr-cargo-wagon-door-horizontal-top-mask.png",
            width = 369,
            height = 45,
            frame_count = 8,
            line_length = 1,
            shift = util.by_pixel(0.75, -37.75),
            apply_runtime_tint = true,
            scale = 0.5
          }
        }
      }
    },
    vertical_doors =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-vertical-end.png",
          line_length = 8,
          width = 30,
          height = 23,
          frame_count = 8,
          shift = util.by_pixel(0, 62.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/cargo-wagon/hr-cargo-wagon-door-vertical-end.png",
            line_length = 8,
            width = 58,
            height = 44,
            frame_count = 8,
            shift = util.by_pixel(0, 62.5),-- 241),--62.5+178.5),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-vertical-side.png",
          line_length = 8,
          width = 67,
          height = 169,
          frame_count = 8,
          shift = {0.015625, -1.01563},
          hr_version =
          {
            filename = "__base__/graphics/entity/cargo-wagon/hr-cargo-wagon-door-vertical-side.png",
            line_length = 8,
            width = 127,
            height = 337,
            frame_count = 8,
            shift = util.by_pixel(0.25, -32.75),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-vertical-side-mask.png",
          line_length = 8,
          width = 56,
          height = 163,
          frame_count = 8,
          shift = {0, -1.10938},
          apply_runtime_tint = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/cargo-wagon/hr-cargo-wagon-door-vertical-side-mask.png",
            line_length = 8,
            width = 112,
            height = 326,
            frame_count = 8,
            shift = util.by_pixel(0, -35.5),
            apply_runtime_tint = true,
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-vertical-top.png",
          line_length = 8,
          width = 32,
          height = 168,
          frame_count = 8,
          shift = {0, -1.125},
          hr_version =
          {
            filename = "__base__/graphics/entity/cargo-wagon/hr-cargo-wagon-door-vertical-top.png",
            line_length = 8,
            width = 64,
            height = 337,
            frame_count = 8,
            shift = util.by_pixel(0, -35.75),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-vertical-top-mask.png",
          line_length = 8,
          width = 32,
          height = 166,
          frame_count = 8,
          shift = {0, -1.15625},
          apply_runtime_tint = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/cargo-wagon/hr-cargo-wagon-door-vertical-top-mask.png",
            line_length = 8,
            width = 64,
            height = 332,
            frame_count = 8,
            shift = util.by_pixel(0, -37),
            apply_runtime_tint = true,
            scale = 0.5
          }
        }
      }
    },
    wheels = standard_train_wheels,
    rail_category = rail_category,
    drive_over_tie_trigger = drive_over_tie(),
    tie_distance = 50,
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/train-wheels.ogg",
        volume = 0.6
      },
      match_volume_to_activity = true,
    },
    crash_trigger = crash_trigger(),
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    sound_minimum_speed = 0.5;
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 }
  },

	})
end
function createFluidWagon (a)
	local name=a.name
	local icon=a.icon or "__NCP-Tech__/graphics/item/"..name..".png"
	local minable=a.minable or {hardness = 1, mining_time = 2, result = name}
	local max_health=a.max_health or 600
	local weight=a.weight or 3000
	local max_speed=a.max_speed or 1.5
	local total_capacity=a.total_capacity or 25000 * 3
	local rail_category=a.rail_category or "regular"
	local result_inventory_size=a.result_inventory_size or 1
	local fast_replaceable_group=a.fast_replaceable_group or "inserter"
	local aaaaaa=a.aaaaaa or aaaaaa
	data:extend({
	{
    type = "fluid-wagon",
    name = name,
    icon = icon,
	icon_size=32,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = minable,
    mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
    max_health = max_health,
    total_capacity = total_capacity,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-0.6, -2.4}, {0.6, 2.4}},
    selection_box = {{-1, -2.703125}, {1, 3.296875}},
    gui_front_tank =
    {
      filename = "__base__/graphics/entity/fluid-wagon/gui/front-tank.png",
      width = 64,
      height = 64,
      flags = {"icon"}
    },
    gui_center_tank =
    {
      filename = "__base__/graphics/entity/fluid-wagon/gui/center-tank.png",
      width = 64,
      height = 64,
      flags = {"icon"}
    },
    gui_back_tank =
    {
      filename = "__base__/graphics/entity/fluid-wagon/gui/back-tank.png",
      width = 64,
      height = 64,
      flags = {"icon"}
    },
    gui_connect_front_center_tank =
    {
      filename = "__base__/graphics/entity/fluid-wagon/gui/connector-front-center.png",
      width = 64,
      height = 64,
      flags = {"icon"}
    },
    gui_connect_center_back_tank =
    {
      filename = "__base__/graphics/entity/fluid-wagon/gui/connector-center-back.png",
      width = 64,
      height = 64,
      flags = {"icon"}
    },
    gui_front_center_tank_indiciation =
    {
      filename = "__base__/graphics/entity/fluid-wagon/gui/1.png",
      width = 32,
      height = 32,
      flags = {"icon"}
    },
    gui_center_back_tank_indiciation =
    {
      filename = "__base__/graphics/entity/fluid-wagon/gui/2.png",
      width = 32,
      height = 32,
      flags = {"icon"}
    },
    vertical_selection_shift = -0.796875,
    weight = weight,
    max_speed = max_speed,
    braking_force = 3,
    friction_force = 0.50,
    air_resistance = 0.01,
    connection_distance = 3,
    joint_distance = 4,
    energy_per_hit_point = 6,
    resistances =
    {
      {
        type = "fire",
        decrease = 15,
        percent = 50
      },
      {
        type = "physical",
        decrease = 15,
        percent = 30
      },
      {
        type = "impact",
        decrease = 50,
        percent = 60
      },
      {
        type = "explosion",
        decrease = 15,
        percent = 30
      },
      {
        type = "acid",
        decrease = 10,
        percent = 20
      }
    },
    back_light = rolling_stock_back_light(),
    stand_by_light = rolling_stock_stand_by_light(),
    color = {r = 0.43, g = 0.23, b = 0, a = 0.5},
    pictures =
    {
      layers =
      {
        {
          priority = "very-low",
          width = 208,
          height = 210,
          back_equals_front = true,
          direction_count = 128,
          filenames =
          {
            "__base__/graphics/entity/fluid-wagon/fluid-wagon-1.png",
            "__base__/graphics/entity/fluid-wagon/fluid-wagon-2.png",
            "__base__/graphics/entity/fluid-wagon/fluid-wagon-3.png",
            "__base__/graphics/entity/fluid-wagon/fluid-wagon-4.png"
          },
          line_length = 4,
          lines_per_file = 8,
          shift = {0 + 0.013, -1 + 0.077},
          hr_version =
          {
            priority = "very-low",
            width = 416,
            height = 419,
            back_equals_front = true,
            direction_count = 128,
            filenames =
            {
              "__base__/graphics/entity/fluid-wagon/hr-fluid-wagon-1.png",
              "__base__/graphics/entity/fluid-wagon/hr-fluid-wagon-2.png",
              "__base__/graphics/entity/fluid-wagon/hr-fluid-wagon-3.png",
              "__base__/graphics/entity/fluid-wagon/hr-fluid-wagon-4.png",
              "__base__/graphics/entity/fluid-wagon/hr-fluid-wagon-5.png",
              "__base__/graphics/entity/fluid-wagon/hr-fluid-wagon-6.png",
              "__base__/graphics/entity/fluid-wagon/hr-fluid-wagon-7.png",
              "__base__/graphics/entity/fluid-wagon/hr-fluid-wagon-8.png"
            },
            line_length = 4,
            lines_per_file = 4,
            shift = {0 + 0.013, -1 + 0.077},
            scale = 0.5
          }
        },
        {
          flags = { "shadow" },
          priority = "very-low",
          width = 251,
          height = 188,
          back_equals_front = true,
          draw_as_shadow = true,
          direction_count = 128,
          filenames =
          {
            "__base__/graphics/entity/fluid-wagon/fluid-wagon-shadow-1.png",
            "__base__/graphics/entity/fluid-wagon/fluid-wagon-shadow-2.png",
            "__base__/graphics/entity/fluid-wagon/fluid-wagon-shadow-3.png",
            "__base__/graphics/entity/fluid-wagon/fluid-wagon-shadow-4.png"
          },
          line_length = 4,
          lines_per_file = 8,
          shift = {0.875 + 0.013, 0.3125 + 0.077},
          hr_version =
          {
            flags = { "shadow" },
            priority = "very-low",
            width = 501,
            height = 375,
            back_equals_front = true,
            draw_as_shadow = true,
            direction_count = 128,
            filenames =
            {
              "__base__/graphics/entity/fluid-wagon/hr-fluid-wagon-shadow-1.png",
              "__base__/graphics/entity/fluid-wagon/hr-fluid-wagon-shadow-2.png",
              "__base__/graphics/entity/fluid-wagon/hr-fluid-wagon-shadow-3.png",
              "__base__/graphics/entity/fluid-wagon/hr-fluid-wagon-shadow-4.png",
              "__base__/graphics/entity/fluid-wagon/hr-fluid-wagon-shadow-5.png",
              "__base__/graphics/entity/fluid-wagon/hr-fluid-wagon-shadow-6.png",
              "__base__/graphics/entity/fluid-wagon/hr-fluid-wagon-shadow-7.png"
            },
            line_length = 4,
            lines_per_file = 5,
            shift = {0.875 + 0.013, 0.3125 + 0.077},
            scale = 0.5
          }
        }
      }
    },
    wheels = standard_train_wheels,
    rail_category = rail_category,
    drive_over_tie_trigger = drive_over_tie(),
    tie_distance = 50,
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/train-wheels.ogg",
        volume = 0.6
      },
      match_volume_to_activity = true,
    },
    crash_trigger = crash_trigger(),
    sound_minimum_speed = 0.5;
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 }
  },

	})
end
function createTrainStop (a)
	local name=a.name
	local icon=a.icon or "__NCP-Tech__/graphics/item/"..name..".png"
	data:extend({
	{
    type = "train-stop",
    name = name,
    icon = icon,
	icon_size=32,
    flags = {"placeable-neutral", "player-creation", "filter-directions"},
    minable = {mining_time = 1, result = "train-stop"},
    max_health = 250,
    corpse = "medium-remnants",
    collision_box = {{-0.5, -0.5}, {0.5, 0.5}},
    selection_box = {{-0.9, -0.9}, {0.9, 0.9}},
    drawing_boxes =
    {
      north = {{-3,-2.5}, {0.8, 1.25}},
      east = {{-1.75, -4.25},{1.625, 0.5}},
      south = {{-0.8125, -3.625},{2.75, 0.4375}},
      west = {{-1.75, -1.6875},{2.0625, 2.75}},
    },
    tile_width = 2,
    tile_height = 2,
    animation_ticks_per_frame = 20,
    rail_overlay_animations = make_4way_animation_from_spritesheet(
    {
      filename = "__base__/graphics/entity/train-stop/train-stop-ground.png",
      line_length = 4,
      width = 194,
      height = 189,
      direction_count = 4,
      shift = util.by_pixel(0, -0.5),
        hr_version = {
          filename = "__base__/graphics/entity/train-stop/hr-train-stop-ground.png",
          line_length = 4,
          width = 386,
          height = 377,
          direction_count = 4,
          shift = util.by_pixel(0, -0.75),
          scale = 0.5
      }
    }),

    animations = make_4way_animation_from_spritesheet({ layers =
    {
      {
        filename = "__base__/graphics/entity/train-stop/train-stop-bottom.png",
        line_length = 4,
        width = 71,
        height = 146,
        direction_count = 4,
        shift = util.by_pixel(-0.5, -27),
          hr_version = {
            filename = "__base__/graphics/entity/train-stop/hr-train-stop-bottom.png",
            line_length = 4,
            width = 140,
            height = 291,
            direction_count = 4,
            shift = util.by_pixel(-0.5, -26.75),
            scale = 0.5
          }
      },
      {
        filename = "__base__/graphics/entity/train-stop/train-stop-shadow.png",
        line_length = 4,
        width = 361,
        height = 304,
        direction_count = 4,
        shift = util.by_pixel(-7.5, 18),
        draw_as_shadow = true,
          hr_version = {
            filename = "__base__/graphics/entity/train-stop/hr-train-stop-shadow.png",
            line_length = 4,
            width = 720,
            height = 607,
            direction_count = 4,
            shift = util.by_pixel(-7.5, 17.75),
            draw_as_shadow = true,
            scale = 0.5
          }
      },
    }}),

    top_animations = make_4way_animation_from_spritesheet({ layers =
    {
      {
        filename = "__base__/graphics/entity/train-stop/train-stop-top.png",
        line_length = 4,
        width = 156,
        height = 153,
        direction_count = 4,
        shift = util.by_pixel(0, -50.5),
          hr_version = {
            filename = "__base__/graphics/entity/train-stop/hr-train-stop-top.png",
            line_length = 4,
            width = 311,
            height = 305,
            direction_count = 4,
            shift = util.by_pixel(0, -50.75),
            scale = 0.5
          }
      },
      {
        filename = "__base__/graphics/entity/train-stop/train-stop-top-mask.png",
        line_length = 4,
        width = 154,
        height = 148,
        direction_count = 4,
        apply_runtime_tint = true,
        shift = util.by_pixel(0, -49),
          hr_version = {
            filename = "__base__/graphics/entity/train-stop/hr-train-stop-top-mask.png",
            line_length = 4,
            width = 306,
            height = 295,
            direction_count = 4,
            apply_runtime_tint = true,
            shift = util.by_pixel(-0.25, -48.75),
            scale = 0.5
          }
      }
    }}),

    light1 =
    {
      light = {intensity = 0.5, size = 3, color = {r = 1.0, g = 1.0, b = 1.0}},
      picture =
      {
        north =
        {
          filename = "__base__/graphics/entity/train-stop/train-stop-north-light-1.png",
          width = 9,
          height = 5,
          frame_count = 1,
          shift = util.by_pixel(-70.5, -44.5),
          hr_version = {
            filename = "__base__/graphics/entity/train-stop/hr-train-stop-north-light-1.png",
            width = 17,
            height = 9,
            frame_count = 1,
            shift = util.by_pixel(-70.75, -44.25),
            scale = 0.5
            }
        },
        west =
        {
          filename = "__base__/graphics/entity/train-stop/train-stop-east-light-1.png",
          width = 3,
          height = 9,
          frame_count = 1,
          shift = util.by_pixel(34.5, 19.5),
          hr_version = {
            filename = "__base__/graphics/entity/train-stop/hr-train-stop-east-light-1.png",
            width = 6,
            height = 16,
            frame_count = 1,
            shift = util.by_pixel(34.5, 19.5),
            scale = 0.5
            }
        },
        south =
        {
          filename = "__base__/graphics/entity/train-stop/train-stop-south-light-1.png",
          width = 8,
          height = 2,
          frame_count = 1,
          shift = util.by_pixel(70, -95),
          hr_version = {
            filename = "__base__/graphics/entity/train-stop/hr-train-stop-south-light-1.png",
            width = 16,
            height = 4,
            frame_count = 1,
            shift = util.by_pixel(70, -95),
            scale = 0.5
            }
        },
        east =
        {
          filename = "__base__/graphics/entity/train-stop/train-stop-west-light-1.png",
          width = 3,
          height = 8,
          frame_count = 1,
          shift = util.by_pixel(-30.5, -112),
          hr_version = {
            filename = "__base__/graphics/entity/train-stop/hr-train-stop-west-light-1.png",
            width = 6,
            height = 16,
            frame_count = 1,
            shift = util.by_pixel(-30.5, -112),
            scale = 0.5
            }
        },
      },
      red_picture =
      {
        north =
        {
          filename = "__base__/graphics/entity/train-stop/train-stop-north-red-light-1.png",
          width = 9,
          height = 5,
          frame_count = 1,
          shift = util.by_pixel(-70.5, -44.5),
          hr_version = {
            filename = "__base__/graphics/entity/train-stop/hr-train-stop-north-red-light-1.png",
            width = 17,
            height = 9,
            frame_count = 1,
            shift = util.by_pixel(-70.75, -44.25),
            scale = 0.5
            }
        },
        west =
        {
          filename = "__base__/graphics/entity/train-stop/train-stop-east-red-light-1.png",
          width = 3,
          height = 9,
          frame_count = 1,
          shift = util.by_pixel(34.5, 19.5),
          hr_version = {
            filename = "__base__/graphics/entity/train-stop/hr-train-stop-east-red-light-1.png",
            width = 6,
            height = 16,
            frame_count = 1,
            shift = util.by_pixel(34.5, 19.5),
            scale = 0.5
            }
        },
        south =
        {
          filename = "__base__/graphics/entity/train-stop/train-stop-south-red-light-1.png",
          width = 8,
          height = 2,
          frame_count = 1,
          shift = util.by_pixel(70, -95),
          hr_version = {
            filename = "__base__/graphics/entity/train-stop/hr-train-stop-south-red-light-1.png",
            width = 16,
            height = 4,
            frame_count = 1,
            shift = util.by_pixel(70, -95),
            scale = 0.5
            }
        },
        east =
        {
          filename = "__base__/graphics/entity/train-stop/train-stop-west-red-light-1.png",
          width = 3,
          height = 8,
          frame_count = 1,
          shift = util.by_pixel(-30.5, -112),
          hr_version = {
            filename = "__base__/graphics/entity/train-stop/hr-train-stop-west-red-light-1.png",
            width = 6,
            height = 16,
            frame_count = 1,
            shift = util.by_pixel(-30.5, -112),
            scale = 0.5
            }
        },
      }
    },

    light2 =
    {
      light = {intensity = 0.5, size = 3, color = {r = 1.0, g = 1.0, b = 1.0}},
      picture =
      {
        north =
        {
          filename = "__base__/graphics/entity/train-stop/train-stop-north-light-2.png",
          width = 9,
          height = 5,
          frame_count = 1,
          shift = util.by_pixel(-57.5, -43.5),
          hr_version = {
            filename = "__base__/graphics/entity/train-stop/hr-train-stop-north-light-2.png",
            width = 16,
            height = 9,
            frame_count = 1,
            shift = util.by_pixel(-57.5, -43.75),
            scale = 0.5
            }
        },
        west =
        {
          filename = "__base__/graphics/entity/train-stop/train-stop-east-light-2.png",
          width = 3,
          height = 8,
          frame_count = 1,
          shift = util.by_pixel(34.5, 10),
          hr_version = {
            filename = "__base__/graphics/entity/train-stop/hr-train-stop-east-light-2.png",
            width = 6,
            height = 16,
            frame_count = 1,
            shift = util.by_pixel(34.5, 10),
            scale = 0.5
            }
        },
        south =
        {
          filename = "__base__/graphics/entity/train-stop/train-stop-south-light-2.png",
          width = 8,
          height = 3,
          frame_count = 1,
          shift = util.by_pixel(57, -94.5),
          hr_version = {
            filename = "__base__/graphics/entity/train-stop/hr-train-stop-south-light-2.png",
            width = 16,
            height = 5,
            frame_count = 1,
            shift = util.by_pixel(57, -94.75),
            scale = 0.5
            }
        },
        east =
        {
          filename = "__base__/graphics/entity/train-stop/train-stop-west-light-2.png",
          width = 4,
          height = 8,
          frame_count = 1,
          shift = util.by_pixel(-31, -103),
          hr_version = {
            filename = "__base__/graphics/entity/train-stop/hr-train-stop-west-light-2.png",
            width = 7,
            height = 15,
            frame_count = 1,
            shift = util.by_pixel(-30.75, -102.75),
            scale = 0.5
            }
        },
      },
      red_picture =
      {
        north =
        {
          filename = "__base__/graphics/entity/train-stop/train-stop-north-red-light-2.png",
          width = 9,
          height = 5,
          frame_count = 1,
          shift = util.by_pixel(-57.5, -43.5),
          hr_version = {
            filename = "__base__/graphics/entity/train-stop/hr-train-stop-north-red-light-2.png",
            width = 16,
            height = 9,
            frame_count = 1,
            shift = util.by_pixel(-57.5, -43.75),
            scale = 0.5
            }
        },
        west =
        {
          filename = "__base__/graphics/entity/train-stop/train-stop-east-red-light-2.png",
          width = 3,
          height = 8,
          frame_count = 1,
          shift = util.by_pixel(34.5, 10),
          hr_version = {
            filename = "__base__/graphics/entity/train-stop/hr-train-stop-east-red-light-2.png",
            width = 6,
            height = 16,
            frame_count = 1,
            shift = util.by_pixel(34.5, 10),
            scale = 0.5
            }
        },
        south =
        {
          filename = "__base__/graphics/entity/train-stop/train-stop-south-red-light-2.png",
          width = 8,
          height = 3,
          frame_count = 1,
          shift = util.by_pixel(57, -94.5),
          hr_version = {
            filename = "__base__/graphics/entity/train-stop/hr-train-stop-south-red-light-2.png",
            width = 16,
            height = 5,
            frame_count = 1,
            shift = util.by_pixel(57, -94.75),
            scale = 0.5
            }
        },
        east =
        {
          filename = "__base__/graphics/entity/train-stop/train-stop-west-red-light-2.png",
          width = 4,
          height = 8,
          frame_count = 1,
          shift = util.by_pixel(-31, -103),
          hr_version = {
            filename = "__base__/graphics/entity/train-stop/hr-train-stop-west-red-light-2.png",
            width = 7,
            height = 15,
            frame_count = 1,
            shift = util.by_pixel(-30.75, -102.75),
            scale = 0.5
            }
        },
      }
    },

    color={r=0.95,  g=0, b=0, a=0.5},

    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__base__/sound/train-stop.ogg", volume = 0.8 }
    },
    circuit_wire_connection_points =
    {
      {
        shadow =
        {
          red = {-0.375, 1.21875},
          green = {-0.53125, 1.21875}
        },
        wire =
        {
          red = {-0.5, 1.09375},
          green = {-0.65625, 1.09375}
        }
      },
      {
        shadow =
        {
          red = {-0.875, -0.71875},
          green = {-0.875, -0.84375},
        },
        wire =
        {
          red = {-1.0625, -0.84375},
          green = {-1.0625, -0.96875},
        }
      },
      {
        shadow =
        {
          red = {0.78125, 0.46875},
          green = {0.59375, 0.46875},
        },
        wire =
        {
          red = {0.65625, 0.34375},
          green = {0.5, 0.34375},
        }
      },
      {
        shadow =
        {
          red = {-0.0625, 1.28125},
          green = {-0.0625, 1.15625},
        },
        wire =
        {
          red = {-0.25, 1.15625},
          green = {-0.25, 1.03125},
        }
      },
    },
    circuit_connector_sprites =
    {
      get_circuit_connector_sprites({0.5625-1, 1.03125}, {0.5625-1, 1.03125}, 0), --N
      get_circuit_connector_sprites({-0.78125, 0.28125-1}, {-0.78125, 0.28125-1}, 6), --E
      get_circuit_connector_sprites({-0.28125+1, 0.28125}, {-0.28125+1, 0.28125}, 0), --S
      get_circuit_connector_sprites({0.03125, 0.28125+1}, {0.03125, 0.28125+1}, 6), --W
    },
    circuit_wire_max_distance = 9,
    default_train_stopped_signal = {type = "virtual", name = "signal-T"}
  },

	})
end
function createRailSignal (a)
	local name=a.name
	data:extend({
	{
    type = "rail-signal",
    name = name,
    icon = "__base__/graphics/icons/rail-signal.png",
	icon_size=32,
    flags = {"placeable-neutral", "player-creation", "building-direction-8-way", "filter-directions", "fast-replaceable-no-build-while-moving"},
    fast_replaceable_group = "rail-signal",
    minable = {mining_time = 0.5, result = "rail-signal"},
    max_health = 100,
    corpse = "small-remnants",
    collision_box = {{-0.2, -0.2}, {0.2, 0.2}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    animation =
    {
      filename = "__base__/graphics/entity/rail-signal/rail-signal.png",
      priority = "high",
      width = 96,
      height = 96,
      frame_count = 3,
      direction_count = 8,
      hr_version = {
        filename = "__base__/graphics/entity/rail-signal/hr-rail-signal.png",
        priority = "high",
        width = 192,
        height = 192,
        frame_count = 3,
        direction_count = 8,
        scale = 0.5
      }
    },
    rail_piece =
    {
      filename = "__base__/graphics/entity/rail-signal/rail-signal-metal.png",
      line_length = 10,
      width = 96,
      height = 96,
      frame_count = 10,
      axially_symmetrical = false,
      hr_version = {
        filename = "__base__/graphics/entity/rail-signal/hr-rail-signal-metal.png",
        line_length = 10,
        width = 192,
        height = 192,
        frame_count = 10,
        axially_symmetrical = false,
        scale = 0.5
      }
    },
    green_light = {intensity = 0.2, size = 4, color={g=1}},
    orange_light = {intensity = 0.2, size = 4, color={r=1, g=0.5}},
    red_light = {intensity = 0.2, size = 4, color={r=1}},
    circuit_wire_connection_points =
    {
      {
        shadow =
        {
          red = {0.609375, -0.359375},
          green = {0.765625, -0.359375},
        },
        wire =
        {
          red = {0.5, -0.46875},
          green = {0.65625, -0.46875},
        }
      },
      {
        shadow =
        {
          red = {0.8125, -0.03125},
          green = {0.9375, 0.0625},
        },
        wire =
        {
          red = {0.65625, -0.125},
          green = {0.75, -0.0625},
        }
      },
      {
        shadow =
        {
          red = {0.734375, 0.453125},
          green = {0.734375, 0.578125},
        },
        wire =
        {
          red = {0.5625, 0.34375},
          green = {0.5625, 0.5},
        }
      },
      {
        shadow =
        {
          red = {0.234375, 0.484375},
          green = {0.109375, 0.578125},
        },
        wire =
        {
          red = {0.09375, 0.34375},
          green = {-0.03125, 0.4375},
        }
      },
      {
        shadow =
        {
          red = {-0.421875, 0.484375},
          green = {-0.578125, 0.484375},
        },
        wire =
        {
          red = {-0.5625, 0.34375},
          green = {-0.71875, 0.34375},
        }
      },
      {
        shadow =
        {
          red = {-0.796875, 0.140625},
          green = {-0.921875, 0.046875},
        },
        wire =
        {
          red = {-1, 0.0625},
          green = {-1.125, -0.03125},
        }
      },
      {
        shadow =
        {
          red = {-0.578125, -0.453125},
          green = {-0.578125, -0.578125},
        },
        wire =
        {
          red = {-0.71875, -0.53125},
          green = {-0.71875, -0.65625},
        }
      },
      {
        shadow =
        {
          red = {-0.046875, -0.484375},
          green = {0.078125, -0.578125},
        },
        wire =
        {
          red = {-0.125, -0.625},
          green = {0, -0.71875},
        }
      }
    },
    circuit_connector_sprites =
    {
      get_circuit_connector_sprites({0.46875, -0.15625}, {0.46875, -0.15625}, 4),
      get_circuit_connector_sprites({0.46875, 0.09375}, {0.46875, 0.09375}, 3),
      get_circuit_connector_sprites({0.34375, 0.4375}, {0.34375, 0.4375}, 2),
      get_circuit_connector_sprites({-0.03125, 0.34375}, {-0.03125, 0.34375}, 1),
      get_circuit_connector_sprites({-0.5, 0.28125}, {-0.5, 0.28125}, 0),
      get_circuit_connector_sprites({-0.78125, 0.0625}, {-0.78125, 0.0625}, 7),
      get_circuit_connector_sprites({-0.4375, -0.40625}, {-0.4375, -0.40625}, 6),
      get_circuit_connector_sprites({0.03125, -0.375}, {0.03125, -0.375}, 5),
    },
    circuit_wire_max_distance = 9,
    default_red_output_signal = {type = "virtual", name = "signal-red"},
    default_orange_output_signal = {type = "virtual", name = "signal-yellow"},
    default_green_output_signal = {type = "virtual", name = "signal-green"}
  },

	})
end
function createRailChainSignal (a)
	local name=a.name
	data:extend({
	{
    type = "rail-chain-signal",
    name = name,
    icon = "__base__/graphics/icons/rail-chain-signal.png",
	icon_size=32,
    flags = {"placeable-neutral", "player-creation", "building-direction-8-way", "filter-directions", "fast-replaceable-no-build-while-moving"},
    fast_replaceable_group = "rail-signal",
    minable = {mining_time = 0.5, result = "rail-chain-signal"},
    max_health = 100,
    corpse = "small-remnants",
    collision_box = {{-0.2, -0.2}, {0.2, 0.2}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    animation =
    {
      filename = "__base__/graphics/entity/rail-chain-signal/rail-chain-signal.png",
      priority = "high",
      line_length = 5,
      width = 160,
      height = 160,
      frame_count = 5,
      axially_symmetrical = false,
      direction_count = 8,
      hr_version = {
        filename = "__base__/graphics/entity/rail-chain-signal/hr-rail-chain-signal.png",
        priority = "high",
        line_length = 5,
        width = 320,
        height = 320,
        frame_count = 5,
        axially_symmetrical = false,
        direction_count = 8,
        scale = 0.5
      }
    },
    rail_piece =
    {
      filename = "__base__/graphics/entity/rail-chain-signal/rail-chain-signal-metal.png",
      line_length = 10,
      width = 192,
      height = 192,
      frame_count = 10,
      axially_symmetrical = false,
      hr_version = {
        filename = "__base__/graphics/entity/rail-chain-signal/hr-rail-chain-signal-metal.png",
        line_length = 10,
        width = 384,
        height = 384,
        frame_count = 10,
        axially_symmetrical = false,
        scale = 0.5
      }
    },
    selection_box_offsets =
    {
      {0, 0},
      {0, 0},
      {0, 0},
      {0, 0},
      {0, 0},
      {0, 0},
      {0, 0},
      {0, 0}
    },
    green_light = {intensity = 0.3, size = 4, color={r=0.592157, g=1, b=0.117647}},
    orange_light = {intensity = 0.3, size = 4, color={r=0.815686, g=0.670588, b=0.431373}},
    red_light = {intensity = 0.3, size = 4, color={r=0.784314, g=0.431373, b=0.431373}},
    blue_light = {intensity = 0.3, size = 4, color={r=0.431373, g=0.694118, b=0.623529}},
  },

	})
end
function createLab (a)
	local name=a.name
	local icon=a.icon or "__NCP-Tech__/graphics/item/"..name..".png"
	local minable=a.minable or {hardness = 1, mining_time = 1, result = name}
	local max_health=a.max_health or 150
	local energy_usage=a.energy_usage or "60kW"

	local aaaaaa=a.aaaaaa or aaaaaa
	data:extend({
		{
	    type = "lab",
	    name = name,
	    icon = "__base__/graphics/icons/lab.png",
	    icon_size = 32,
	    flags = {"placeable-player", "player-creation"},
	    minable = {mining_time = 1, result = "lab"},
	    max_health = 150,
	    corpse = "big-remnants",
	    dying_explosion = "medium-explosion",
	    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
	    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	    light = {intensity = 0.75, size = 8, color = {r = 1.0, g = 1.0, b = 1.0}},
	    on_animation =
	    {
	      layers =
	      {
	        {
	          filename = "__base__/graphics/entity/lab/lab.png",
	          width = 98,
	          height = 87,
	          frame_count = 33,
	          line_length = 11,
	          animation_speed = 1 / 3,
	          shift = util.by_pixel(0, 1.5),
	          hr_version =
	          {
	            filename = "__base__/graphics/entity/lab/hr-lab.png",
	            width = 194,
	            height = 174,
	            frame_count = 33,
	            line_length = 11,
	            animation_speed = 1 / 3,
	            shift = util.by_pixel(0, 1.5),
	            scale = 0.5
	          }
	        },
	        {
	          filename = "__base__/graphics/entity/lab/lab-integration.png",
	          width = 122,
	          height = 81,
	          frame_count = 1,
	          line_length = 1,
	          repeat_count = 33,
	          animation_speed = 1 / 3,
	          shift = util.by_pixel(0, 15.5),
	          hr_version =
	          {
	            filename = "__base__/graphics/entity/lab/hr-lab-integration.png",
	            width = 242,
	            height = 162,
	            frame_count = 1,
	            line_length = 1,
	            repeat_count = 33,
	            animation_speed = 1 / 3,
	            shift = util.by_pixel(0, 15.5),
	            scale = 0.5
	          }
	        },
	        {
	          filename = "__base__/graphics/entity/lab/lab-shadow.png",
	          width = 122,
	          height = 68,
	          frame_count = 1,
	          line_length = 1,
	          repeat_count = 33,
	          animation_speed = 1 / 3,
	          shift = util.by_pixel(13, 11),
	          draw_as_shadow = true,
	          hr_version =
	          {
	            filename = "__base__/graphics/entity/lab/hr-lab-shadow.png",
	            width = 242,
	            height = 136,
	            frame_count = 1,
	            line_length = 1,
	            repeat_count = 33,
	            animation_speed = 1 / 3,
	            shift = util.by_pixel(13, 11),
	            scale = 0.5,
	            draw_as_shadow = true
	          }
	        }
	      }
	    },
	    off_animation =
	    {
	      layers =
	      {
	        {
	          filename = "__base__/graphics/entity/lab/lab.png",
	          width = 98,
	          height = 87,
	          frame_count = 1,
	          shift = util.by_pixel(0, 1.5),
	          hr_version =
	          {
	            filename = "__base__/graphics/entity/lab/hr-lab.png",
	            width = 194,
	            height = 174,
	            frame_count = 1,
	            shift = util.by_pixel(0, 1.5),
	            scale = 0.5
	          }
	        },
	        {
	          filename = "__base__/graphics/entity/lab/lab-integration.png",
	          width = 122,
	          height = 81,
	          frame_count = 1,
	          shift = util.by_pixel(0, 15.5),
	          hr_version =
	          {
	            filename = "__base__/graphics/entity/lab/hr-lab-integration.png",
	            width = 242,
	            height = 162,
	            frame_count = 1,
	            shift = util.by_pixel(0, 15.5),
	            scale = 0.5
	          }
	        },
	        {
	          filename = "__base__/graphics/entity/lab/lab-shadow.png",
	          width = 122,
	          height = 68,
	          frame_count = 1,
	          shift = util.by_pixel(13, 11),
	          draw_as_shadow = true,
	          hr_version =
	          {
	            filename = "__base__/graphics/entity/lab/hr-lab-shadow.png",
	            width = 242,
	            height = 136,
	            frame_count = 1,
	            shift = util.by_pixel(13, 11),
	            draw_as_shadow = true,
	            scale = 0.5
	          }
	        }
	      }
	    },
	    working_sound =
	    {
	      sound =
	      {
	        filename = "__base__/sound/lab.ogg",
	        volume = 0.7
	      },
	      apparent_volume = 1
	    },
	    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
	    energy_source =
	    {
	      type = "electric",
	      usage_priority = "secondary-input"
	    },
	    energy_usage = "60kW",
	    researching_speed = 1,
	    inputs =
    {
      "automation-science-pack",
      "logistic-science-pack",
      "chemical-science-pack",
      "military-science-pack",
      "production-science-pack",
      "utility-science-pack",
      "space-science-pack"
    },
	    module_specification =
	    {
	      module_slots = 2,
	      max_entity_info_module_icons_per_row = 3,
	      max_entity_info_module_icon_rows = 1,
	      module_info_icon_shift = {0, 0.9}
	    }
	  },

	})
end
function createLogisticRobot (a)
	local name=a.name
	local icon=a.icon or "__NCP-Tech__/graphics/item/"..name..".png"
	local minable=a.minable or {hardness = 0.1, mining_time = 0.1, result = name}
	local max_health=a.max_health or 100
	local max_payload_size=a.max_payload_size or 1
	local speed=a.speed or 0.05
	local total_capacity=a.total_capacity or 25000 * 3
	local rail_category=a.rail_category or "regular"
	local result_inventory_size=a.result_inventory_size or 1
	local fast_replaceable_group=a.fast_replaceable_group or "inserter"
	local aaaaaa=a.aaaaaa or aaaaaa
	data:extend({
	{
    type = "logistic-robot",
    name = name,
    icon = icon,
	icon_size=32,
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = minable,
    resistances = { { type = "fire", percent = 85 } },
    max_health = max_health,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    max_payload_size = max_payload_size,
    speed = speed,
    transfer_distance = 0.5,
    max_energy = "1.5MJ",
    energy_per_tick = "0.05kJ",
    speed_multiplier_when_out_of_energy = 0.2,
    energy_per_move = "5kJ",
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    idle =
    {
      filename = "__base__/graphics/entity/logistic-robot/logistic-robot.png",
      priority = "high",
      line_length = 16,
      width = 41,
      height = 42,
      frame_count = 1,
      shift = {0.015625, -0.09375},
      direction_count = 16,
      y = 42
    },
    idle_with_cargo =
    {
      filename = "__base__/graphics/entity/logistic-robot/logistic-robot.png",
      priority = "high",
      line_length = 16,
      width = 41,
      height = 42,
      frame_count = 1,
      shift = {0.015625, -0.09375},
      direction_count = 16
    },
    in_motion =
    {
      filename = "__base__/graphics/entity/logistic-robot/logistic-robot.png",
      priority = "high",
      line_length = 16,
      width = 41,
      height = 42,
      frame_count = 1,
      shift = {0.015625, -0.09375},
      direction_count = 16,
      y = 126
    },
    in_motion_with_cargo =
    {
      filename = "__base__/graphics/entity/logistic-robot/logistic-robot.png",
      priority = "high",
      line_length = 16,
      width = 41,
      height = 42,
      frame_count = 1,
      shift = {0.015625, -0.09375},
      direction_count = 16,
      y = 84
    },
    shadow_idle =
    {
      filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 59,
      height = 23,
      frame_count = 1,
      shift = {0.96875, 0.609375},
      direction_count = 16,
      y = 23
    },
    shadow_idle_with_cargo =
    {
      filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 59,
      height = 23,
      frame_count = 1,
      shift = {0.96875, 0.609375},
      direction_count = 16
    },
    shadow_in_motion =
    {
      filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 59,
      height = 23,
      frame_count = 1,
      shift = {0.96875, 0.609375},
      direction_count = 16,
      y = 23
    },
    shadow_in_motion_with_cargo =
    {
      filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 59,
      height = 23,
      frame_count = 1,
      shift = {0.96875, 0.609375},
      direction_count = 16
    },
    working_sound = flying_robot_sounds(),
    cargo_centered = {0.0, 0.2},
  },

	})
end
function createConstructionRobot (a)
	local name=a.name
	local icon=a.icon or "__NCP-Tech__/graphics/item/"..name..".png"
	local minable=a.minable or {hardness = 0.1, mining_time = 0.1, result = name}
	local max_health=a.max_health or 100
	local max_payload_size=a.max_payload_size or 1
	local speed=a.speed or 0.06
	local total_capacity=a.total_capacity or 25000 * 3
	local rail_category=a.rail_category or "regular"
	local result_inventory_size=a.result_inventory_size or 1
	local fast_replaceable_group=a.fast_replaceable_group or "inserter"
	local aaaaaa=a.aaaaaa or aaaaaa
	data:extend({
	{
    type = "construction-robot",
    name = name,
    icon = icon,
	icon_size=32,
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = minable,
    resistances = { { type = "fire", percent = 85 } },
    max_health = max_health,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    max_payload_size = 1,
    speed = speed,
    transfer_distance = 0.5,
    max_energy = "1.5MJ",
    energy_per_tick = "0.05kJ",
    speed_multiplier_when_out_of_energy = 0.2,
    energy_per_move = "5kJ",
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    working_light = {intensity = 0.8, size = 3, color = {r = 0.8, g = 0.8, b = 0.8}},
    idle =
    {
      filename = "__base__/graphics/entity/construction-robot/construction-robot.png",
      priority = "high",
      line_length = 16,
      width = 32,
      height = 36,
      frame_count = 1,
      shift = {0, -0.15625},
      direction_count = 16
    },
    in_motion =
    {
      filename = "__base__/graphics/entity/construction-robot/construction-robot.png",
      priority = "high",
      line_length = 16,
      width = 32,
      height = 36,
      frame_count = 1,
      shift = {0, -0.15625},
      direction_count = 16,
      y = 36
    },
    shadow_idle =
    {
      filename = "__base__/graphics/entity/construction-robot/construction-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 50,
      height = 24,
      frame_count = 1,
      shift = {1.09375, 0.59375},
      direction_count = 16
    },
    shadow_in_motion =
    {
      filename = "__base__/graphics/entity/construction-robot/construction-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 50,
      height = 24,
      frame_count = 1,
      shift = {1.09375, 0.59375},
      direction_count = 16
    },
    working =
    {
      filename = "__base__/graphics/entity/construction-robot/construction-robot-working.png",
      priority = "high",
      line_length = 2,
      width = 28,
      height = 36,
      frame_count = 2,
      shift = {0, -0.15625},
      direction_count = 16,
      animation_speed = 0.3,
    },
    shadow_working =
    {
      stripes = util.multiplystripes(2,
      {
        {
          filename = "__base__/graphics/entity/construction-robot/construction-robot-shadow.png",
          width_in_frames = 16,
          height_in_frames = 1,
        }
      }),
      priority = "high",
      width = 50,
      height = 24,
      frame_count = 2,
      shift = {1.09375, 0.59375},
      direction_count = 16
    },
    smoke =
    {
      filename = "__base__/graphics/entity/smoke-construction/smoke-01.png",
      width = 39,
      height = 32,
      frame_count = 19,
      line_length = 19,
      shift = {0.078125, -0.15625},
      animation_speed = 0.3,
    },
    sparks =
    {
      {
        filename = "__base__/graphics/entity/sparks/sparks-01.png",
        width = 39,
        height = 34,
        frame_count = 19,
        line_length = 19,
        shift = {-0.109375, 0.3125},
        tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
        animation_speed = 0.3,
      },
      {
        filename = "__base__/graphics/entity/sparks/sparks-02.png",
        width = 36,
        height = 32,
        frame_count = 19,
        line_length = 19,
        shift = {0.03125, 0.125},
        tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
        animation_speed = 0.3,
      },
      {
        filename = "__base__/graphics/entity/sparks/sparks-03.png",
        width = 42,
        height = 29,
        frame_count = 19,
        line_length = 19,
        shift = {-0.0625, 0.203125},
        tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
        animation_speed = 0.3,
      },
      {
        filename = "__base__/graphics/entity/sparks/sparks-04.png",
        width = 40,
        height = 35,
        frame_count = 19,
        line_length = 19,
        shift = {-0.0625, 0.234375},
        tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
        animation_speed = 0.3,
      },
      {
        filename = "__base__/graphics/entity/sparks/sparks-05.png",
        width = 39,
        height = 29,
        frame_count = 19,
        line_length = 19,
        shift = {-0.109375, 0.171875},
        tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
        animation_speed = 0.3,
      },
      {
        filename = "__base__/graphics/entity/sparks/sparks-06.png",
        width = 44,
        height = 36,
        frame_count = 19,
        line_length = 19,
        shift = {0.03125, 0.3125},
        tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
        animation_speed = 0.3,
      },
    },
    working_sound = flying_robot_sounds(),
    cargo_centered = {0.0, 0.2},
    construction_vector = {0.30, 0.22},
  },

	})
end
function createLogisticContainer (a)
	local name=a.name
	local icon=a.icon or "__NCP-Tech__/graphics/item/"..name..".png"
	local minable=a.minable or {hardness = 0.2, mining_time = 0.5, result = name}
	local max_health=a.max_health or 350
	local max_payload_size=a.max_payload_size or 1
	local speed=a.speed or 0.05
	local total_capacity=a.total_capacity or 25000 * 3
	local rail_category=a.rail_category or "regular"
	local result_inventory_size=a.result_inventory_size or 1
	local fast_replaceable_group=a.fast_replaceable_group or "inserter"
	local aaaaaa=a.aaaaaa or aaaaaa
	data:extend({
	{
    type = "logistic-container",
    name = name,
    icon = icon,
	icon_size=32,
    flags = {"placeable-player", "player-creation"},
    minable = minable,
    max_health = max_health,
    corpse = "small-remnants",
    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    resistances =
    {
      {
        type = "fire",
        percent = 90
      },
      {
        type = "impact",
        percent = 60
      }
    },
    fast_replaceable_group = "container",
    inventory_size = 48,
    logistic_mode = "passive-provider",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      filename = "__base__/graphics/entity/logistic-chest/logistic-chest-passive-provider.png",
      priority = "extra-high",
      width = 38,
      height = 32,
      shift = {0.09375, 0}
    },
    circuit_wire_connection_point =
    {
      shadow =
      {
        red = {0.734375, 0.453125},
        green = {0.609375, 0.515625},
      },
      wire =
      {
        red = {0.40625, 0.21875},
        green = {0.40625, 0.375},
      }
    },
    circuit_wire_max_distance = 9,
    circuit_connector_sprites = get_circuit_connector_sprites({0.1875, 0.15625}, nil, 18),
  },

	})
end
function createRoboport (a)
	local name=a.name
	local icon=a.icon or "__NCP-Tech__/graphics/item/"..name..".png"
	local minable=a.minable or {hardness = 0.2, mining_time = 0.5, result = name}
	local max_health=a.max_health or 500
	local max_payload_size=a.max_payload_size or 1
	local speed=a.speed or 0.05
	local total_capacity=a.total_capacity or 25000 * 3
	local rail_category=a.rail_category or "regular"
	local result_inventory_size=a.result_inventory_size or 1
	local fast_replaceable_group=a.fast_replaceable_group or "inserter"
	local aaaaaa=a.aaaaaa or aaaaaa
	data:extend({
		{
	    type = "roboport",
	    name = name,
	    icon = icon,
	    icon_size = 32,
	    flags = {"placeable-player", "player-creation"},
	    minable = minable,
	    max_health = max_health,
	    corpse = "roboport-remnants",
	    collision_box = {{-1.7, -1.7}, {1.7, 1.7}},
	    selection_box = {{-2, -2}, {2, 2}},
	    resistances =
	    {
	      {
	        type = "fire",
	        percent = 60
	      },
	      {
	        type = "impact",
	        percent = 30
	      }
	    },
	    dying_explosion = "medium-explosion",
	    energy_source =
	    {
	      type = "electric",
	      usage_priority = "secondary-input",
	      input_flow_limit = "5MW",
	      buffer_capacity = "100MJ"
	    },
	    recharge_minimum = "40MJ",
	    energy_usage = "50kW",
	    -- per one charge slot
	    charging_energy = "1000kW",
	    logistics_radius = 25,
	    construction_radius = 55,
	    charge_approach_distance = 5,
	    robot_slots_count = 7,
	    material_slots_count = 7,
	    stationing_offset = {0, 0},
	    charging_offsets =
	    {
	      {-1.5, -0.5}, {1.5, -0.5}, {1.5, 1.5}, {-1.5, 1.5}
	    },
	    base =
	    {
	      layers =
	      {
	        {
	          filename = "__base__/graphics/entity/roboport/roboport-base.png",
	          width = 143,
	          height = 135,
	          shift = {0.5, 0.25},
	          hr_version =
	          {
	            filename = "__base__/graphics/entity/roboport/hr-roboport-base.png",
	            width = 228,
	            height = 277,
	            shift = util.by_pixel(2, 7.75),
	            scale = 0.5
	          }
	        },
	        {
	          filename = "__base__/graphics/entity/roboport/roboport-shadow.png",
	          width = 147,
	          height = 101,
	          draw_as_shadow = true,
	          shift = util.by_pixel(28.5, 19.25),
	          hr_version =
	          {
	            filename = "__base__/graphics/entity/roboport/hr-roboport-shadow.png",
	            width = 294,
	            height = 201,
	            draw_as_shadow = true,
	            shift = util.by_pixel(28.5, 19.25),
	            scale = 0.5
	          }
	        }
	      }
	    },
	    base_patch =
	    {
	      filename = "__base__/graphics/entity/roboport/roboport-base-patch.png",
	      priority = "medium",
	      width = 69,
	      height = 50,
	      frame_count = 1,
	      shift = {0.03125, 0.203125},
	      hr_version =
	      {
	        filename = "__base__/graphics/entity/roboport/hr-roboport-base-patch.png",
	        priority = "medium",
	        width = 138,
	        height = 100,
	        frame_count = 1,
	        shift = util.by_pixel(1.5, 5),
	        scale = 0.5
	      }
	    },
	    base_animation =
	    {
	      filename = "__base__/graphics/entity/roboport/roboport-base-animation.png",
	      priority = "medium",
	      width = 42,
	      height = 31,
	      frame_count = 8,
	      animation_speed = 0.5,
	      shift = {-0.5315, -1.9375},
	      hr_version =
	      {
	        filename = "__base__/graphics/entity/roboport/hr-roboport-base-animation.png",
	        priority = "medium",
	        width = 83,
	        height = 59,
	        frame_count = 8,
	        animation_speed = 0.5,
	        shift = util.by_pixel(-17.75, -61.25),
	        scale = 0.5
	      }
	    },
	    door_animation_up =
	    {
	      filename = "__base__/graphics/entity/roboport/roboport-door-up.png",
	      priority = "medium",
	      width = 52,
	      height = 20,
	      frame_count = 16,
	      shift = {0.015625, -0.890625},
	      hr_version =
	      {
	        filename = "__base__/graphics/entity/roboport/hr-roboport-door-up.png",
	        priority = "medium",
	        width = 97,
	        height = 38,
	        frame_count = 16,
	        shift = util.by_pixel(-0.25, -29.5),
	        scale = 0.5
	      }
	    },
	    door_animation_down =
	    {
	      filename = "__base__/graphics/entity/roboport/roboport-door-down.png",
	      priority = "medium",
	      width = 52,
	      height = 22,
	      frame_count = 16,
	      shift = {0.015625, -0.234375},
	      hr_version =
	      {
	        filename = "__base__/graphics/entity/roboport/hr-roboport-door-down.png",
	        priority = "medium",
	        width = 97,
	        height = 41,
	        frame_count = 16,
	        shift = util.by_pixel(-0.25,-9.75),
	        scale = 0.5
	      }
	    },
	    recharging_animation =
	    {
	      filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
	      priority = "high",
	      width = 37,
	      height = 35,
	      frame_count = 16,
	      scale = 1.5,
	      animation_speed = 0.5
	    },
	    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
	    working_sound =
	    {
	      sound = { filename = "__base__/sound/roboport-working.ogg", volume = 0.6 },
	      max_sounds_per_type = 3,
	      audible_distance_modifier = 0.5,
	      probability = 1 / (5 * 60) -- average pause between the sound is 5 seconds
	    },
	    recharging_light = {intensity = 0.4, size = 5, color = {r = 1.0, g = 1.0, b = 1.0}},
	    request_to_open_door_timeout = 15,
	    spawn_and_station_height = -0.1,

	    draw_logistic_radius_visualization = true,
	    draw_construction_radius_visualization = true,

	    open_door_trigger_effect =
	    {
	      {
	        type = "play-sound",
	        sound = { filename = "__base__/sound/roboport-door.ogg", volume = 1.0 }
	      }
	    },
	    close_door_trigger_effect =
	    {
	      {
	        type = "play-sound",
	        sound = { filename = "__base__/sound/roboport-door.ogg", volume = 0.75 }
	      }
	    },

	    circuit_wire_connection_point = circuit_connector_definitions["roboport"].points,
	    circuit_connector_sprites = circuit_connector_definitions["roboport"].sprites,
	    circuit_wire_max_distance = default_circuit_wire_max_distance,

	    default_available_logistic_output_signal = {type = "virtual", name = "signal-X"},
	    default_total_logistic_output_signal = {type = "virtual", name = "signal-Y"},
	    default_available_construction_output_signal = {type = "virtual", name = "signal-Z"},
	    default_total_construction_output_signal = {type = "virtual", name = "signal-T"}
	  },

	})
end
function createStorageTank (a)
	local name=a.name
	local icon=a.icon or "__NCP-Tech__/graphics/item/"..name..".png"
	local minable=a.minable or {hardness = 0.2, mining_time = 0.5, result = name}
	local max_health=a.max_health or 500
	local max_payload_size=a.max_payload_size or 1
	local speed=a.speed or 0.05
	local total_capacity=a.total_capacity or 25000 * 3
	local rail_category=a.rail_category or "regular"
	local result_inventory_size=a.result_inventory_size or 1
	local fast_replaceable_group=a.fast_replaceable_group or "inserter"
	local aaaaaa=a.aaaaaa or aaaaaa
	data:extend({
	{
    type = "storage-tank",
    name = name,
    icon = icon,
	icon_size=32,
    flags = {"placeable-player", "player-creation"},
    minable = minable,
    max_health = max_health,
    corpse = "medium-remnants",
    collision_box = {{-1.3, -1.3}, {1.3, 1.3}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    fluid_box =
    {
      base_area = 250,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {-1, -2} },
        { position = {2, 1} },
        { position = {1, 2} },
        { position = {-2, -1} },
      },
    },
    two_direction_only = true,
    window_bounding_box = {{-0.125, 0.6875}, {0.1875, 1.1875}},
    pictures =
    {
      picture =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/storage-tank/storage-tank.png",
          priority = "extra-high",
          frames = 2,
          width = 140,
          height = 115,
          shift = {0.6875, 0.109375}
        }
      },
      fluid_background =
      {
        filename = "__base__/graphics/entity/storage-tank/fluid-background.png",
        priority = "extra-high",
        width = 32,
        height = 15
      },
      window_background =
      {
        filename = "__base__/graphics/entity/storage-tank/window-background.png",
        priority = "extra-high",
        width = 17,
        height = 24
      },
      flow_sprite =
      {
        filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
        priority = "extra-high",
        width = 160,
        height = 20
      },
      gas_flow =
      {
        filename = "__base__/graphics/entity/pipe/steam.png",
        priority = "extra-high",
        line_length = 10,
        width = 24,
        height = 15,
        frame_count = 60,
        axially_symmetrical = false,
        direction_count = 1,
        animation_speed = 0.25,
        hr_version =
        {
          filename = "__base__/graphics/entity/pipe/hr-steam.png",
          priority = "extra-high",
          line_length = 10,
          width = 48,
          height = 30,
          frame_count = 60,
          axially_symmetrical = false,
          animation_speed = 0.25,
          direction_count = 1
        }
      }
    },
    flow_length_in_ticks = 360,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = {
          filename = "__base__/sound/storage-tank.ogg",
          volume = 0.8
      },
      apparent_volume = 1.5,
      max_sounds_per_type = 3
    },
    circuit_wire_connection_points =
    {
      {
        shadow =
        {
          red = {2.35938, 0.890625},
          green = {2.29688, 0.953125},
        },
        wire =
        {
          red = {-0.40625, -0.375},
          green = {-0.53125, -0.46875},
        }
      },
      {
        shadow =
        {
          red = {2.35938, 0.890625},
          green = {2.29688, 0.953125},
        },
        wire =
        {
          red = {0.46875, -0.53125},
          green = {0.375, -0.4375},
        }
      },
      {
        shadow =
        {
          red = {2.35938, 0.890625},
          green = {2.29688, 0.953125},
        },
        wire =
        {
          red = {-0.40625, -0.375},
          green = {-0.53125, -0.46875},
        }
      },
      {
        shadow =
        {
          red = {2.35938, 0.890625},
          green = {2.29688, 0.953125},
        },
        wire =
        {
          red = {0.46875, -0.53125},
          green = {0.375, -0.4375},
        }
      },
    },
    circuit_connector_sprites =
    {
      get_circuit_connector_sprites({-0.1875, -0.375}, nil, 7),
      get_circuit_connector_sprites({0.375, -0.53125}, nil, 1),
      get_circuit_connector_sprites({-0.1875, -0.375}, nil, 7),
      get_circuit_connector_sprites({0.375, -0.53125}, nil, 1),
    },
    circuit_wire_max_distance = 9
  },

	})
end
function createPump (a)
	local name=a.name
	local icon=a.icon or "__NCP-Tech__/graphics/item/"..name..".png"
	local minable=a.minable or {hardness = 0.2, mining_time = 0.5, result = name}
	local max_health=a.max_health or 180
	local max_payload_size=a.max_payload_size or 1
	local speed=a.speed or 0.05
	local total_capacity=a.total_capacity or 25000 * 3
	local rail_category=a.rail_category or "regular"
	local result_inventory_size=a.result_inventory_size or 1
	local fast_replaceable_group=a.fast_replaceable_group or "inserter"
	local aaaaaa=a.aaaaaa or aaaaaa
	data:extend({
	{
    type = "pump",
    name = name,
    icon = icon,
	icon_size=32,
    flags = {"placeable-neutral", "player-creation"},
    minable = minable,
    max_health = max_health,
    fast_replaceable_group = "pipe",
    corpse = "small-remnants",
    collision_box = {{-0.29, -0.79}, {0.29, 0.79}},
    selection_box = {{-0.5, -1}, {0.5, 1}},
    resistances =
    {
      {
        type = "fire",
        percent = 80
      },
      {
        type = "impact",
        percent = 30
      }
    },
    fluid_box =
    {
      base_area = 1,
      height = 2,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, -1.5}, type="output" },
        { position = {0, 1.5}, type="input" },
      },
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.01 / 2.5
    },
    energy_usage = "30kW",
    pumping_speed = 200,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },

    animations =
    {
      north =
      {
        filename = "__base__/graphics/entity/pump/pump-north.png",
        width = 53,
        height = 79,
        line_length =8,
        frame_count =32,
        animation_speed = 0.5,
        shift = util.by_pixel(8.000, 7.500),
        hr_version = {
          filename = "__base__/graphics/entity/pump/hr-pump-north.png",
          width = 103,
          height = 164,
          scale = 0.5,
          line_length =8,
          frame_count =32,
          animation_speed = 0.5,
          shift = util.by_pixel(8, 3.5) -- {0.515625, 0.21875}
        },
      },
      east =
      {
        filename = "__base__/graphics/entity/pump/pump-east.png",
        width = 66,
        height = 60,
        line_length =8,
        frame_count =32,
        animation_speed = 0.5,
        shift = util.by_pixel(0, 4),
        hr_version = {
          filename = "__base__/graphics/entity/pump/hr-pump-east.png",
          width = 130,
          height = 109,
          scale = 0.5,
          line_length =8,
          frame_count =32,
          animation_speed = 0.5,
          shift = util.by_pixel(-0.5, 1.75) --{-0.03125, 0.109375}
        },
      },

      south =
      {
        filename = "__base__/graphics/entity/pump/pump-south.png",
        width = 62,
        height = 87,
        line_length =8,
        frame_count =32,
        animation_speed = 0.5,
        shift = util.by_pixel(13.5, 0.5),
        hr_version = {
          filename = "__base__/graphics/entity/pump/hr-pump-south.png",
          width = 114,
          height = 160,
          scale = 0.5,
          line_length =8,
          frame_count =32,
          animation_speed = 0.5,
          shift = util.by_pixel(12.5, -8) -- {0.75, -0.5}
        },
      },
      west =
      {
        filename = "__base__/graphics/entity/pump/pump-west.png",
        width = 69,
        height = 51,
        line_length =8,
        frame_count =32,
        animation_speed = 0.5,
        shift = util.by_pixel(0.5, -0.5),
        hr_version = {
          filename = "__base__/graphics/entity/pump/hr-pump-west.png",
          width = 131,
          height = 111,
          scale = 0.5,
          line_length =8,
          frame_count =32,
          animation_speed = 0.5,
          shift = util.by_pixel(-0.25, 1.25) -- {-0.015625, 0.078125}
        },
      },
    },

    fluid_wagon_connector_frame_count = 35,

    fluid_wagon_connector_graphics = require("prototypes.entity.pump-connector"),

    fluid_animation =
    {
      north =
      {
        filename = "__base__/graphics/entity/pump/pump-north-liquid.png",
        apply_runtime_tint = true,
        width = 20,
        height = 13,
        line_length =8,
        frame_count =32,
        shift = util.by_pixel(-0.500, -14.500),
        hr_version = {
          filename = "__base__/graphics/entity/pump/hr-pump-north-liquid.png",
          apply_runtime_tint = true,
          width = 38,
          height = 22,
          scale = 0.5,
          line_length =8,
          frame_count =32,
          shift = util.by_pixel(-0.250, -16.750)
        }
      },

      east =
      {
        filename = "__base__/graphics/entity/pump/pump-east-liquid.png",
        width = 18,
        height = 24,
        line_length =8,
        frame_count =32,
        shift = util.by_pixel(6.000, -8.000),
        hr_version = {
          filename = "__base__/graphics/entity/pump/hr-pump-east-liquid.png",
          width = 35,
          height = 46,
          scale = 0.5,
          line_length =8,
          frame_count =32,
          shift = util.by_pixel(6.250, -8.500)
        },
      },

      south =
      {
        filename = "__base__/graphics/entity/pump/pump-south-liquid.png",
        width = 26,
        height = 55,
        line_length =8,
        frame_count =32,
        shift = util.by_pixel(3.500, 6.500),
        hr_version = {
          filename = "__base__/graphics/entity/pump/hr-pump-south-liquid.png",
          width = 38,
          height = 45,
          scale = 0.5,
          line_length =8,
          frame_count =32,
          shift = util.by_pixel(0.500, -9.250)
        },
      },
      west =
      {
        filename = "__base__/graphics/entity/pump/pump-west-liquid.png",
        width = 18,
        height = 24,
        line_length =8,
        frame_count =32,
        shift = util.by_pixel(-6.000, -9.000),
        hr_version = {
          filename = "__base__/graphics/entity/pump/hr-pump-west-liquid.png",
          width = 35,
          height = 47,
          scale = 0.5,
          line_length =8,
          frame_count =32,
          shift = util.by_pixel(-6.500, -9.500)
        },
      }
    },

    glass_pictures =
    {
      north = {
        filename = "__base__/graphics/entity/pump/pump-north-glass.png",
        width = 32,
        height = 64,
        hr_version = {
          filename = "__base__/graphics/entity/pump/hr-pump-north-glass.png",
          width = 64,
          height = 128,
          scale = 0.5,
        },
      },
      east = {
        filename = "__base__/graphics/entity/pump/pump-east-glass.png",
        width = 32,
        height = 32,
        shift = util.by_pixel(0.000, -16.000),
        hr_version = {
          filename = "__base__/graphics/entity/pump/hr-pump-east-glass.png",
          width = 128,
          height = 192,
          scale = 0.5,
        },
      },
      south = {
        filename = "__base__/graphics/entity/pump/pump-south-glass.png",
        width = 32,
        height = 64,
        hr_version = {
          filename = "__base__/graphics/entity/pump/hr-pump-south-glass.png",
          width = 64,
          height = 128,
          scale = 0.5,
        },
      },
      west = {
        filename = "__base__/graphics/entity/pump/pump-west-glass.png",
        width = 32,
        height = 96,
        shift = util.by_pixel(0.000, 15.000),
        hr_version = {
          filename = "__base__/graphics/entity/pump/hr-pump-west-glass.png",
          width = 192,
          height = 192,
          scale = 0.5,
          shift = util.by_pixel(-16.000, 0.000)
        },
      }
    },

    circuit_wire_connection_points =
    {
      {
        shadow =
        {
          red = {0.171875, 0.140625},
          green = {0.171875, 0.265625},
        },
        wire =
        {
          red = {-0.53125, -0.15625},
          green = {-0.53125, 0},
        }
      },
      {
        shadow =
        {
          red = {0.890625, 0.703125},
          green = {0.75, 0.75},
        },
        wire =
        {
          red = {0.34375, 0.28125},
          green = {0.34375, 0.4375},
        }
      },
      {
        shadow =
        {
          red = {0.15625, 0.0625},
          green = {0.09375, 0.125},
        },
        wire =
        {
          red = {-0.53125, -0.09375},
          green = {-0.53125, 0.03125},
        }
      },
      {
        shadow =
        {
          red = {0.796875, 0.703125},
          green = {0.625, 0.75},
        },
        wire =
        {
          red = {0.40625, 0.28125},
          green = {0.40625, 0.4375},
        }
      }
    },
    circuit_connector_sprites =
    {
      get_circuit_connector_sprites({-0.40625, -0.3125}, nil, 24),
      get_circuit_connector_sprites({0.125, 0.21875}, {0.34375, 0.40625}, 18),
      get_circuit_connector_sprites({-0.40625, -0.25}, nil, 24),
      get_circuit_connector_sprites({0.203125, 0.203125}, {0.25, 0.40625}, 18),
    },
    circuit_wire_max_distance = 9

  },

	})
end
function createAccumulator (a)
	local name=a.name
	local icon=a.icon or "__NCP-Tech__/graphics/item/"..name..".png"
	local minable=a.minable or {hardness = 0.2, mining_time = 0.5, result = name}
	local max_health=a.max_health or 150
	local max_payload_size=a.max_payload_size or 1
	local speed=a.speed or 0.05
	local total_capacity=a.total_capacity or 25000 * 3
	local rail_category=a.rail_category or "regular"
	local result_inventory_size=a.result_inventory_size or 1
	local fast_replaceable_group=a.fast_replaceable_group or "inserter"
	local aaaaaa=a.aaaaaa or aaaaaa
	data:extend({
	{
    type = "accumulator",
    name = name,
    icon = icon,
	icon_size=32,
    flags = {"placeable-neutral", "player-creation"},
    minable = minable,
    max_health = max_health,
    corpse = "medium-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
    energy_source =
    {
      type = "electric",
      buffer_capacity = "5MJ",
      usage_priority = "terciary",
      input_flow_limit = "300kW",
      output_flow_limit = "300kW"
    },
    picture =
    {
      filename = "__base__/graphics/entity/accumulator/accumulator.png",
      priority = "extra-high",
      width = 124,
      height = 103,
      shift = {0.6875, -0.203125}
    },
    charge_animation =
    {
      filename = "__base__/graphics/entity/accumulator/accumulator-charge-animation.png",
      width = 138,
      height = 135,
      line_length = 8,
      frame_count = 24,
      shift = {0.46875, -0.640625},
      animation_speed = 0.5
    },
    charge_cooldown = 30,
    charge_light = {intensity = 0.3, size = 7, color = {r = 1.0, g = 1.0, b = 1.0}},
    discharge_animation =
    {
      filename = "__base__/graphics/entity/accumulator/accumulator-discharge-animation.png",
      width = 147,
      height = 128,
      line_length = 8,
      frame_count = 24,
      shift = {0.390625, -0.53125},
      animation_speed = 0.5
    },
    discharge_cooldown = 60,
    discharge_light = {intensity = 0.7, size = 7, color = {r = 1.0, g = 1.0, b = 1.0}},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/accumulator-working.ogg",
        volume = 1
      },
      idle_sound = {
        filename = "__base__/sound/accumulator-idle.ogg",
        volume = 0.4
      },
      max_sounds_per_type = 5
    },
    circuit_wire_connection_point =
    {
      shadow =
      {
        red = {0.984375, 1.10938},
        green = {0.890625, 1.10938}
      },
      wire =
      {
        red = {0.6875, 0.59375},
        green = {0.6875, 0.71875}
      }
    },
    circuit_connector_sprites = get_circuit_connector_sprites({0.46875, 0.5}, {0.46875, 0.8125}, 26),
    circuit_wire_max_distance = 9,
    default_output_signal = {type = "virtual", name = "signal-A"}
  },

	})
end
function createPowerSwitch (a)
	local name=a.name
	local icon=a.icon or "__NCP-Tech__/graphics/item/"..name..".png"
	local minable=a.minable or {hardness = 0.2, mining_time = 0.5, result = name}
	local max_health=a.max_health or 150
	local max_payload_size=a.max_payload_size or 1
	local speed=a.speed or 0.05
	local total_capacity=a.total_capacity or 25000 * 3
	local rail_category=a.rail_category or "regular"
	local result_inventory_size=a.result_inventory_size or 1
	local fast_replaceable_group=a.fast_replaceable_group or "inserter"
	local aaaaaa=a.aaaaaa or aaaaaa
	data:extend({
	{
    type = "power-switch",
    name = name,
    icon = icon,
	icon_size=32,
    flags = {"placeable-neutral", "player-creation"},
    minable = minable,
    max_health = 200,
    corpse = "medium-remnants",

    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-1, -1}, {1, 1}},

    power_on_animation =
    {
      filename = "__base__/graphics/entity/power-switch/power-switch.png",
      animation_speed = 0.2,
      line_length = 2,
      width = 117,
      height = 74,
      frame_count = 6,
      axially_symmetrical = false,
      direction_count = 1,
      shift = {0.453125, 0.1875},
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    overlay_start_delay = 3, --power on animation overlay is only 2 frames we play at the end
    overlay_start =
    {
      filename = "__base__/graphics/entity/power-switch/power-switch-electricity-start.png",
      blend_mode = "additive",
      animation_speed = 0.2,
      line_length = 2,
      width = 38,
      height = 49,
      frame_count = 2,
      axially_symmetrical = false,
      direction_count = 1,
      shift = {0.15625, 0.046875},
    },
    overlay_loop =
    {
      filename = "__base__/graphics/entity/power-switch/power-switch-electricity-loop.png",
      blend_mode = "additive",
      animation_speed = 0.25,
      line_length = 4,
      width = 53,
      height = 56,
      frame_count = 16,
      axially_symmetrical = false,
      direction_count = 1,
      shift = {0.046875, -0.0625},
    },
    led_on =
    {
      filename = "__base__/graphics/entity/power-switch/power-switch-led.png",
      x = 6,
      width = 6,
      height = 9,
      frame_count = 1,
      shift = {0.71875, 0.140625},
    },
    led_off =
    {
      filename = "__base__/graphics/entity/power-switch/power-switch-led.png",
      width = 6,
      height = 9,
      frame_count = 1,
      shift = {0.71875, 0.140625},
    },
    circuit_wire_connection_point =
    {
      shadow =
      {
        red = {-0.328125, 1.01563},
        green = {-0.328125, 1.01563},
      },
      wire =
      {
        red = {-0.609375, 0.828125},
        green = {-0.609375, 0.828125},
      }
    },
    left_wire_connection_point =
    {
      shadow =
      {
        copper = {0.296875, -0.171875},
      },
      wire =
      {
        copper = {-0.765625, -0.890625},
      }
    },
    right_wire_connection_point =
    {
      shadow =
      {
        copper = {2.14063, 0.015625},
      },
      wire =
      {
        copper = {0.859375, -0.890625},
      }
    },

    wire_max_distance = 10
  },

	})
end
function createReactor (a)
	local name=a.name
	local icon=a.icon or "__NCP-Tech__/graphics/item/"..name..".png"
	local minable=a.minable or {hardness = 0.2, mining_time = 0.5, result = name}
	local max_health=a.max_health or 400
	local max_payload_size=a.max_payload_size or 1
	local speed=a.speed or 0.05
	local total_capacity=a.total_capacity or 25000 * 3
	local rail_category=a.rail_category or "regular"
	local result_inventory_size=a.result_inventory_size or 1
	local fast_replaceable_group=a.fast_replaceable_group or "inserter"
	local aaaaaa=a.aaaaaa or aaaaaa
	data:extend({
	{
    type = "reactor",
    name = name,
    icon  = icon,
    flags = {"placeable-neutral", "player-creation"},
    minable = minable,
    max_health = max_health,
    corpse = "big-remnants",
    consumption = "40MW",
    burner =
    {
      fuel_category = "nuclear",
      effectivity = 1,
      fuel_inventory_size = 1,
      burnt_inventory_size = 1
    },
    collision_box = {{-2.2, -2.2}, {2.2, 2.2}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},

    lower_layer_picture = {
      filename = "__base__/graphics/entity/nuclear-reactor/reactor-pipes.png",
      width = 160,
      height = 160,
      shift = { -0.03125, -0.1875 },
      hr_version =
      {
        filename = "__base__/graphics/entity/nuclear-reactor/hr-reactor-pipes.png",
        width = 320,
        height = 320,
        scale = 0.5,
        shift = { -0.03125, -0.1875 },
      }
    },

    picture =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/nuclear-reactor/reactor.png",
          width = 160,
          height = 160,
          shift = { -0.03125, -0.1875 },
          hr_version =
          {
            filename = "__base__/graphics/entity/nuclear-reactor/hr-reactor.png",
            width = 320,
            height = 320,
            scale = 0.5,
            shift = { -0.03125, -0.1875 },
          }
        },
        {
          filename = "__base__/graphics/entity/nuclear-reactor/reactor-shadow.png",
          width = 263,
          height = 162,
          shift = { 1.625 , 0 },
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/nuclear-reactor/hr-reactor-shadow.png",
            width = 525,
            height = 323,
            scale = 0.5,
            shift = { 1.625, 0 },
            draw_as_shadow = true,
          }
        },
      }
    },

    working_light_picture =
    {
      filename = "__base__/graphics/entity/nuclear-reactor/reactor-lights-color.png",
      width = 160,
      height = 160,
      shift = { -0.03125, -0.1875 },
      blend_mode = "additive",
      hr_version =
      {
        filename = "__base__/graphics/entity/nuclear-reactor/hr-reactor-lights-color.png",
        width = 320,
        height = 320,
        scale = 0.5,
        shift = { -0.03125, -0.1875 },
        blend_mode = "additive",
      }
    },

    light = {intensity = 0.6, size = 9.9, shift = {0.0, 0.0}, color = {r = 0.0, g = 1.0, b = 0.0}},

    heat_buffer =
    {
      max_temperature = 1000,
      specific_heat = "10MJ",
      max_transfer = "10GW",
      connections =
      {
        {
          position = {-2, -2},
          direction = defines.direction.north
        },
        {
          position = {0, -2},
          direction = defines.direction.north
        },
        {
          position = {2, -2},
          direction = defines.direction.north
        },
        {
          position = {2, -2},
          direction = defines.direction.east
        },
        {
          position = {2, 0},
          direction = defines.direction.east
        },
        {
          position = {2, 2},
          direction = defines.direction.east
        },
        {
          position = {2, 2},
          direction = defines.direction.south
        },
        {
          position = {0, 2},
          direction = defines.direction.south
        },
        {
          position = {-2, 2},
          direction = defines.direction.south
        },
        {
          position = {-2, 2},
          direction = defines.direction.west
        },
        {
          position = {-2, 0},
          direction = defines.direction.west
        },
        {
          position = {-2, -2},
          direction = defines.direction.west
        }
      }
    },

    connection_patches_connected =
    {
      sheet =
      {
        filename = "__base__/graphics/entity/nuclear-reactor/reactor-connect-patches.png",
        width = 32,
        height = 32,
        variation_count = 12,
        hr_version =
        {
          filename = "__base__/graphics/entity/nuclear-reactor/hr-reactor-connect-patches.png",
          width = 64,
          height = 64,
          variation_count = 12,
          scale = 0.5
        }
      }
    },

    connection_patches_disconnected =
    {
      sheet =
      {
        filename = "__base__/graphics/entity/nuclear-reactor/reactor-connect-patches.png",
        width = 32,
        height = 32,
        variation_count = 12,
        y = 32,
        hr_version =
        {
          filename = "__base__/graphics/entity/nuclear-reactor/hr-reactor-connect-patches.png",
          width = 64,
          height = 64,
          variation_count = 12,
          y = 64,
          scale = 0.5
        }
      }
    },

    connection_patches =
    {
      north =
      {
        filename = "__base__/graphics/entity/nuclear-reactor/connection-patch-north.png",
        width = 160,
        height = 15,
        shift = util.by_pixel(0, -72.5)
      },
      east =
      {
        filename = "__base__/graphics/entity/nuclear-reactor/connection-patch-east.png",
        width = 15,
        height = 160,
        shift = util.by_pixel(72.5, 0)
      },
      south =
      {
        filename = "__base__/graphics/entity/nuclear-reactor/connection-patch-south.png",
        width = 160,
        height = 15,
        shift = util.by_pixel(0, 72.5)
      },
      west =
      {
        filename = "__base__/graphics/entity/nuclear-reactor/connection-patch-west.png",
        width = 15,
        height = 160,
        shift = util.by_pixel(-72.5, 0)
      }
    },

    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
  },

	})
end
function createHeatPipe (a)
	local name=a.name
	local icon=a.icon or "__NCP-Tech__/graphics/item/"..name..".png"
	local minable=a.minable or {hardness = 0.2, mining_time = 0.5, result = name}
	local max_health=a.max_health or 200
	local max_payload_size=a.max_payload_size or 1
	local speed=a.speed or 0.05
	local total_capacity=a.total_capacity or 25000 * 3
	local rail_category=a.rail_category or "regular"
	local result_inventory_size=a.result_inventory_size or 1
	local fast_replaceable_group=a.fast_replaceable_group or "inserter"
	local aaaaaa=a.aaaaaa or aaaaaa
	data:extend({
	{
    type = "heat-pipe",
    name = name,
    icon = icon,
	icon_size=32,
    flags = {"placeable-neutral", "player-creation"},
    minable = minable,
    max_health = max_health,
    corpse = "small-remnants",
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    resistances =
    {
      {
        type = "fire",
        percent = 90
      },
      {
        type = "explosion",
        percent = 30
      },
      {
        type = "impact",
        percent = 30
      }
    },
    collision_box = {{-0.3, -0.3}, {0.3, 0.3}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    minimum_glow_temperature = 350,
    glow_alpha_modifier = 0.6,
    heat_buffer =
    {
      max_temperature = 1000,
      specific_heat = "1MJ",
      max_transfer = "1GW",
      connections =
      {
        {
          position = {0, 0},
          direction = defines.direction.north
        },
        {
          position = {0, 0},
          direction = defines.direction.east
        },
        {
          position = {0, 0},
          direction = defines.direction.south
        },
        {
          position = {0, 0},
          direction = defines.direction.west
        }
      }
    },

    connection_sprites = make_heat_pipe_pictures("__base__/graphics/entity/heat-pipe/", "heat-pipe",
      {
        single = { name = "straight-vertical-single", ommit_number = true },
        straight_vertical = { variations = 6 },
        straight_horizontal = { variations = 6 },
        corner_right_up = { name = "corner-up-right", variations = 6 },
        corner_left_up = { name = "corner-up-left", variations = 6 },
        corner_right_down = { name = "corner-down-right", variations = 6 },
        corner_left_down = { name = "corner-down-left", variations = 6 },
        t_up = {},
        t_down = {},
        t_right = {},
        t_left = {},
        cross = { name = "t" },
        ending_up = {},
        ending_down = {},
        ending_right = {},
        ending_left = {},
      }),

    heat_glow_sprites = make_heat_pipe_pictures("__base__/graphics/entity/heat-pipe/", "heated",
      {
        single = { empty = true },
        straight_vertical = { variations = 6 },
        straight_horizontal = { variations = 6 },
        corner_right_up = { name = "corner-up-right", variations = 6 },
        corner_left_up = { name = "corner-up-left", variations = 6 },
        corner_right_down = { name = "corner-down-right", variations = 6 },
        corner_left_down = { name = "corner-down-left", variations = 6 },
        t_up = {},
        t_down = {},
        t_right = {},
        t_left = {},
        cross = { name = "t" },
        ending_up = {},
        ending_down = {},
        ending_right = {},
        ending_left = {},
      }),

    heat_glow_light = {
      --minimum_darkness = 0.3,
      color = { r = 1, g = 155/255, b = 0.05, a = 0 },
      --shift = {-0.6, 3.5},
      size = 2.5,
      intensity = 0.1,
      --add_perspective = true
    },
  },

	})
end


function createEEEXXXXPPP (a)
	local name=a.name
	local icon=a.icon or "__NCP-Tech__/graphics/item/"..name..".png"
	local minable=a.minable or {hardness = 0.2, mining_time = 0.5, result = name}
	local max_health=a.max_health or 200
	local max_payload_size=a.max_payload_size or 1
	local speed=a.speed or 0.05
	local total_capacity=a.total_capacity or 25000 * 3
	local rail_category=a.rail_category or "regular"
	local result_inventory_size=a.result_inventory_size or 1
	local fast_replaceable_group=a.fast_replaceable_group or "inserter"
	local aaaaaa=a.aaaaaa or aaaaaa
	data:extend({


	})
end
--[[
function createTrasportBelt (a)
	local name=a.name
	data:extend({


	})
end


]]--



--(name,icon,hardness,mining_time,result,max_health,result_inventory_size,source_inventory_size,fluidIn,fluidOut,fast_replaceable_group,crafting_categories,crafting_speed,energy_usage)
function Electric_furnace(name,mrk)
	createAssemblingMachine{name=name,crafting_categories={"Electric_furnace"}}
end
function Rotary_kiln(name,mrk)
	createAssemblingMachine{name=name,crafting_categories={"Rotary_kiln"}}
end
function Ore_washing(name,mrk)
	createAssemblingMachine{name=name,crafting_categories={"Ore_washing"}}
end
function Chemical_plant(name,mrk)
	createAssemblingMachine{name=name,crafting_categories={"Chemical_plant"}}
end
function Electrolyzer(name,mrk)
	createAssemblingMachine{name=name,crafting_categories={"Electrolyzer"}}
end
function Chemical_furnace(name,mrk)
	createAssemblingMachine{name=name,crafting_categories={"Chemical_furnace","Electric_chemical_furnace"}}
end
function Pump(name,mrk)
	createAssemblingMachine{name=name,crafting_categories={"Pump"}}
end
function Blast_furnace(name,mrk)
	createAssemblingMachine{name=name,crafting_categories={"Blast_furnace"}}
end
function Nuclear_fuel_processing_plant(name,mrk)
	createAssemblingMachine{name=name,crafting_categories={"Nuclear_fuel_processing_plant"}}
end
function Rolling_machine(name,mrk)
	createAssemblingMachine{name=name,crafting_categories={"Rolling_machine"}}
end
function Mixer(name,mrk)
	createAssemblingMachine{name=name,crafting_categories={"Mixer"}}
end
function Cracking_plant(name,mrk)
	createAssemblingMachine{name=name,crafting_categories={"Cracking_plant"}}
end
function Distillation(name,mrk)
	createAssemblingMachine{name=name,crafting_categories={"Distillation","Dry_distillation"},size=5,fluidIn=5,fluidOut=5,}
end
function Compressor(name,mrk)
	createAssemblingMachine{name=name,crafting_categories={"Compressor"}}
end
function Electric_arc_furnace(name,mrk)
	createAssemblingMachine{name=name,crafting_categories={"Electric_arc_furnace"}}
end
function Vacuum_oxygen_decarburization(name,mrk)
	createAssemblingMachine{name=name,crafting_categories={"Vacuum_oxygen_decarburization"}}
end
function Cryogenic_distillation_plant(name,mrk)
	createAssemblingMachine{name=name,crafting_categories={"Cryogenic_distillation_plant"}}
end
function Farm(name,mrk)
	createAssemblingMachine{name=name,crafting_categories={"Farm"}}
end
function Electronics_assembly_machine(name,mrk)
	createAssemblingMachine{name=name,crafting_categories={"Electronics_assembly_machine"}}
end
function Flash_furnace(name,mrk)
	createAssemblingMachine{name=name,crafting_categories={"Flash_furnace"}}
end
function TSL_furnace(name,mrk)
	createAssemblingMachine{name=name,crafting_categories={"TSL_furnace"}}
end
function Extruder(name,mrk)
	createAssemblingMachine{name=name,crafting_categories={"Extruder"}}
end
function Milling_machine(name,mrk)
	createAssemblingMachine{name=name,crafting_categories={"Milling_machine"}}
end
function Furnace(name,mrk)
	createAssemblingMachine{name=name,crafting_categories={"Furnace","Alloy_furnace"}}
end
function Assembling_machine(name,mrk)
	createAssemblingMachine{name=name,crafting_categories={"Assembling_machine","Shifter","Silicon_crucible","Lithium_extractor","Anode_furnace","Silicon_furnace","Filter"}}
end
function Refinery(name,mrk)
	createAssemblingMachine{name=name,crafting_categories={"Refinery"}}
end
function Electric_flash_furnace(name,mrk)
	createAssemblingMachine{name=name,crafting_categories={"Electric_flash_furnace"}}
end
function Electric_chemical_furnace(name,mrk)
	createAssemblingMachine{name=name,crafting_categories={"Chemical_furnace"}}
end
function Bank(name,mrk)
	createAssemblingMachine{name=name,crafting_categories={"Bank","Market"}}
end
function GrindingMill(name,mrk)
	createFurnace{name=name,crafting_categories={"Grinding_mill"}}
end
function Crusher(name,mrk)
	createFurnace{name=name,crafting_categories={"Crusher"}}
end
function Boiler(name,mrk)
	createBoiler{name=name}
end
function Electric_pole(name,mrk)
	createElectricPole{name=name}
end
function InserterNormal(name,mrk)
	createInserter{name=name}
end
function InserterLong(name,mrk)
	createInserter{name=name}
end
function InserterStack(name,mrk)
	createInserter{name=name}
end
function InserterLongStack(name,mrk)
	createInserter{name=name}
end
function InserterFilter(name,mrk)
	createInserter{name=name}
end
function InserterFilterStack(name,mrk)
	createInserter{name=name}
end
function Laboratory(name,mrk)
	createLab{name=name}
end
function Locomotive(name,mrk)
	createLocomotive{name=name}
end
function MiningDrill(name,mrk)
	createMiningDrill{name=name}
end
function OffsorePump(name,mrk)
	createOffshorePump{name=name}
end
function PumpJack(name,mrk)
	createFurnace{name=name}
end
function Radar(name,mrk)
	createRadar{name=name}
end
function Roboport(name,mrk)
	createRoboport{name=name}
end
function SolarArray(name,mrk)
	createSolarPanel{name=name}
end
function Splitter(name,mrk)
	createSplitter{name=name}
end
function SteamEngine(name,mrk)
	createGenerator{name=name}
end
function SteamTurbine(name,mrk)
	createGenerator{name=name}
end
function TransportBelt(name,mrk)
	createTrasportBelt{name=name}
end
function TransportBeltUnderground(name,mrk)
	createTrasportBeltUnderground{name=name}
end






function makeTech(name,icon,effects,prerequisites)
	data:extend(
	{


	{
		type = "technology",
		name = name,
		icon = icon,
	icon_size=32,
		effects =effects,

		prerequisites = prerequisites,
    unit =
	{
		count = 50,
		ingredients =
		{

			{"Credit100", 10}
		},
		time = 30
    },
    order = "c-e-b",
	}
	})



end


function openRecipe(name,icon,effects,prerequisites)
	makeTech (name,icon,effects,prerequisites)

end
