require("prototypes.trasportbeltPictures")


data:extend(
{
	{
		type = "recipe",
		name = "Credit",
		category = "Bank",
		energy_required = 2,
		enabled = "true",
		ingredients =
		{
			{type="item", name="Credit100", amount=1},
		},
		results = 
		{
			{type="item", name="Credit", amount=100},
		},
		icon = "__NCP-Tech__/graphics/item/Credit.png",
		subgroup = "Recourses",
	},
	{
		type = "recipe",
		name = "Credit100_up",
		category = "Bank",
		energy_required = 2,
		enabled = "true",
		ingredients =
		{
			{type="item", name="Credit", amount=100},
		},
		results = 
		{
			{type="item", name="Credit100", amount=1},
		},
		icon = "__NCP-Tech__/graphics/item/Credit100.png",
		subgroup = "Recourses",
	},
	{
		type = "recipe",
		name = "Credit100_down",
		category = "Bank",
		energy_required = 2,
		enabled = "true",
		ingredients =
		{
			{type="item", name="Credit10k", amount=1},
		},
		results = 
		{
			{type="item", name="Credit100", amount=100},
		},
		icon = "__NCP-Tech__/graphics/item/Credit100.png",
		subgroup = "Recourses",
	},
	{
		type = "recipe",
		name = "Credit10k_up",
		category = "Bank",
		energy_required = 2,
		enabled = "true",
		ingredients =
		{
			{type="item", name="Credit100", amount=100},
		},
		results = 
		{
			{type="item", name="Credit10k", amount=1},
		},
		icon = "__NCP-Tech__/graphics/item/Credit10k.png",
		subgroup = "Recourses",
	},
	{
		type = "recipe",
		name = "Credit10k_down",
		category = "Bank",
		energy_required = 2,
		enabled = "true",
		ingredients =
		{
			{type="item", name="Credit1M", amount=1},
		},
		results = 
		{
			{type="item", name="Credit10k", amount=100},
		},
		icon = "__NCP-Tech__/graphics/item/Credit10k.png",
		subgroup = "Recourses",
	},
	{
		type = "recipe",
		name = "Credit1M_up",
		category = "Bank",
		energy_required = 2,
		enabled = "true",
		ingredients =
		{
			{type="item", name="Credit10k", amount=100},
		},
		results = 
		{
			{type="item", name="Credit1M", amount=1},
		},
		icon = "__NCP-Tech__/graphics/item/Credit1M.png",
		subgroup = "Recourses",
	},
	{
		type = "recipe",
		name = "Credit1M_down",
		category = "Bank",
		energy_required = 2,
		enabled = "true",
		ingredients =
		{
			{type="item", name="Credit1G", amount=1},
		},
		results = 
		{
			{type="item", name="Credit1M", amount=1000},
		},
		icon = "__NCP-Tech__/graphics/item/Credit1M.png",
		subgroup = "Recourses",
	},
	{
		type = "recipe",
		name = "Credit1G_up",
		category = "Bank",
		energy_required = 2,
		enabled = "true",
		ingredients =
		{
			{type="item", name="Credit1M", amount=1000},
		},
		results = 
		{
			{type="item", name="Credit1G", amount=1},
		},
		icon = "__NCP-Tech__/graphics/item/Credit1G.png",
		subgroup = "Recourses",
	},

	
  
  
  
  
  
  
 


}
)

local items={"gear","plate","rod","foil","pipe","chain","transmission_chain","wire","underground_pipe"}
local materials={"Iron","Copper","Steel","Tin","Gold","Nickel","Zirconium","Aluminium","Lead","Titanium","Silver","Stainless_steel","Plastic","Magnesium","Tungsten","Brass","Nichrome"}
local billetName={["Iron"]="Iron_billet",["Copper"]="Copper_billet",["Steel"]="Steel_billet",["Tin"]="Tin_billet",["Gold"]="Gold_ingot",["Nickel"]="Nickel_billet",["Zirconium"]="Zirconium_billet",
					["Aluminium"]="Aluminium_billet",["Lead"]="Lead_billet",["Titanium"]="Titanium_billet",["Silver"]="Silver_ingot",["Stainless_steel"]="Stainless_steel_billet",
					["Plastic"]="Plastic_pellets",["Magnesium"]="Magnesium_billet",["Tungsten"]="Tungsten_carbide_billet",["Concrete"]="Concrete_block",["Brass"]="Brass_billet",
					["Nichrome"]="Nichrome"}
					
