function makeItem(name,stack_size,subgroup,place_result,order)
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
		flags= { "goes-to-main-inventory" },
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


function makeRecipe(name,input,output,category,subgroup)
	local icon = "__NCP-Tech__/graphics/"..output[1][1].."/"..output[1][2]..".png"
	
	if(string.sub(output[1][2],-7)=="_bottle" or string.sub(output[1][2],-7)=="_barrel") then
		icon="__NCP-Tech__/graphics/"..output[1][1].."/B"..string.sub(output[1][2],-5)..".png"
	end
	
	data:extend({
	{
		type = "recipe",
		name = name,
		category =category,
		energy_required = 2,
		enabled = "true",
		ingredients =
		{
			
		},
		results = 
		{
			
		},
		icon = icon,
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
		--subgroup = subgroup,
	},
	})
	

end



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

