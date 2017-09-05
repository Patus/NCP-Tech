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



function makeItem(a)
	--local icon="__NCP-Tech__/graphics/item/"..a.name..".png"
	
	
	
	local name=a.name
	local icon= a.icon or "__NCP-Tech__/graphics/item/"..a.name..".png" 
	local flags=a.flags or { "goes-to-main-inventory" }
	local subgroup=a.subgroup or "notsubgoup"
	local order=a.order or "a-b-c"
	local stack_size=a.stack_size or 20
	local place_result=a.place_result or nil
	
	data:extend({
	{
		type= "item",
		name= name,
		icon = icon,
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
	if(data.raw["recipe"][name..i]==nil)then
		return (name..i)
	end
i=i+1
end



end


recipeNames={}
function makeRecipe(a)
	if(data.raw["item"][a.name]==nil)then 
		--makeItem{name=a.name,icon=a.icon,flags=a.flags,subgroup=a.subgroup,order=a.order,stack_size=a.stack,place_result=a.place_result}
	end
	
	
	local name=a.name
	local category= a.category or "crafting"
	local energy_required=a.energy_required or 2
	local enabled=a.enabled or "true"
	local ingredients=a.ingredients or {}
	local results=a.results or {{type="item", name=a.name, amount=1,probability =1}}
	local icon=a.icon or "__NCP-Tech__/graphics/item/"..a.name..".png" 
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


--(name,icon,hardness,mining_time,result,max_health,result_inventory_size,source_inventory_size,fluidIn,fluidOut,fast_replaceable_group,crafting_categories,crafting_speed,energy_usage)
function createElectric_furnace(name,mrk)
	makeAssemblingmachine (name.."_Mrk"..mrk,"Electric_furnace",0.2,0.5,"Electric_furnace",250,1,1,1,1,"Electric_furnace",{"Electric_furnace"},1,"1.6MW")
end
function createRotary_kiln(name,mrk)
	makeAssemblingmachine (name.."_Mrk"..mrk,"Rotary_kiln",0.2,0.5,"Rotary_kiln",250,1,1,2,2,"Rotary_kiln",{"Rotary_kiln"},1,"2MW")
end
function createOre_washing(name,mrk)
	makeAssemblingmachine (name.."_Mrk"..mrk,"Ore_washing",0.2,0.5,"Ore_washing",250,1,1,1,1,"Ore_washing",{"Ore_washing"},1,"0.1MW")
end
function createChemical_plant(name,mrk)
	makeAssemblingmachine ("Chemical_plant","Chemical_plant",0.2,0.5,"Chemical_plant",250,1,1,4,4,"Chemical_plant",{"Chemical_plant"},1,"0.7MW")
end
function createElectrolyzer(name,mrk)
	makeAssemblingmachine ("Electrolyzer","Electrolyzer",0.2,0.5,"Electrolyzer",250,1,1,2,2,"Electrolyzer",{"Electrolyzer"},1,"1.25MW")
end
function createChemical_furnace(name,mrk)
	makeAssemblingmachine ("Chemical_furnace","Chemical_furnace",0.2,0.5,"Chemical_furnace",250,1,1,2,2,"Chemical_furnace",{"Chemical_furnace"},1,"1.1MW")
end
function createPump(name,mrk)
	makeAssemblingmachine ("Pump","Pump",0.2,0.5,"Pump",250,1,1,2,2,"Pump",{"Pump"},1,"30kW")
end
function createBlast_furnace(name,mrk)
	makeAssemblingmachine ("Blast_furnace","Blast_furnace",0.2,0.5,"Blast_furnace",250,1,1,2,2,"Blast_furnace",{"Blast_furnace"},1,"0.35MW")
end
function createNuclear_fuel_processing_plant(name,mrk)
	makeAssemblingmachine ("Nuclear_fuel_processing_plant","Nuclear_fuel_processing_plant",0.2,0.5,"Nuclear_fuel_processing_plant",250,1,1,4,4,"Nuclear_fuel_processing_plant",{"Nuclear_fuel_processing_plant"},1,"0.6MW")
end
function createRolling_machine(name,mrk)
	makeAssemblingmachine ("Rolling_machine","Rolling_machine",0.2,0.5,"Rolling_machine",250,1,1,2,2,"Rolling_machine",{"Rolling_machine"},1,"0.15MW")
end
function createMixer(name,mrk)
	makeAssemblingmachine ("Mixer","Mixer",0.2,0.5,"Mixer",250,1,1,2,2,"Mixer",{"Mixer"},1,"0.15MW")
end
function createCracking_plant(name,mrk)
	makeAssemblingmachine ("Cracking_plant","Cracking_plant",0.2,0.5,"Cracking_plant",250,1,1,4,4,"Cracking_plant",{"Cracking_plant"},1,"2.9MW")
end
function createDistillation(name,mrk)
	makeAssemblingmachine ("Distillation","Distillation",0.2,0.5,"Distillation",250,1,1,4,4,"Distillation",{"Distillation"},1,"4.0MW")
end
function createCompressor(name,mrk)
	makeAssemblingmachine ("Compressor","Compressor",0.2,0.5,"Compressor",250,1,1,2,2,"Compressor",{"Compressor"},1,"0.1MW")
end
function createElectric_arc_furnace(name,mrk)
	makeAssemblingmachine ("Electric_arc_furnace","Electric_arc_furnace",0.2,0.5,"Electric_arc_furnace",250,1,1,2,2,"Electric_arc_furnace",{"Electric_arc_furnace"},1,"1.68MW")
end
function createVacuum_oxygen_decarburization(name,mrk)
	makeAssemblingmachine ("Vacuum_oxygen_decarburization","Vacuum_oxygen_decarburization",0.2,0.5,"Vacuum_oxygen_decarburization",250,1,1,2,2,"Vacuum_oxygen_decarburization",{"Vacuum_oxygen_decarburization"},1,"0.15MW")
end
function createCryogenic_distillation_plant(name,mrk)
	makeAssemblingmachine ("Cryogenic_distillation_plant","Cryogenic_distillation_plant",0.2,0.5,"Cryogenic_distillation_plant",250,1,1,2,2,"Cryogenic_distillation_plant",{"Cryogenic_distillation_plant"},1,"0.3MW")
end
function createFarm(name,mrk)
	makeAssemblingmachine ("Farm","Farm",0.2,0.5,"Farm",250,1,1,2,2,"Farm",{"Farm"},1,"0.1MW")
end
function createElectronics_assembly_machine(name,mrk)
	makeAssemblingmachine ("Electronics_assembly_machine","Electronics_assembly_machine",0.2,0.5,"Electronics_assembly_machine",250,1,1,2,2,"Electronics_assembly_machine",{"Electronics_assembly_machine"},1,"0.15MW")
end
function createFlash_furnace(name,mrk)
	makeAssemblingmachine ("Flash_furnace","Flash_furnace",0.2,0.5,"Flash_furnace",250,1,1,2,2,"Flash_furnace",{"Flash_furnace"},1,"0.8MW")
end
function createTSL_furnace(name,mrk)
	makeAssemblingmachine ("TSL_furnace","TSL_furnace",0.2,0.5,"TSL_furnace",250,1,1,2,2,"TSL_furnace",{"TSL_furnace"},1,"0.15MW")
end
function createExtruder(name,mrk)
	makeAssemblingmachine ("Extruder","Extruder",0.2,0.5,"Extruder",250,1,1,2,2,"Extruder",{"Extruder"},1,"0.05MW")
end
function createMilling_machine(name,mrk)
	makeAssemblingmachine ("Milling_machine","Milling_machine",0.2,0.5,"Milling_machine",250,1,1,2,2,"Milling_machine",{"Milling_machine"},1,"0.15MW")
end
function createFurnace(name,mrk)
	makeAssemblingmachine ("Furnace","Furnace",0.2,0.5,"Furnace",250,1,1,2,2,"Furnace",{"Furnace"},1,"1.2MW")
end
function createAssembling_machine(name,mrk)
	makeAssemblingmachine ("Assembling_machine","Assembling_machine",0.2,0.5,"Assembling_machine",250,1,1,2,2,"Assembling_machine",{"Assembling_machine"},2,"0.15MW")
end
function createRefinery(name,mrk)
	makeAssemblingmachine ("Refinery","Refinery",0.2,0.5,"Refinery",250,1,1,4,4,"Refinery",{"Refinery"},1,"0.05MW")
end
function createElectric_flash_furnace(name,mrk)
	makeAssemblingmachine ("Electric_flash_furnace","Electric_flash_furnace",0.2,0.5,"Electric_flash_furnace",250,1,1,2,2,"Electric_flash_furnace",{"Electric_flash_furnace"},1,"1.2MW")
end
function createElectric_chemical_furnace(name,mrk)
	makeAssemblingmachine ("Electric_chemical_furnace","Electric_chemical_furnace",0.2,0.5,"Electric_chemical_furnace",250,1,1,2,2,"Electric_chemical_furnace",{"Electric_chemical_furnace"},1,"0.0015MW")
end
function createBank(name,mrk)
	makeAssemblingmachine ("Bank","Bank",0.2,0.5,"Bank",250,1,1,0,0,"Bank",{"Bank"},1,"0.02MW")
end

function makeTech(name,icon,effects,prerequisites)
	data:extend(
	{
	
	
	{
		type = "technology",
		name = name,
		icon = icon,
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