local itemMachines={["gear"]=nil,["plate"]="Rolling_machine",["rod"]="Extruder",["foil"]="Rolling_machine",["pipe"]=nil,["chain"]=nil,
					["transmission_chain"]=nil,["wire"]="Extruder",["underground_pipe"]=nil}
local itemOutputs={["gear"]=1,["plate"]=2,["rod"]=4,["foil"]=4,["pipe"]=1,["chain"]=1,["transmission_chain"]=1,["wire"]=2,["underground_pipe"]=1}
local itemInputs={["gear"]=1,["plate"]=1,["rod"]=1,["foil"]=1,["pipe"]=2,["chain"]=1,["transmission_chain"]=2,["wire"]=1}
local inputItem={["gear"]="plate",["foil"]="plate",["pipe"]="plate",["chain"]="rod",["wire"]="rod"}



local undergroundpipeLenght={["Iron"]=10,["Copper"]=10,["Steel"]=10,["Tin"]=10,["Gold"]=10,["Nickel"]=10,
					["Aluminium"]=10,["Lead"]=10,["Titanium"]=10,["Silver"]=10,["Stainless_steel"]=10,
					["Plastic"]=10,["Magnesium"]=10,["Tungsten"]=10,["Brass"]=10}
					
local pipeSize={["Iron"]=1,["Copper"]=1,["Steel"]=1,["Tin"]=1,["Gold"]=1,["Nickel"]=1,
					["Aluminium"]=1,["Lead"]=1,["Titanium"]=1,["Silver"]=1,["Stainless_steel"]=1,
					["Plastic"]=1,["Magnesium"]=1,["Tungsten"]=1,["Brass"]=1}




					
				
					
						
function makeRecipe(name,input,output,category,subgroup)

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
		icon = "__NCP-Tech__/graphics/"..output[1][1].."/"..output[1][2]..".png",
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

function makeItem(name,stack_size,subgroup,place_result)
	data:extend({
	{
		type= "item",
		name= name,
		icon = "__NCP-Tech__/graphics/item/"..name..".png",
		flags= { "goes-to-main-inventory" },
		subgroup = subgroup,
		order= "a-b-c",
		stack_size= stack_size,
		place_result =nil,
		},

	})
	if(place_result==true)then
		data.raw["item"][name].place_result=name
	end
	
end

function makeItems(material,item)
	local itemName=material.."_"..item
	if(item=="pipe" or item=="underground_pipe")then
		
		data:extend(
		{
		{
			type= "item",
			name= itemName,
			icon = "__NCP-Tech__/graphics/item/"..itemName..".png",
			flags= { "goes-to-main-inventory" },
			subgroup = item,
			order= "a-b-c",
			stack_size= 50,
			place_result =itemName ,
		},

		})
		makeEntities(material,item)
	else
		data:extend(
		{
		{
			type= "item",
			name= itemName,
			icon = "__NCP-Tech__/graphics/item/"..itemName..".png",
			flags= { "goes-to-main-inventory" },
			subgroup = item,
			order= "a-b-c",
			stack_size= 50,
		},

		})
	end
	
end

function makeRecipes(material,item)
local itemName=material.."_"..item
	if(item=="transmission_chain" or item=="underground_pipe")then
		if(item=="transmission_chain")then
		data:extend(
		{
		{
		type = "recipe",
		name = itemName,
		category =itemMachines[item],
		energy_required = 2,
		enabled = "true",
		ingredients =
		{
			{type="item", name=material.."_gear", amount=itemInputs[item]},
			{type="item", name=material.."_chain", amount=itemInputs[item]/2},
		},
		results = 
		{
			{type="item", name=itemName, amount=itemOutputs[item]},
		},
		icon = "__NCP-Tech__/graphics/item/"..itemName..".png",
		subgroup = item,
		},
		})
		end
		if(item=="underground_pipe")then
			data:extend(
		{
		{
		type = "recipe",
		name = itemName,
		category =itemMachines[item],
		energy_required = 2,
		enabled = "true",
		ingredients =
		{
			{type="item", name=material.."_pipe", amount=undergroundpipeLenght[material]+4},
		},
		results = 
		{
			{type="item", name=itemName, amount=itemOutputs[item]},
		},
		icon = "__NCP-Tech__/graphics/item/"..itemName..".png",
		subgroup = item,
		},
		})
		end
	else
		if(item=="plate" or item=="rod")then
			data:extend(
			{
			{
			type = "recipe",
			name = itemName,
			category =itemMachines[item],
			energy_required = 2,
			enabled = "true",
			ingredients =
			{
				{type="item", name=billetName[material], amount=itemInputs[item]},
			},
			results = 
			{
				{type="item", name=itemName, amount=itemOutputs[item]},
			},
			icon = "__NCP-Tech__/graphics/item/"..itemName..".png",
			subgroup = item,
			},
			})
		else
			data:extend(
			{
			{
			type = "recipe",
			name = itemName,
			category =itemMachines[item],
			energy_required = 2,
			enabled = "true",
			ingredients =
			{
				{type="item", name=material.."_"..inputItem[item], amount=itemInputs[item]},
			},
			results = 
			{
				{type="item", name=itemName, amount=itemOutputs[item]},
			},
			icon = "__NCP-Tech__/graphics/item/"..itemName..".png",
			subgroup = item,
			},
			})
		end
		
	end
		
	
	
	
      
    


