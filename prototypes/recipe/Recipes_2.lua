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
	{
		type = "recipe",
		name = "Credit_Quarried_stone",
		category = "Market",
		energy_required = 2,
		enabled = "true",
		ingredients =
		{
			{type="item", name="Quarried_stone", amount=1},
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

function makeItem(name,subgroup,place_result)
	data:extend({
	{
		type= "item",
		name= name,
		icon = "__NCP-Tech__/graphics/item/"..name..".png",
		flags= { "goes-to-main-inventory" },
		subgroup = subgroup,
		order= "a-b-c",
		stack_size= 50,
		place_result =itemName ,
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

makeItem("Bottle","bottle",false)
makeItem("Barrel","barrel",false)
for i , item in pairs(gases) do
	makeItem(item.."_bottle","bottle",false)
	makeRecipe(item.."_bottle",{{"fluid",item,100},{"item","Bottle",1}},{{"item",item.."_bottle",1}},"Assembling_machine","bottle")
	makeRecipe(item.."_drain_bottle",{{"item",item.."_bottle",1}},{{"fluid",item,100},{"item","Bottle",1}},"Assembling_machine","bottle_empty")
end
for i , item in pairs(fluids) do
	makeItem(item.."_barrel","barrel",false)
	makeRecipe(item.."_barrel",{{"fluid",item,100}},{{"item","Barrel",1},{"item",item.."_barrel",1}},"Assembling_machine","barrel")
	makeRecipe(item.."_drain_barrel",{{"item",item.."_barrel",1}},{{"fluid",item,100},{"item","Barrel",1}},"Assembling_machine","barrel_empty")
end

--dence

local dencemetals={"Iron","Copper","Steel","Lead"}

for i , item in pairs(dencemetals) do
	
	makeItem(item.."_dence_plate","dence_plate",false)
	makeRecipe(item.."_dence_plate",{{"item",billetName[item],10}},{{"item",item.."_dence_plate",1}},"Furnace","dence_plate")
	
	makeItem(item.."_dence_armor_plate","dence_armor_plate",false)
	makeRecipe(item.."_dence_armor_plate",{{"item",item.."_dence_plate",10}},{{"item",item.."_dence_armor_plate",1}},"Assembling_machine","dence_armor_plate")
	
	makeItem(item.."_dence_pipe","dence_pipe",true)
	makeRecipe(item.."_dence_pipe",{{"item",item.."_dence_plate",2}},{{"item",item.."_dence_pipe",1}},"Assembling_machine","dence_pipe")
	makePipeEntitie(item.."_dence_pipe",1)
	
	makeItem(item.."_dence_underground_pipe","dence_underground_pipe",true)
	makeRecipe(item.."_dence_underground_pipe",{{"item",item.."_dence_pipe",24}},{{"item",item.."_dence_underground_pipe",2}},nil,"dence_underground_pipe")
	makeUndergroundPipeEntitie(item.."_dence_underground_pipe",1,20)
end









