end

function makePipeEntitie(itemName,base_area)
	data:extend(
	{
		{
		type = "pipe",
		name = itemName,
		icon ="__NCP-Tech__/graphics/item/"..itemName..".png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = itemName},
		max_health = 50,
		corpse = "small-remnants",
		resistances =
		{
		{
			type = "fire",
			percent = 90
		}
		},
		fast_replaceable_group = "pipe",
		collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		fluid_box =
		{
		base_area = base_area,
		pipe_connections =
		{
			{ position = {0, -1} },
			{ position = {1, 0} },
			{ position = {0, 1} },
			{ position = {-1, 0} }
		},
		},
		pictures = pipepictures(),
		working_sound =
		{
		sound = {
			{
			filename = "__base__/sound/pipe.ogg",
			volume = 0.85
			},
		},
		match_volume_to_activity = true,
		max_sounds_per_type = 3
		},
		horizontal_window_bounding_box = {{-0.25, -0.25}, {0.25, 0.15625}},
		vertical_window_bounding_box = {{-0.28125, -0.40625}, {0.03125, 0.125}}
	},
	
	})

end

function makeUndergroundPipeEntitie(itemName,base_area,max_underground_distance)
	data:extend(
		{
			{
			type = "pipe-to-ground",
			name = itemName,
			icon = "__NCP-Tech__/graphics/item/"..itemName..".png",
			flags = {"placeable-neutral", "player-creation"},
			minable = {hardness = 0.2, mining_time = 0.5, result = itemName},
			max_health = 50,
			corpse = "small-remnants",
			resistances =
			{
			{
				type = "fire",
				percent = 80
			}
			},
			collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
			selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
			fluid_box =
			{
			base_area = base_area,
			pipe_covers = pipecoverspictures(),
			pipe_connections =
			{
				{ position = {0, -1} },
				{
				position = {0, 1},
				max_underground_distance = max_underground_distance
				}
			},
			},
			underground_sprite =
			{
			filename = "__core__/graphics/arrows/underground-lines.png",
			priority = "high",
			width = 32,
			height = 32
			},
			vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
			pictures =
			{
			up =
			{
				filename = "__base__/graphics/entity/pipe-to-ground/pipe-to-ground-up.png",
				priority = "high",
				width = 44,
				height = 32 --, shift = {0.10, -0.04}
			},
			down =
			{
				filename = "__base__/graphics/entity/pipe-to-ground/pipe-to-ground-down.png",
				priority = "high",
				width = 40,
				height = 32 --, shift = {0.05, 0}
			},
			left =
			{
				filename = "__base__/graphics/entity/pipe-to-ground/pipe-to-ground-left.png",
				priority = "high",
				width = 32,
				height = 42 --, shift = {-0.12, 0.1}
			},
			right =
			{
				filename = "__base__/graphics/entity/pipe-to-ground/pipe-to-ground-right.png",
				priority = "high",
				width = 32,
				height = 40 --, shift = {0.1, 0.1}
			},
			}
			},
		
		
		
		})

end


function makeEntities(material,item)
local itemName=material.."_"..item
if(item=="pipe")then
	makePipeEntitie(itemName,pipeSize[material])
	
	end
	if(item=="underground_pipe")then
		
		makeUndergroundPipeEntitie(itemName,pipeSize[material],undergroundpipeLenght[material])
		
		
	end
end


for i , item in pairs(items) do
	for i , material in pairs(materials) do
		if(not(material=="Zirconium" or material=="Nichrome")) then
			makeItems(material,item)
			makeRecipes(material,item)
			
		else
			if((material=="Zirconium" and item=="rod")or(material=="Nichrome" and (item=="rod"or item=="wire")))then
				makeItems(material,item)
				makeRecipes(material,item)
			end
		end
		
	end
end

--barrels
local fluids={"Acrylonitrile","MNT","Oleum","Seed_oil","ADU","Ammonia","Benzene","Bitumi","Crude_oil","Dichloroethane","Diesel","Ethylbenzene","Ferric_chloride_solution","Glycerol","Heavy_oil",
		"Hydrochloric_acid","Hydrofluoric_acid","Light_oil","Lubricant","Napalm","Nitric_acid","Nitric_sulfuric_acid_mixture","Nitroglycerin","Sodium_tugstate_solution","Styrene","Sulfuric_acid",
		"Uranyl_nitrate","Water","Water_distilled","Water_dirty","Brine","Germanium_tetrachloride","Titanium_tetrachloride","Toluene","Trichlorosilane","Silicon_tetrachloride"}


--bottles
local gases={"Argon","Air","Butadiene","Carbon_monoxide","Chlorine","Coal_gas","Ethylene","Hydrogen","Hydrogen_chlorine","Hydrogen_fluoride","Nitrogen","Nitrogen_dioxide","Oxygen","Petroleum_gas",
		"Sulfur_dioxide","Sulfur_trioxide","Uranium_hexafluoride","Syngas"}

makeItem("Bottle",10,"bottle",false)
makeItem("Barrel",10,"barrel",false)
makeRecipe("Bottle",{{"item","Steel_plate",4}},{{"item","Bottle",1}},"Assembling_machine","bottle")
makeRecipe("Barrel",{{"item","Steel_plate",2},{"item","Steel_pipe",1}},{{"item","Barrel",1}},"Assembling_machine","barrel")

for i , item in pairs(gases) do
	makeItem(item.."_bottle",10,"bottle",false)
	makeRecipe(item.."_bottle",{{"fluid",item,10},{"item","Bottle",1}},{{"item",item.."_bottle",1}},"Assembling_machine","bottle")
	makeRecipe(item.."_drain_bottle",{{"item",item.."_bottle",1}},{{"fluid",item,10},{"item","Bottle",1}},"Assembling_machine","bottle_empty")
end
for i , item in pairs(fluids) do
	makeItem(item.."_barrel",10,"barrel",false)
	makeRecipe(item.."_barrel",{{"fluid",item,10},{"item","Barrel",1}},{{"item",item.."_barrel",1}},"Assembling_machine","barrel")
	makeRecipe(item.."_drain_barrel",{{"item",item.."_barrel",1}},{{"fluid",item,10},{"item","Barrel",1}},"Assembling_machine","barrel_empty")
end

--dense

local densemetals={"Iron","Copper","Steel","Lead"}

for i , item in pairs(densemetals) do
	
	makeItem(item.."_dense_plate",50,"dense_plate",false)
	makeRecipe(item.."_dense_plate",{{"item",billetName[item],10}},{{"item",item.."_dense_plate",1}},"Furnace","dense_plate")
	
	makeItem(item.."_large_dense_plate",50,"dense_armor_plate",false)
	makeRecipe(item.."_large_dense_plate",{{"item",item.."_dense_plate",10}},{{"item",item.."_large_dense_plate",1}},"Assembling_machine","dense_armor_plate")
	
	makeItem(item.."_dense_pipe",50,"dense_pipe",true)
	makeRecipe(item.."_dense_pipe",{{"item",item.."_dense_plate",2}},{{"item",item.."_dense_pipe",1}},"Assembling_machine","dense_pipe")
	makePipeEntitie(item.."_dense_pipe",1)
	
	makeItem(item.."_dense_underground_pipe",50,"dense_underground_pipe",true)
	makeRecipe(item.."_dense_underground_pipe",{{"item",item.."_dense_pipe",24}},{{"item",item.."_dense_underground_pipe",2}},nil,"dense_underground_pipe")
	makeUndergroundPipeEntitie(item.."_dense_underground_pipe",1,20)
end



















function setItemPrice(name,price)
	credit1G=math.floor(price/1000000000)
	credit1M=math.floor((price-credit1G*1000000000)/1000000)
	credit10k=math.floor((price-credit1G*1000000000-credit1M*1000000)/10000)
	credit100=math.floor((price-credit1G*1000000000-credit1M*1000000-credit10k*10000)/100)
	credit1=price-credit1G*1000000000-credit1M*1000000-credit10k*10000-credit100*100
	makeMoneyRecipe(name,credit1,credit100,credit10k,credit1M,credit1G)
	
	
	

end


function makeMoneyRecipe(name,credit1,credit100,credit10k,credit1M,credit1G)
	local list={}
	local inputList={}
	local list2={"item",1}
	if(credit1~=0)then
		table.insert(list,{"item","Credit",credit1})
	end
	if(credit100~=0)then
		table.insert(list,{"item","Credit100",credit100})
	end
	if(credit10k~=0)then
		table.insert(list,{"item","Credit10k",credit10k})
	end
	if(credit1M~=0)then
		table.insert(list,{"item","Credit1M",credit1M})
	end
	if(credit1G~=0)then
		table.insert(list,{"item","Credit1G",credit1G})
	end
	
	
	
	table.insert(list2,2,name)
	table.insert(inputList,list2)
	
	makeRecipe(name.."ToCredits",{{"item",name,1}},list,"Market","Recourses")
	
	
	
	
	
	
	
	
	

end



setItemPrice("Quarried_stone",1500)
setItemPrice("stone",15000)

function makeLab()
data:extend(
{
	{
		type = "lab",
		name = "lab",
		icon = "__base__/graphics/icons/lab.png",
		flags = {"placeable-player", "player-creation"},
		minable = {mining_time = 1, result = "lab"},
		max_health = 150,
		corpse = "big-remnants",
		dying_explosion = "medium-explosion",
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		light = {intensity = 0.75, size = 8},
		on_animation =
		{
			filename = "__base__/graphics/entity/lab/lab.png",
			width = 113,
			height = 91,
			frame_count = 33,
			line_length = 11,
			animation_speed = 1 / 3,
			shift = {0.2, 0.15}
		},
		off_animation =
		{
			filename = "__base__/graphics/entity/lab/lab.png",
			width = 113,
			height = 91,
			frame_count = 1,
			shift = {0.2, 0.15}
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
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage = "60kW",
		researching_speed = 1,
		inputs =
		{
			"Credit100",
			"Credit10k",
			"Credit1M",
			"Credit1G"
		},
		module_specification =
		{
			module_slots = 2,
			max_entity_info_module_icons_per_row = 3,
			max_entity_info_module_icon_rows = 1,
			module_info_icon_shift = {0, 0.9}
		}
	}
	})


end




function makeTech(name)
	data:extend(
	{
	
	
	{
		type = "technology",
		name = "electric-energy-distribution-1",
		icon = "__base__/graphics/technology/electric-energy-distribution.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "medium-electric-pole"
			},
			{
				type = "unlock-recipe",
				recipe = "big-electric-pole"
			}
		},
		prerequisites = {},
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


makeLab()
makeTech("asd")

function makeTransportBelt(name,speed)
	makeItem("Transport_belt_"..name,50,"transportblelt",true)
	

	data:extend(
	{
	{
		type = "transport-belt",
		name = "Transport_belt_"..name,
		icon = "__NCP-Tech__/graphics/item/Transport_belt_"..name..".png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.3, result = "Transport_belt_"..name},
		max_health = 50,
		corpse = "small-remnants",
		resistances =
		{
			{
				type = "fire",
				percent = 60
			}
		},
		collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		working_sound =
		{
			sound =
			{
				filename = "__base__/sound/basic-transport-belt.ogg",
				volume = 0.4
			},
			max_sounds_per_type = 3
		},
		animation_speed_coefficient = 32,
		animations =
		{
			filename = "__NCP-Tech__/graphics/entity/Transport/Transport_belt_"..name..".png",
			priority = "extra-high",
			width = 40,
			height = 40,
			frame_count = 16,
			direction_count = 12
		},
		belt_horizontal = belt_horizontal(name),
		belt_vertical = belt_vertical(name),
		ending_top = belt_ending_top(name),
		ending_bottom = belt_ending_bottom(name),
		ending_side = belt_ending_side(name),
		starting_top = belt_starting_top(name),
		starting_bottom = belt_starting_bottom(name),
		starting_side = belt_starting_side(name),
		ending_patch = ending_patch_prototype,
		fast_replaceable_group = "transport-belt",
		speed = speed
	}
})
end


function makeUnderTransportBelt(name,speed,max_distance)
	makeItem("Transport_belt_"..name.."_under",50,"transportblelt",true)
	

	data:extend(
	{
	{
    type = "transport-belt-to-ground",
    name = "Transport_belt_"..name.."_under",
    icon = "__NCP-Tech__/graphics/item/Transport_belt_"..name.."_under.png",
    flags = {"placeable-neutral", "player-creation", "fast-replaceable-no-build-while-moving"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "Transport_belt_"..name.."_under"},
    max_health = 70,
    corpse = "small-remnants",
    max_distance = max_distance,
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "high",
      width = 32,
      height = 32,
      x = 32
    },
    resistances =
    {
      {
        type = "fire",
        percent = 60
      }
    },
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    animation_speed_coefficient = 32,
    belt_horizontal = belt_horizontal(name),
    belt_vertical = belt_vertical(name),
    ending_top = belt_ending_top(name),
    ending_bottom = belt_ending_bottom(name),
    ending_side = belt_ending_side(name),
    starting_top = belt_starting_top(name),
    starting_bottom = belt_starting_bottom(name),
    starting_side = belt_starting_side(name),
    fast_replaceable_group = "transport-belt-to-ground",
    speed = speed,
    structure =
    {
      direction_in =
      {
        sheet =
        {
          filename = "__NCP-Tech__/graphics/entity/Transport/Transport_belt_structure_"..name..".png",
          priority = "extra-high",
          shift = {0.26, 0},
          width = 57,
          height = 43,
          y = 43
        }
      },
      direction_out =
      {
        sheet =
        {
          filename = "__NCP-Tech__/graphics/entity/Transport/Transport_belt_structure_"..name..".png",
          priority = "extra-high",
          shift = {0.26, 0},
          width = 57,
          height = 43
        }
      }
    },
    ending_patch = ending_patch_prototype
  }
})
end
function makeSplitter(name,speed)
	makeItem("Splitter_"..name,50,"transportblelt",true)
	data:extend(
	{
	{
    type = "splitter",
    name = "Splitter_"..name,
    icon = "__NCP-Tech__/graphics/item/Splitter_"..name..".png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "Splitter_"..name},
    max_health = 80,
    corpse = "medium-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 60
      }
    },
    collision_box = {{-0.9, -0.1}, {0.9, 0.1}},
    selection_box = {{-0.9, -0.5}, {0.9, 0.5}},
    animation_speed_coefficient = 32,
    structure_animation_speed_coefficient = 1,
    structure_animation_movement_cooldown = 10,
    belt_horizontal = belt_horizontal(name),
    belt_vertical = belt_vertical(name),
    ending_top = belt_ending_top(name),
    ending_bottom = belt_ending_bottom(name),
    ending_side = belt_ending_side(name),
    starting_top = belt_starting_top(name),
    starting_bottom = belt_starting_bottom(name),
    starting_side = belt_starting_side(name),
    ending_patch = ending_patch_prototype,
    fast_replaceable_group = "splitter",
    speed = speed,
    structure =
    {
      north =
      {
        filename = "__NCP-Tech__/graphics/entity/Transport/Splitter_"..name.."_north.png",
        frame_count = 32,
        line_length = 16,
        priority = "extra-high",
        width = 80,
        height = 35,
        shift = {0.225, 0}
      },
      east =
      {
        filename = "__NCP-Tech__/graphics/entity/Transport/Splitter_"..name.."_east.png",
        frame_count = 32,
        line_length = 16,
        priority = "extra-high",
        width = 46,
        height = 81,
        shift = {0.075, 0}
      },
      south =
      {
        filename = "__NCP-Tech__/graphics/entity/Transport/Splitter_"..name.."_south.png",
        frame_count = 32,
        line_length = 16,
        priority = "extra-high",
        width = 82,
        height = 36,
        shift = {0.075, 0}
      },
      west =
      {
        filename = "__NCP-Tech__/graphics/entity/Transport/Splitter_"..name.."_west.png",
        frame_count = 32,
        line_length = 16,
        priority = "extra-high",
        width = 47,
        height = 79,
        shift = {0.25, 0.05}
      },
    },
    ending_patch = ending_patch_prototype
  },
})
end



function makeInserter(name,types,extension_speed,rotation_speed,energy_per_movement,energy_per_rotation,energy_source,hand_size,programmable,filter_count,circuit_wire_max_distance,pickup_position,insert_position)
	local types2=""
	if(types~="")then
		types2="_"..types
	end
	makeItem("Inserter_"..name..types2,50,"transportblelt",true)
	
	
	data:extend(
	{
	{
    type = "inserter",
    name = "Inserter_"..name..types2,
    icon = "__base__/graphics/icons/fast-inserter.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable =
    {
      hardness = 0.2,
      mining_time = 0.5,
      result = "Inserter_"..name..types2
    },
    max_health = 40,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
    pickup_position = pickup_position,
    insert_position = insert_position,
    energy_per_movement = energy_per_movement,
    energy_per_rotation = energy_per_rotation,
	hand_size = hand_size,
	filter_count = filter_count,
	programmable = programmable,
	uses_arm_movement = "basic-inserter",
	circuit_wire_max_distance = circuit_wire_max_distance,
    circuit_wire_connection_point =
    {
      shadow =
      {
        red = {0, 0},
        green = {0, 0}
      },
      wire =
      {
        red = {0, 0},
        green = {0, 0}
      }
    },
	
    energy_source = energy_source,
    
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
          filename = "__base__/sound/inserter-fast-1.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-fast-2.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-fast-3.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-fast-4.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-fast-5.ogg",
          volume = 0.75
        }
      }
    },
    hand_base_picture =
    {
      filename = "__NCP-Tech__/graphics/entity/Inserters/Inserter_"..name.."_arm.png",
      priority = "extra-high",
      width = 8,
      height = 34
    },
    hand_closed_picture =
    {
      filename = "__NCP-Tech__/graphics/entity/Inserters/Inserter_"..name.."_hand_closed.png",
      priority = "extra-high",
      width = 18,
      height = 41
    },
    hand_open_picture =
    {
      filename = "__NCP-Tech__/graphics/entity/Inserters/Inserter_"..name.."_hand_open.png",
      priority = "extra-high",
      width = 18,
      height = 41
    },
    hand_base_shadow =
    {
      filename = "__NCP-Tech__/graphics/entity/Inserters/Inserter_crude_arm_shadow.png",
      priority = "extra-high",
      width = 8,
      height = 34
    },
    hand_closed_shadow =
    {
      filename = "__NCP-Tech__/graphics/entity/Inserters/Inserter_crude_hand_closed_shadow.png",
      priority = "extra-high",
      width = 18,
      height = 41
    },
    hand_open_shadow =
    {
      filename = "__NCP-Tech__/graphics/entity/Inserters/Inserter_crude_hand_open_shadow.png",
      priority = "extra-high",
      width = 18,
      height = 41
    },
    platform_picture =
    {
      sheet =
      {
        filename = "__NCP-Tech__/graphics/entity/Inserters/Inserter_"..name.."_base.png",
        priority = "extra-high",
        width = 46,
        height = 46
      }
    }
  },


})

	if(types=="smart")then
	data.raw["inserter"]["Inserter_"..name..types2].hand_closed_picture =
    {
      filename = "__NCP-Tech__/graphics/entity/Inserters/Inserter_smart_hand_closed.png",
      priority = "extra-high",
      width = 18,
      height = 41
    }
    data.raw["inserter"]["Inserter_"..name..types2].hand_open_picture =
    {
      filename = "__NCP-Tech__/graphics/entity/Inserters/Inserter_smart_hand_open.png",
      priority = "extra-high",
      width = 18,
      height = 41
    }
	end

end

function makeBurnerInserter(name,types,extension_speed,rotation_speed,energy_per_movement,energy_per_rotation,effectivity,fuel_inventory_size,hand_size,
			programmable,filter_count,circuit_wire_max_distance,pickup_position,insert_position,frequency)

	makeInserter(name,types,extension_speed,rotation_speed,energy_per_movement,energy_per_rotation,
	{type = "burner",effectivity = effectivity,fuel_inventory_size = fuel_inventory_size,smoke ={{name = "smoke",deviation = {0.1, 0.1},frequency = frequency}}},hand_size,
			programmable,filter_count,circuit_wire_max_distance,pickup_position,insert_position)
end

function makeElectricInserter(name,types,extension_speed,rotation_speed,energy_per_movement,energy_per_rotation,drain,hand_size,
			programmable,filter_count,circuit_wire_max_distance,pickup_position,insert_position)

			
	makeInserter(name,types,extension_speed,rotation_speed,energy_per_movement,energy_per_rotation,{type = "electric",usage_priority = "secondary-input",drain = drain},hand_size,
			programmable,filter_count,circuit_wire_max_distance,pickup_position,insert_position)

end

function makeSmartInserter(name,extension_speed,rotation_speed,energy_per_movement,energy_per_rotation,drain,hand_size,
			filter_count,circuit_wire_max_distance,pickup_position,insert_position)
			
			
	makeElectricInserter(name,"smart",extension_speed,rotation_speed,energy_per_movement,energy_per_rotation,drain,hand_size,
			true,filter_count,circuit_wire_max_distance,pickup_position,insert_position)

end
function makeNormalElectricInserter(name,extension_speed,rotation_speed,energy_per_movement,energy_per_rotation,drain)
	makeElectricInserter(name,"",extension_speed,rotation_speed,energy_per_movement,energy_per_rotation,drain,1,
			false,0,0,{0, -1},{0, 1.2})
end
function makeLongElectricInserter(name,extension_speed,rotation_speed,energy_per_movement,energy_per_rotation,drain)
	makeElectricInserter(name,"long",extension_speed,rotation_speed,energy_per_movement,energy_per_rotation,drain,1.5,
			false,0,0,{0, -2},{0, 2.2})
end
function makeNormalBurnerInserter(name,extension_speed,rotation_speed,energy_per_movement,energy_per_rotation,effectivity,frequency)
	makeBurnerInserter(name,"",extension_speed,rotation_speed,energy_per_movement,energy_per_rotation,effectivity,1,1,
			false,0,0,{0, -1},{0, 1.2},frequency)
end
function makeLongBurnerInserter(name,extension_speed,rotation_speed,energy_per_movement,energy_per_rotation,effectivity,frequency)
	makeBurnerInserter(name,"long",extension_speed,rotation_speed,energy_per_movement,energy_per_rotation,effectivity,1,1.5,
			false,0,0,{0, -2},{0, 2.2},frequency)
end


local tierList={"crude","basic","normal","fast","improved_fast","express","improved_express"}


makeTransportBelt("crude",0.25/32)
makeTransportBelt("basic",0.5/32)
makeTransportBelt("normal",1/32)
makeTransportBelt("fast",2/32)
makeTransportBelt("improved_fast",4/32)
makeTransportBelt("express",8/32)
makeTransportBelt("improved_express",16/32)

makeUnderTransportBelt("crude",0.25/32,3)
makeUnderTransportBelt("basic",0.5/32,6)
makeUnderTransportBelt("normal",1/32,9)
makeUnderTransportBelt("fast",2/32,12)
makeUnderTransportBelt("improved_fast",4/32,15)
makeUnderTransportBelt("express",8/32,18)
makeUnderTransportBelt("improved_express",16/32,21)

makeSplitter("crude",0.25/32)
makeSplitter("basic",0.5/32)
makeSplitter("normal",1/32)
makeSplitter("fast",2/32)
makeSplitter("improved_fast",4/32)
makeSplitter("express",8/32)
makeSplitter("improved_express",16/32)


makeNormalBurnerInserter("crude",0.005,0.005,500000,500000,0.3,20)
makeNormalBurnerInserter("basic",0.01,0.01,1000000,1000000,0.5,30)
makeNormalElectricInserter("normal",0.02,0.02,5000,5000,"20kW")
makeNormalElectricInserter("fast",0.04,0.04,10000,10000,"40kW")
makeNormalElectricInserter("improved_fast",0.08,0.08,20000,20000,"80kW")
makeNormalElectricInserter("express",0.32,0.32,80000,80000,"160kW")
makeNormalElectricInserter("improved_express",0.64,0.64,160000,160000,"320kW")

makeLongBurnerInserter("crude",0.005,0.005,1000000,1000000,0.3,20)
makeLongBurnerInserter("basic",0.01,0.01,2000000,2000000,0.5,30)
makeLongElectricInserter("normal",0.02,0.02,10000,10000,"20kW")
makeLongElectricInserter("fast",0.04,0.04,20000,20000,"40kW")
makeLongElectricInserter("improved_fast",0.08,0.08,80000,80000,"80kW")
makeLongElectricInserter("express",0.32,0.32,160000,160000,"160kW")
makeLongElectricInserter("improved_express",0.64,0.64,320000,320000,"320kW")

makeSmartInserter("normal",0.02,0.02,5000,5000,"20kW",1,1,5,{0, -1},{0, 1.2})
makeSmartInserter("fast",0.02,0.02,5000,5000,"20kW",1,2,10,{0, -1},{0, 1.2})
makeSmartInserter("improved_fast",0.02,0.02,5000,5000,"20kW",1,3,15,{0, -1},{0, 1.2})
makeSmartInserter("express",0.02,0.02,5000,5000,"20kW",1,4,20,{0, -1},{0, 1.2})
makeSmartInserter("improved_express",0.02,0.02,5000,5000,"20kW",1,5,25,{0, -1},{0, 1.2})



































