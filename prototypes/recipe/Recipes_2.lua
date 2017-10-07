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
local gases={"Argon","Air","Butadiene","Carbon_monoxide","Chlorine","Coal_gas","Ethylene","Hydrogen","Hydrogen_chloride","Hydrogen_fluoride","Nitrogen","Nitrogen_dioxide","Oxygen","Petroleum_gas",
		"Sulfur_dioxide","Sulfur_trioxide","Uranium_hexafluoride","Syngas"}
--[[
oldmakeItem("Bottle",10,"bottle",false,"")
oldmakeItem("Barrel",10,"barrel",false,"")
oldmakeRecipe("Bottle",{{"item","Steel_plate",4}},{{"item","Bottle",1}},"Assembling_machine","bottle")
oldmakeRecipe("Barrel",{{"item","Steel_plate",2},{"item","Steel_pipe",1}},{{"item","Barrel",1}},"Assembling_machine","barrel")

for i , item in pairs(gases) do
	oldmakeItem(item.."_bottle",10,"bottle",false,"")
	oldmakeRecipe(item.."_bottle",{{"fluid",item,50},{"item","Bottle",1}},{{"item",item.."_bottle",1}},"Assembling_machine","bottle")
	oldmakeRecipe(item.."_drain_bottle",{{"item",item.."_bottle",1}},{{"fluid",item,50},{"item","Bottle",1}},"Assembling_machine","bottle_empty")
end
for i , item in pairs(fluids) do
	oldmakeItem(item.."_barrel",10,"barrel",false,"")
	oldmakeRecipe(item.."_barrel",{{"fluid",item,50},{"item","Barrel",1}},{{"item",item.."_barrel",1}},"Assembling_machine","barrel")
	oldmakeRecipe(item.."_drain_barrel",{{"item",item.."_barrel",1}},{{"fluid",item,50},{"item","Barrel",1}},"Assembling_machine","barrel_empty")
end
--]]
--dense

local densemetals={"Iron","Copper","Steel","Lead"}
--[[
for i , item in pairs(densemetals) do
	
	oldmakeItem(item.."_dense_plate",50,"dense_plate",false)
	oldmakeRecipe(item.."_dense_plate",{{"item",billetName[item],10}},{{"item",item.."_dense_plate",1}},"Furnace","dense_plate")
	
	oldmakeItem(item.."_large_dense_plate",50,"dense_armor_plate",false)
	oldmakeRecipe(item.."_large_dense_plate",{{"item",item.."_dense_plate",10}},{{"item",item.."_large_dense_plate",1}},"Assembling_machine","dense_armor_plate")
	
	oldmakeItem(item.."_dense_pipe",50,"dense_pipe",true)
	oldmakeRecipe(item.."_dense_pipe",{{"item",item.."_dense_plate",2}},{{"item",item.."_dense_pipe",1}},"Assembling_machine","dense_pipe")
	makePipeEntitie(item.."_dense_pipe",10)
	
	oldmakeItem(item.."_dense_underground_pipe",50,"dense_underground_pipe",true)
	oldmakeRecipe(item.."_dense_underground_pipe",{{"item",item.."_dense_pipe",24}},{{"item",item.."_dense_underground_pipe",2}},nil,"dense_underground_pipe")
	makeUndergroundPipeEntitie(item.."_dense_underground_pipe",1,20)
end


--]]



--NEWmakeItem{name="aaatest3"}

--NEWmakeRecipe{name="aaatest3"}





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







makeLab()



local tierOrder={["crude"]="a",["basic"]="b",["normal"]="c",["fast"]="d",["improved_fast"]="e",["express"]="f",["improved_express"]="g"}
function makeTransportBelt(name,speed)
	oldmakeItem("Transport_belt_"..name,50,"Transportblelt",true,tierOrder[name])
	

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
				filename = "__base__/sound/fast-transport-belt.ogg",
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
		speed = speed,connector_frame_sprites = transport_belt_connector_frame_sprites,
		circuit_connector_sprites = transport_belt_circuit_connector_sprites,
		circuit_wire_connection_point = transport_belt_circuit_wire_connection_point,
		circuit_wire_max_distance = transport_belt_circuit_wire_max_distance,
		
	}
})
end


function makeUnderTransportBelt(name,add,speed,max_distance)
	if(add=="" or add==nil)then
		add=""
	else
		add="_"..add
	end
	oldmakeItem("Transport_belt_"..name.."_under"..add,50,"Transportblelt_under",true,tierOrder[name])
	

	data:extend(
	{
	{
    type = "underground-belt",
    name = "Transport_belt_"..name.."_under"..add,
    icon = "__NCP-Tech__/graphics/item/Transport_belt_"..name.."_under"..add..".png",
    flags = {"placeable-neutral", "player-creation", "fast-replaceable-no-build-while-moving"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "Transport_belt_"..name.."_under"..add},
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
    fast_replaceable_group = "underground-belt",
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
	oldmakeItem("Splitter_"..name,50,"Splitter",true,tierOrder[name])
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
	oldmakeItem("Inserter_"..name..types2,50,"Inserter"..types2,true,tierOrder[name])
	
	
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

--[[
makeTransportBelt("t1",0.25/32)
makeTransportBelt("t2",0.5/32)
makeTransportBelt("t3",1/32)
makeTransportBelt("t4",2/32)
makeTransportBelt("t5",4/32)
makeTransportBelt("t6",8/32)
makeTransportBelt("t7",16/32)

makeUnderTransportBelt("t1","a",0.25/32,3)
makeUnderTransportBelt("t2","a",0.5/32,6)
makeUnderTransportBelt("t3","a",1/32,9)
makeUnderTransportBelt("t4","a",2/32,12)
makeUnderTransportBelt("t5","a",4/32,15)
makeUnderTransportBelt("t6","a",8/32,18)
makeUnderTransportBelt("t7","a",16/32,21)

makeUnderTransportBelt("t2","b",0.5/32,6)
makeUnderTransportBelt("t3","b",1/32,9)
makeUnderTransportBelt("t4","b",2/32,12)
makeUnderTransportBelt("t5","b",4/32,15)
makeUnderTransportBelt("t6","b",8/32,18)
makeUnderTransportBelt("t7","b",16/32,21)

makeUnderTransportBelt("t3","c",1/32,9)
makeUnderTransportBelt("t4","c",2/32,12)
makeUnderTransportBelt("t5","c",4/32,15)
makeUnderTransportBelt("t6","c",8/32,18)
makeUnderTransportBelt("t7","c",16/32,21)

makeUnderTransportBelt("t4","d",2/32,12)
makeUnderTransportBelt("t5","d",4/32,15)
makeUnderTransportBelt("t6","d",8/32,18)
makeUnderTransportBelt("t7","d",16/32,21)


--makeUnderTransportBelt("fast","e",2/32,12)
--makeUnderTransportBelt("improved_fast","e",4/32,15)
--makeUnderTransportBelt("express","e",8/32,18)
--makeUnderTransportBelt("improved_express","e",16/32,21)




makeSplitter("t1",0.25/32)
makeSplitter("t2",0.5/32)
makeSplitter("t3",1/32)
makeSplitter("t4",2/32)
makeSplitter("t5",4/32)
makeSplitter("t6",8/32)
makeSplitter("t7",16/32)


makeNormalBurnerInserter("t1",0.0025,0.0025,500000,500000,0.1,20)
makeNormalBurnerInserter("t2",0.005,0.005,1000000,1000000,0.1,30)
makeNormalElectricInserter("t3",0.01,0.01,5000,5000,"20kW")
makeNormalElectricInserter("t4",0.02,0.02,10000,10000,"40kW")
makeNormalElectricInserter("t5",0.08,0.08,20000,20000,"80kW")
makeNormalElectricInserter("t6",0.32,0.32,80000,80000,"160kW")
makeNormalElectricInserter("t7",0.64,0.64,160000,160000,"320kW")

makeLongBurnerInserter("t1",0.005,0.005,1000000,1000000,0.1,20)
makeLongBurnerInserter("t2",0.01,0.01,2000000,2000000,0.1,30)
makeLongElectricInserter("t3",0.02,0.02,10000,10000,"20kW")
makeLongElectricInserter("t4",0.04,0.04,20000,20000,"40kW")
makeLongElectricInserter("t5",0.08,0.08,80000,80000,"80kW")
makeLongElectricInserter("t6",0.32,0.32,160000,160000,"160kW")
makeLongElectricInserter("t7",0.64,0.64,320000,320000,"320kW")

makeSmartInserter("t3",0.02,0.02,5000,5000,"20kW",1,1,5,{0, -1},{0, 1.2})
makeSmartInserter("t4",0.02,0.02,5000,5000,"20kW",1,2,10,{0, -1},{0, 1.2})
makeSmartInserter("t5",0.02,0.02,5000,5000,"20kW",1,3,15,{0, -1},{0, 1.2})
makeSmartInserter("t6",0.02,0.02,5000,5000,"20kW",1,4,20,{0, -1},{0, 1.2})
makeSmartInserter("t7",0.02,0.02,5000,5000,"20kW",1,5,25,{0, -1},{0, 1.2})
--]]



--Itemeitä

makeRecipe{name="ABS-plastic_pellets",energy_required=3,category="Chemical_plant",ingredients={{type="fluid", name="Acrylonitrile", amount=1},{type="fluid", name="Butadiene", amount=1},{type="fluid", name="Styrene", amount=1},},results={{type="item", name="ABS-plastic_pellets", amount=1,probability =1},},}
makeRecipe{name="ADU",energy_required=1,category="Chemical_plant",fluidIcon=true,ingredients={{type="fluid", name="Ammonia", amount=1},{type="fluid", name="Uranyl_nitrate", amount=1},},results={{type="fluid", name="ADU", amount=1,probability =1},},}
makeRecipe{name="Acetylene",energy_required=3,category="Cracking_plant",ingredients={{type="fluid", name="Petroleum_gas", amount=2},{type="fluid", name="Water_distilled", amount=1},},results={{type="item", name="Acetylene", amount=1,probability =1},{type="fluid", name="Hydrogen", amount=3,probability =1},},}
makeRecipe{name="Acrylonitrile",energy_required=8,category="Chemical_plant",fluidIcon=true,ingredients={{type="fluid", name="Petroleum_gas", amount=2},{type="fluid", name="Ammonia", amount=2},{type="fluid", name="Oxygen", amount=3},},results={{type="fluid", name="Acrylonitrile", amount=2,probability =1},{type="fluid", name="Water", amount=6,probability =1},},}
makeRecipe{name="Active_provider_chest",energy_required=3,category="crafting",ingredients={{type="item", name="Computer", amount=2},{type="item", name="Titanium_chest", amount=1},{type="item", name="Sensor", amount=1},},results={{type="item", name="Active_provider_chest", amount=1,probability =1},},}
makeRecipe{name="Advanced_PCB",energy_required=3.5,category="Assembling_machine",ingredients={{type="fluid", name="Ferric_chloride_solution", amount=1},{type="item", name="Copper_foil", amount=2},{type="item", name="Fiberglass_laminate", amount=2},},results={{type="item", name="Advanced_PCB", amount=1,probability =1},},}
makeRecipe{name="Advanced_circuit_board",energy_required=4,category="Assembling_machine",ingredients={{type="item", name="Electronics_component", amount=2},{type="item", name="Intergrated_circuit", amount=5},{type="item", name="Solder_paste", amount=1},{type="item", name="Advanced_PCB", amount=1},},results={{type="item", name="Advanced_circuit_board", amount=1,probability =1},},}
makeRecipe{name="Alumina",energy_required=3,category="Chemical_plant",ingredients={{type="item", name="Bauxite_concentrate", amount=1},{type="item", name="Sodium_hydroxide", amount=1},},results={{type="item", name="Alumina", amount=1,probability =1},{type="item", name="Bauxite_tailings", amount=1,probability =1},},}
makeRecipe{name="Aluminium_billet",energy_required=20,category="Electrolyzer",ingredients={{type="item", name="Alumina", amount=1},{type="item", name="Calcium_fluoride", amount=1},},results={{type="item", name="Aluminium_billet", amount=1,probability =1},},}
makeRecipe{name="Aluminosilicate_glass",energy_required=12,category="Furnace",ingredients={{type="item", name="Silicon_dioxide", amount=6},{type="item", name="Magnesium_oxide", amount=1},{type="item", name="Alumina", amount=2},{type="item", name="Calcium_carbonate", amount=1},},results={{type="item", name="Aluminosilicate_glass", amount=10,probability =1},},}
makeRecipe{name="Ammonia",energy_required=10,category="Chemical_plant",fluidIcon=true,ingredients={{type="fluid", name="Hydrogen", amount=3},{type="fluid", name="Nitrogen", amount=1},},results={{type="fluid", name="Ammonia", amount=2,probability =1},},}
makeRecipe{name="Ammonia",energy_required=2,category="Chemical_plant",fluidIcon=true,ingredients={{type="item", name="Ammonium_bifluoride", amount=1},{type="item", name="Magnesium_oxide", amount=1},},results={{type="fluid", name="Ammonia", amount=1,probability =1},{type="fluid", name="Water_distilled", amount=1,probability =1},{type="item", name="Magnesium_fluoride", amount=1,probability =1},},}
makeRecipe{name="Ammonium_Paratungstate",energy_required=1,category="Chemical_plant",ingredients={{type="fluid", name="Sodium_tugstate_solution", amount=1},{type="fluid", name="Ammonia", amount=1},},results={{type="item", name="Ammonium_Paratungstate", amount=1,probability =1},},}
makeRecipe{name="Ammonium_bifluoride",energy_required=1.5,category="Chemical_plant",ingredients={{type="fluid", name="Hydrogen_fluoride", amount=2},{type="fluid", name="Ammonia", amount=1},},results={{type="item", name="Ammonium_bifluoride", amount=1,probability =1},},}
makeRecipe{name="Anti-reflective_glass",energy_required=3,category="Chemical_plant",ingredients={{type="item", name="Magnesium_fluoride", amount=1},{type="item", name="Glass", amount=6},},results={{type="item", name="Anti-reflective_glass", amount=6,probability =1},},}
makeRecipe{name="Arithmetic_combinator",energy_required=5,category="Assembling_machine",ingredients={{type="item", name="Aluminium_plate", amount=6},{type="item", name="Crystal_laser", amount=2},{type="item", name="Computer", amount=4},},results={{type="item", name="Arithmetic_combinator", amount=1,probability =1},},}
makeRecipe{name="Asphalt_concrete",energy_required=5,category="Assembling_machine",ingredients={{type="item", name="Gravel", amount=20},{type="item", name="Bitumen", amount=1},},results={{type="item", name="Asphalt_concrete", amount=5,probability =1},},}
makeRecipe{name="Assembling_machine_t1",energy_required=15,category="crafting",ingredients={{type="item", name="Iron_tools", amount=8},{type="item", name="Transport_belt_t2", amount=8},{type="item", name="Inserter_t2", amount=4},{type="item", name="Iron_riveted_plate", amount=20},},results={{type="item", name="Assembling_machine_t1", amount=1,probability =1},},}
makeRecipe{name="Assembling_machine_t2",energy_required=10,category="crafting",ingredients={{type="item", name="Assembling_machine_t1", amount=1},{type="item", name="Steel_bearing", amount=10},{type="item", name="Inserter_long_t2", amount=2},{type="item", name="Compressor_t1", amount=1},},results={{type="item", name="Assembling_machine_t2", amount=1,probability =1},},}
makeRecipe{name="Assembling_machine_t3",energy_required=15,category="crafting",ingredients={{type="item", name="Factory_frame", amount=1},{type="item", name="Inserter_t3", amount=8},{type="item", name="Transport_belt_t4", amount=12},{type="item", name="Acetylene_bottle", amount=20},{type="item", name="Compressor_t1", amount=1},},results={{type="item", name="Assembling_machine_t3", amount=1,probability =1},},}
makeRecipe{name="Assembling_machine_t4",energy_required=10,category="crafting",ingredients={{type="item", name="Assembling_machine_t3", amount=1},{type="item", name="Circuit_board", amount=10},{type="item", name="Inserter_t4", amount=6},{type="item", name="Tungsten_carbide_rod", amount=10},{type="item", name="Inserter_filter_t3", amount=4},},results={{type="item", name="Assembling_machine_t4", amount=1,probability =1},},}
makeRecipe{name="Assembling_machine_t5",energy_required=10,category="crafting",ingredients={{type="item", name="Assembling_machine_t4", amount=1},{type="item", name="Computer", amount=10},{type="item", name="Inserter_t5", amount=6},{type="item", name="Crystal_laser", amount=6},{type="item", name="Inserter_filter_t4", amount=4},},results={{type="item", name="Assembling_machine_t5", amount=1,probability =1},},}
makeRecipe{name="Basic_PCB",energy_required=2,category="Assembling_machine",ingredients={{type="item", name="Fiberglass_laminate", amount=1},{type="item", name="Copper_foil", amount=1},{type="fluid", name="Ferric_chloride_solution", amount=1},},results={{type="item", name="Basic_PCB", amount=1,probability =1},},}
makeRecipe{name="Basic_electric_motor",energy_required=2,category="crafting",ingredients={{type="item", name="Electric_motor_hull", amount=1},{type="item", name="Electric_rotor", amount=1},},results={{type="item", name="Basic_electric_motor", amount=1,probability =1},},}
makeRecipe{name="Basic_electronics_board",energy_required=4,category="Assembling_machine",ingredients={{type="item", name="Wooden_board", amount=1},{type="item", name="Resistor", amount=4},{type="item", name="Copper_foil", amount=2},{type="item", name="Capacitor", amount=1},{type="item", name="Lead_solder", amount=1},},results={{type="item", name="Basic_electronics_board", amount=1,probability =1},},}
makeRecipe{name="Battery",energy_required=2,category="Assembling_machine",ingredients={{type="item", name="Battery_casing", amount=1},{type="item", name="Lead_plate", amount=1},{type="fluid", name="Sulfuric_acid", amount=1},},results={{type="item", name="Battery", amount=1,probability =1},},}
makeRecipe{name="Battery",energy_required=3,category="Assembling_machine",ingredients={{type="item", name="Plastic_pellets", amount=3},{type="item", name="Lead_plate", amount=5},{type="fluid", name="Sulfuric_acid", amount=1},},results={{type="item", name="Battery", amount=1,probability =1},},}
makeRecipe{name="Battery_casing",energy_required=1,category="Assembling_machine",ingredients={{type="item", name="Plastic_pellets", amount=1},},results={{type="item", name="Battery_casing", amount=1,probability =1},},}
makeRecipe{name="Bauxite_crushed_ore",energy_required=2,category="Crusher",ingredients={{type="item", name="Bauxite_ore", amount=1},},results={{type="item", name="Bauxite_crushed_ore", amount=1,probability =1},},}
makeRecipe{name="Bitumen",energy_required=4,category="Chemical_plant",ingredients={{type="fluid", name="Heavy_oil", amount=1},},results={{type="item", name="Bitumen", amount=1,probability =1},},}
makeRecipe{name="Bitumen",energy_required=5,category="Distillation",ingredients={{type="item", name="Coal_tar", amount=3},},results={{type="item", name="Bitumen", amount=3,probability =1},},}
makeRecipe{name="Blast_furnace_t1",energy_required=60,category="crafting",ingredients={{type="item", name="Iron_riveted_dense_plate", amount=20},{type="item", name="Furnace_t3", amount=8},{type="item", name="Brick", amount=200},{type="item", name="Iron_pipe", amount=10},},results={{type="item", name="Blast_furnace_t1", amount=1,probability =1},},}
makeRecipe{name="Boiler_t1",energy_required=15,category="crafting",ingredients={{type="item", name="Iron_riveted_dense_plate", amount=8},{type="item", name="Iron_pipe", amount=12},{type="item", name="Refractory_brick", amount=20},},results={{type="item", name="Boiler_t1", amount=1,probability =1},},}
makeRecipe{name="Boiler_t2",energy_required=20,category="crafting",ingredients={{type="item", name="Steel_riveted_dense_plate", amount=10},{type="item", name="Steel_pipe", amount=15},{type="item", name="Refractory_brick", amount=30},},results={{type="item", name="Boiler_t2", amount=1,probability =1},},}
makeRecipe{name="Boiler_t3",energy_required=20,category="Assembling_machine",ingredients={{type="item", name="Steel_dense_plate", amount=15},{type="item", name="Steel_pipe", amount=24},{type="item", name="Refractory_brick", amount=15},{type="item", name="Stainless_steel_plate", amount=8},},results={{type="item", name="Boiler_t3", amount=1,probability =1},},}
makeRecipe{name="Boiler_t4",energy_required=25,category="Assembling_machine",ingredients={{type="item", name="Steel_dense_plate", amount=20},{type="item", name="Inconel_pipe", amount=30},{type="item", name="Refractory_brick", amount=15},{type="item", name="Inconel_plate", amount=25},{type="item", name="Circuit_board", amount=5},},results={{type="item", name="Boiler_t4", amount=1,probability =1},},}
makeRecipe{name="Bottle",energy_required=2,category="crafting",ingredients={{type="item", name="Steel_pipe", amount=1},{type="item", name="Steel_plate", amount=2},},results={{type="item", name="Bottle", amount=1,probability =1},},}
makeRecipe{name="Brass_billet",energy_required=10,category="Furnace",ingredients={{type="item", name="Copper_billet", amount=7},{type="item", name="Zinc_billet", amount=3},},results={{type="item", name="Brass_billet", amount=10,probability =1},},}
makeRecipe{name="Brass_dense_pipe",energy_required=5,category="crafting",ingredients={{type="item", name="Brass_dense_plate", amount=2},},results={{type="item", name="Brass_dense_pipe", amount=1,probability =1},},}
makeRecipe{name="Brass_pipe",energy_required=5,category="crafting",ingredients={{type="item", name="Brass_plate", amount=2},},results={{type="item", name="Brass_pipe", amount=1,probability =1},},}
makeRecipe{name="Brick",energy_required=1,category="Furnace",ingredients={{type="item", name="Clay", amount=1},},results={{type="item", name="Brick", amount=1,probability =1},},}
makeRecipe{name="Butadiene",energy_required=3,category="Cracking_plant",fluidIcon=true,ingredients={{type="fluid", name="Light_oil", amount=1},{type="fluid", name="Water_distilled", amount=1},},results={{type="fluid", name="Butadiene", amount=1,probability =1},{type="fluid", name="Hydrogen", amount=1,probability =1},},}
makeRecipe{name="CPU_chip",energy_required=10,category="Electronics_assembling_machine",ingredients={{type="item", name="Resin", amount=1},{type="item", name="Gold_foil", amount=1},{type="item", name="Sodium_hydroxide", amount=3},{type="item", name="Silicon_wafer", amount=1},},results={{type="item", name="CPU_chip", amount=9,probability =1},},}
makeRecipe{name="Calcium_carbonate",energy_required=2,category="Grinding_mill",ingredients={{type="item", name="Limestone_crushed", amount=1},},results={{type="item", name="Calcium_carbonate", amount=1,probability =1},},}
makeRecipe{name="Calcium_oxide",energy_required=7,category="Furnace",ingredients={{type="item", name="Calcium_carbonate", amount=1},},results={{type="item", name="Calcium_oxide", amount=1,probability =1},},}
makeRecipe{name="Calcium_sulfate",energy_required=2,category="Chemical_plant",ingredients={{type="item", name="Calcium_fluoride", amount=2},{type="fluid", name="Sulfuric_acid", amount=1},},results={{type="item", name="Calcium_sulfate", amount=1,probability =1},{type="fluid", name="Hydrogen_fluoride", amount=1,probability =1},},}
makeRecipe{name="Capacitor",energy_required=4,category="Assembling_machine",ingredients={{type="item", name="Glass", amount=1},{type="item", name="Tinned_copper_wire", amount=2},{type="item", name="Copper_foil", amount=2},},results={{type="item", name="Capacitor", amount=4,probability =1},},}
makeRecipe{name="Carbon_fiber_fabric",energy_required=5,category="Assembling_machine",ingredients={{type="item", name="Carbon_fiber_filament", amount=1},{type="item", name="Resin", amount=1},},results={{type="item", name="Carbon_fiber_fabric", amount=1,probability =1},},}
makeRecipe{name="Carbon_fiber_filament",energy_required=10,category="Electric_chemical_furnace",ingredients={{type="item", name="PAN_filament", amount=1},{type="fluid", name="Argon", amount=3},},results={{type="item", name="Carbon_fiber_filament", amount=1,probability =1},},}
makeRecipe{name="Cargo_wagon",energy_required=20,category="Assembling_machine",ingredients={{type="item", name="Steel_riveted_dense_plate", amount=17},{type="item", name="Cargo_wagon_hull", amount=1},{type="item", name="Steel_billet", amount=30},},results={{type="item", name="Cargo_wagon", amount=1,probability =1},},}
makeRecipe{name="Cargo_wagon_hull",energy_required=30,category="Assembling_machine",ingredients={{type="item", name="Steel_dense_plate", amount=48},{type="item", name="Steel_billet", amount=20},},results={{type="item", name="Cargo_wagon_hull", amount=1,probability =1},},}
makeRecipe{name="Cassiterite_crushed_ore",energy_required=2,category="Crusher",ingredients={{type="item", name="Cassiterite_ore", amount=1},},results={{type="item", name="Cassiterite_crushed_ore", amount=1,probability =1},},}
makeRecipe{name="Cement",energy_required=10,category="Grinding_mill",ingredients={{type="item", name="Cement_clinker", amount=9},{type="item", name="Calcium_sulfate", amount=1},},results={{type="item", name="Cement", amount=10,probability =1},},}
makeRecipe{name="Cement_bauxite",energy_required=12,category="Grinding_mill",ingredients={{type="item", name="Bauxite_tailings", amount=3},{type="item", name="Cement", amount=7},},results={{type="item", name="Cement_bauxite", amount=10,probability =1},},}
makeRecipe{name="Cement_clinker",energy_required=60,category="Furnace",ingredients={{type="item", name="Calcium_carbonate", amount=7},{type="item", name="Silt", amount=3},},results={{type="item", name="Cement_clinker", amount=10,probability =1},},}
makeRecipe{name="Cement_slag",energy_required=16,category="Grinding_mill",ingredients={{type="item", name="Slag", amount=9},{type="item", name="Cement", amount=1},},results={{type="item", name="Cement_slag", amount=10,probability =1},},}
makeRecipe{name="Chalcopyrite_crushed_ore",energy_required=2,category="Crusher",ingredients={{type="item", name="Chalcopyrite_ore", amount=1},},results={{type="item", name="Chalcopyrite_crushed_ore", amount=1,probability =1},},}
makeRecipe{name="Charcoal",energy_required=2,category="Furnace",ingredients={{type="item", name="Plank", amount=4},{type="item", name="Wood", amount=2},},results={{type="item", name="Charcoal", amount=1,probability =1},},}
makeRecipe{name="Charcoal",energy_required=2,category="Furnace",ingredients={{type="item", name="Wood_raw", amount=1},},results={{type="item", name="Charcoal", amount=1,probability =1},},}
makeRecipe{name="Chemical_pipe",energy_required=15,category="crafting",ingredients={{type="item", name="Iron_riveted_plate", amount=10},{type="item", name="Furnace_t3", amount=1},{type="item", name="Iron_pipe", amount=4},},results={{type="item", name="Chemical_pipe", amount=1,probability =1},},}
makeRecipe{name="Chemical_plant_t1",energy_required=15,category="crafting",ingredients={{type="item", name="Lead_pipe", amount=12},{type="item", name="Transformer", amount=2},{type="item", name="Furnace_t3", amount=1},{type="item", name="Iron_plate", amount=10},},results={{type="item", name="Chemical_plant_t1", amount=1,probability =1},},}
makeRecipe{name="Chemical_plant_t2",energy_required=15,category="crafting",ingredients={{type="item", name="Factory_frame", amount=1},{type="item", name="Electronics_board", amount=15},{type="item", name="Plastic_pipe", amount=30},{type="item", name="Stainless_steel_plate", amount=40},{type="item", name="Electric_chemical_furnace_t1", amount=1},},results={{type="item", name="Chemical_plant_t2", amount=1,probability =1},},}
makeRecipe{name="Chemical_plant_t3",energy_required=20,category="crafting",ingredients={{type="item", name="Circuit_board", amount=20},{type="item", name="Tungsten_wire", amount=30},{type="item", name="Chemical_plant_t2", amount=1},{type="item", name="Compressor_t2", amount=4},},results={{type="item", name="Chemical_plant_t3", amount=1,probability =1},},}
makeRecipe{name="Chlorine",energy_required=10,category="Electrolyzer",fluidIcon=true,ingredients={{type="fluid", name="Water", amount=2},{type="item", name="Salt", amount=2},},results={{type="fluid", name="Chlorine", amount=1,probability =1},{type="fluid", name="Hydrogen", amount=1,probability =1},{type="item", name="Sodium_hydroxide", amount=2,probability =1},},}
makeRecipe{name="Chloroauric_acid",energy_required=6,category="Electrolyzer",ingredients={{type="item", name="Dore_bar", amount=1},{type="fluid", name="Hydrochloric_acid", amount=10},},results={{type="item", name="Chloroauric_acid", amount=10,probability =1},},}
makeRecipe{name="Chromite_crushed_ore",energy_required=2,category="Crusher",ingredients={{type="item", name="Chromite_ore", amount=1},},results={{type="item", name="Chromite_crushed_ore", amount=1,probability =1},},}
makeRecipe{name="Chromium_oxide",energy_required=2,category="Furnace",ingredients={{type="item", name="Sodium_dichromate", amount=1},{type="item", name="Sulfur", amount=1},},results={{type="item", name="Chromium_oxide", amount=1,probability =1},{type="item", name="Sodium_sulfate", amount=1,probability =1},},}
makeRecipe{name="Circuit_board",energy_required=5,category="Assembling_machine",ingredients={{type="item", name="Basic_PCB", amount=1},{type="item", name="Electronics_components", amount=1},{type="item", name="Lead-free_solder", amount=1},},results={{type="item", name="Circuit_board", amount=1,probability =1},},}
makeRecipe{name="Coal_coke",energy_required=10,category="Distillation",ingredients={{type="item", name="Coal_dust", amount=10},},results={{type="item", name="Coal_coke", amount=7,probability =1},{type="item", name="Coal_tar", amount=1,probability =1},{type="fluid", name="Coal_gas", amount=1,probability =0.9},},}
makeRecipe{name="Coal_coke",energy_required=11,category="Distillation",ingredients={{type="item", name="Coal_dust", amount=10},},results={{type="item", name="Coal_coke", amount=7,probability =1},{type="item", name="Coal_tar", amount=1,probability =1},{type="fluid", name="Coal_gas", amount=1,probability =1},{type="fluid", name="Ammonia", amount=1,probability =1},},}
makeRecipe{name="Coal_coke",energy_required=12,category="Distillation",ingredients={{type="item", name="Coal_dust", amount=10},},results={{type="item", name="Coal_coke", amount=7,probability =1},{type="item", name="Coal_tar", amount=1,probability =1},{type="fluid", name="Coal_gas", amount=1,probability =1},{type="fluid", name="Ammonia", amount=1,probability =1},{type="fluid", name="Benzene", amount=0.1,probability =0.9},},}
makeRecipe{name="Coal_ore_crushed",energy_required=2,category="Crusher",ingredients={{type="item", name="Coal_ore", amount=1},},results={{type="item", name="Coal_ore_crushed", amount=1,probability =1},},}
makeRecipe{name="Coal_ore_dust",energy_required=2,category="Grinding_mill",ingredients={{type="item", name="Coal_crushed_ore", amount=1},},results={{type="item", name="Coal_ore_dust", amount=1,probability =1},},}
makeRecipe{name="Cobalt_ingot",energy_required=6,category="Blast_furnace",ingredients={{type="item", name="Cobalt_oxide", amount=1},{type="item", name="Coal_coke", amount=2},{type="fluid", name="Oxygen", amount=2},},results={{type="item", name="Cobalt_ingot", amount=1,probability =1},},}
makeRecipe{name="Cobalt_powder",energy_required=2,category="Grinding_mill",ingredients={{type="item", name="Cobalt_scrap", amount=1},},results={{type="item", name="Cobalt_powder", amount=1,probability =1},},}
makeRecipe{name="Cobalt_scrap",energy_required=2,category="Crusher",ingredients={{type="item", name="Cobalt_ingot", amount=1},},results={{type="item", name="Cobalt_scrap", amount=1,probability =1},},}
makeRecipe{name="Compressed_air",energy_required=1,category="Compressor",ingredients={{type="fluid", name="Air", amount=1},},results={{type="item", name="Compressed_air", amount=1,probability =1},},}
makeRecipe{name="Compression_turbine_fan",energy_required=8,category="Assembling_machine",ingredients={{type="item", name="Inconel_plate", amount=10},{type="item", name="Inconel_bearing", amount=5},{type="item", name="Steel_rod", amount=1},},results={{type="item", name="Compression_turbine_fan", amount=1,probability =1},},}
makeRecipe{name="Compressor_t1",energy_required=6,category="Assembling_machine",ingredients={{type="item", name="Steel_engine_block", amount=1},{type="item", name="Small_piston", amount=4},{type="item", name="Basic_electric_motor", amount=1},{type="item", name="Steel_pipe", amount=2},},results={{type="item", name="Compressor_t1", amount=1,probability =1},},}
makeRecipe{name="Compressor_t2",energy_required=6,category="Assembling_machine",ingredients={{type="item", name="Compressor_t1", amount=1},{type="item", name="Electronics_board", amount=4},{type="item", name="Hydraulic_pump", amount=1},{type="item", name="Hydraulic_piston", amount=2},},results={{type="item", name="Compressor_t2", amount=1,probability =1},},}
makeRecipe{name="Computer",energy_required=10,category="Electronics_assembling_machine",ingredients={{type="item", name="Electronics_component", amount=3},{type="item", name="Intergrated_circuit", amount=9},{type="item", name="Advanced_circuit_board", amount=1},{type="item", name="CPU_chip", amount=1},{type="item", name="Silver-oxide_battery_cell", amount=2},},results={{type="item", name="Computer", amount=1,probability =1},},}
makeRecipe{name="Concrete_block",energy_required=5,category="Chemical_plant",ingredients={{type="item", name="Cement", amount=3},{type="fluid", name="Water_distilled", amount=2},{type="item", name="Sand", amount=6},{type="item", name="Gravel", amount=12},},results={{type="item", name="Concrete_block", amount=1,probability =1},},}
makeRecipe{name="Concrete_block",energy_required=5,category="Chemical_plant",ingredients={{type="item", name="Cement_bauxite", amount=3},{type="fluid", name="Water_distilled", amount=2},{type="item", name="Sand", amount=6},{type="item", name="Gravel", amount=12},},results={{type="item", name="Concrete_block", amount=1,probability =1},},}
makeRecipe{name="Concrete_block",energy_required=5,category="Chemical_plant",ingredients={{type="item", name="Cement_slag", amount=3},{type="fluid", name="Water_distilled", amount=2},{type="item", name="Sand", amount=6},{type="item", name="Gravel", amount=12},},results={{type="item", name="Concrete_block", amount=1,probability =1},},}
makeRecipe{name="Concrete_wall",energy_required=2,category="crafting",ingredients={{type="item", name="Concrete_block", amount=5},{type="item", name="Steel_rod", amount=3},},results={{type="item", name="Concrete_wall", amount=1,probability =1},},}
makeRecipe{name="Constant_combinator",energy_required=5,category="Assembling_machine",ingredients={{type="item", name="Aluminium_plate", amount=6},{type="item", name="Crystal_laser", amount=2},{type="item", name="Computer", amount=4},},results={{type="item", name="Constant_combinator", amount=1,probability =1},},}
makeRecipe{name="Construction_robot",energy_required=8,category="Assembling_machine",ingredients={{type="item", name="Li-ion_battery", amount=4},{type="item", name="Drone_frame", amount=1},{type="item", name="LV_electric_motor", amount=4},{type="item", name="Sensor", amount=3},{type="item", name="Crystal_laser", amount=1},},results={{type="item", name="Construction_robot", amount=1,probability =1},},}
makeRecipe{name="Cooling_fan",energy_required=3,category="Assembling_machine",ingredients={{type="item", name="Stainless_steel_plate", amount=1},{type="item", name="Steel_bearing", amount=1},},results={{type="item", name="Cooling_fan", amount=1,probability =1},},}
makeRecipe{name="Cooling_system",energy_required=5,category="Assembling_machine",ingredients={{type="fluid", name="Lubricant", amount=1},{type="item", name="Cooling_fan", amount=1},{type="item", name="LV_electric_motor", amount=1},{type="item", name="Heat_exchanger", amount=1},},results={{type="item", name="Cooling_system", amount=1,probability =1},},}
makeRecipe{name="Copper_anode",energy_required=2,category="Chemical_furnace",ingredients={{type="item", name="Copper_blister", amount=1},{type="fluid", name="Petroleum_gas", amount=1},},results={{type="item", name="Copper_anode", amount=1,probability =1},},}
makeRecipe{name="Copper_anode",energy_required=4,category="Chemical_furnace",ingredients={{type="item", name="Copper_blister", amount=1},{type="fluid", name="Coal_gas", amount=2},},results={{type="item", name="Copper_anode", amount=1,probability =1},},}
makeRecipe{name="Copper_billet",energy_required=2,category="Electrolyzer",ingredients={{type="item", name="Copper_anode", amount=1},{type="fluid", name="Sulfuric_acid", amount=2},},results={{type="item", name="Copper_billet", amount=1,probability =1},{type="fluid", name="Anode_slime", amount=1,probability =1},},}
makeRecipe{name="Copper_billet",energy_required=4,category="Furnace",ingredients={{type="item", name="Copper_native_ore", amount=4},},results={{type="item", name="Copper_billet", amount=1,probability =1},},}
makeRecipe{name="Copper_blister",energy_required=2.5,category="Flash_furnace",ingredients={{type="item", name="Copper_concentrate", amount=1},{type="fluid", name="Oxygen", amount=1},},results={{type="item", name="Copper_blister", amount=1,probability =1},{type="item", name="Slag", amount=1,probability =0.2},{type="fluid", name="Sulfur_dioxide", amount=1,probability =0.9},},}
makeRecipe{name="Copper_dense_pipe",energy_required=4,category="crafting",ingredients={{type="item", name="Copper_dense_plate", amount=2},},results={{type="item", name="Copper_dense_pipe", amount=1,probability =1},},}
makeRecipe{name="Copper_pipe",energy_required=4,category="crafting",ingredients={{type="item", name="Copper_plate", amount=2},},results={{type="item", name="Copper_pipe", amount=1,probability =1},},}
makeRecipe{name="Cordite",energy_required=2,category="Chemical_plant",ingredients={{type="item", name="Petroleum_jelly", amount=1},{type="fluid", name="Nitroglycerin", amount=6},{type="item", name="Guncotton", amount=13},},results={{type="item", name="Cordite", amount=1,probability =1},},}
makeRecipe{name="Cotton",energy_required=60,category="Farm",ingredients={{type="item", name="Fertilizer", amount=1},{type="item", name="Cotton_seeds", amount=1},{type="fluid", name="Water", amount=30},},results={{type="item", name="Cotton", amount=10,probability =1},{type="item", name="Cotton_seeds", amount=10,probability =1},},}
makeRecipe{name="Cracking_plant_t1",energy_required=15,category="crafting",ingredients={{type="item", name="Factory_frame", amount=1},{type="item", name="Distillery_t2", amount=1},{type="item", name="Steel_pipe", amount=6},{type="item", name="Basic_electronics_board", amount=5},},results={{type="item", name="Cracking_plant_t1", amount=1,probability =1},},}
makeRecipe{name="Cracking_plant_t2",energy_required=10,category="crafting",ingredients={{type="item", name="Cracking_plant_t1", amount=1},{type="item", name="Distillery_t3", amount=1},{type="item", name="Stainless_steel_pipe", amount=10},{type="item", name="Circuit_board", amount=20},{type="item", name="HV_transformer", amount=4},},results={{type="item", name="Cracking_plant_t2", amount=1,probability =1},},}
makeRecipe{name="Crossbow",energy_required=2,category="crafting",ingredients={{type="item", name="Plank", amount=1},{type="item", name="Iron_billet", amount=1},{type="item", name="Iron_wire", amount=1},},results={{type="item", name="Crossbow", amount=1,probability =1},},}
makeRecipe{name="Crude_locomotive_firebox",energy_required=30,category="Assembling_machine",ingredients={{type="item", name="Copper_dense_plate", amount=40},{type="item", name="Copper_dense_pipe", amount=26},{type="item", name="Iron_dense_plate", amount=48},},results={{type="item", name="Crude_locomotive_firebox", amount=1,probability =1},},}
makeRecipe{name="Crude_locomotive_hull",energy_required=40,category="Assembling_machine",ingredients={{type="item", name="Iron_riveted_dense_plate", amount=40},{type="item", name="Iron_billet", amount=45},{type="item", name="Copper_dense_plate", amount=5},{type="item", name="Iron_gear", amount=10},},results={{type="item", name="Crude_locomotive_hull", amount=1,probability =1},},}
makeRecipe{name="Crude_locomotive_piston",energy_required=20,category="Assembling_machine",ingredients={{type="item", name="Iron_dense_plate", amount=21},{type="item", name="Iron_billet", amount=30},{type="item", name="Iron_dense_pipe", amount=8},},results={{type="item", name="Crude_locomotive_piston", amount=1,probability =1},},}
makeRecipe{name="Crusher_t1",energy_required=14,category="crafting",ingredients={{type="item", name="Basic_electric_motor", amount=4},{type="item", name="Iron_gear", amount=12},{type="item", name="Iron_riveted_plate", amount=6},{type="item", name="Iron_transmission_chain", amount=2},},results={{type="item", name="Crusher_t1", amount=1,probability =1},},}
makeRecipe{name="Crusher_t2",energy_required=15,category="crafting",ingredients={{type="item", name="Steel_riveted_plate", amount=12},{type="item", name="Basic_electric_motor", amount=8},{type="item", name="Steel_gear", amount=24},{type="item", name="Steel_bearing", amount=4},},results={{type="item", name="Crusher_t2", amount=1,probability =1},},}
makeRecipe{name="Crusher_t3",energy_required=10,category="crafting",ingredients={{type="item", name="Circuit_board", amount=5},{type="item", name="Crusher_t2", amount=1},{type="item", name="LV_electric_motor", amount=8},{type="item", name="Tungsten_carbide_gear", amount=24},},results={{type="item", name="Crusher_t3", amount=1,probability =1},},}
makeRecipe{name="Cryogenic_distillation_plant_t1",energy_required=60,category="crafting",ingredients={{type="item", name="Compressor_t2", amount=10},{type="item", name="Circuit_board", amount=20},{type="item", name="Cryogenic_pipe", amount=80},{type="item", name="Molecular_sieve", amount=60},{type="item", name="Cooling_system", amount=30},},results={{type="item", name="Cryogenic_distillation_plant_t1", amount=1,probability =1},},}
makeRecipe{name="Cryogenic_pipe",energy_required=3,category="crafting",ingredients={{type="item", name="Aluminium_plate", amount=2},{type="item", name="Stainless_steel_pipe", amount=1},{type="item", name="Polystyrene", amount=4},},results={{type="item", name="Cryogenic_pipe", amount=1,probability =1},},}
makeRecipe{name="Crystal_laser",energy_required=3.5,category="Assembling_machine",ingredients={{type="item", name="Circuit_board", amount=3},{type="item", name="Laser_frame", amount=1},{type="item", name="ABS-plastic_pellets", amount=2},},results={{type="item", name="Crystal_laser", amount=1,probability =1},},}
makeRecipe{name="Currency_exchange_t1",energy_required=15,category="crafting",ingredients={{type="item", name="Iron_riveted_plate", amount=30},{type="item", name="Wooden_framework", amount=30},{type="item", name="Brick", amount=30},},results={{type="item", name="Currency_exchange_t1", amount=1,probability =1},},}
makeRecipe{name="Curved_track",energy_required=1,category="crafting",ingredients={{type="item", name="Track", amount=5},},results={{type="item", name="Curved_track", amount=1,probability =1},},}
makeRecipe{name="DNT",energy_required=1.5,category="Chemical_plant",ingredients={{type="fluid", name="MNT", amount=1},{type="fluid", name="Nitric_acid", amount=1},},results={{type="item", name="DNT", amount=1,probability =1},},}
makeRecipe{name="Data_cable",energy_required=2,category="Assembling_machine",ingredients={{type="item", name="Optical_fiber", amount=1},{type="item", name="Rubber", amount=1},},results={{type="item", name="Data_cable", amount=1,probability =1},},}
makeRecipe{name="Decider_combinator",energy_required=5,category="Assembling_machine",ingredients={{type="item", name="Aluminium_plate", amount=6},{type="item", name="Crystal_laser", amount=2},{type="item", name="Computer", amount=4},},results={{type="item", name="Decider_combinator", amount=1,probability =1},},}
makeRecipe{name="Depleted_uranium_ingot",energy_required=4,category="Electric_furnace",ingredients={{type="item", name="Depleted_uranium_pellet", amount=40},},results={{type="item", name="Depleted_uranium_ingot", amount=1,probability =1},},}
makeRecipe{name="Dichloroethane",energy_required=4,category="Chemical_plant",fluidIcon=true,ingredients={{type="fluid", name="Hydrogen_chloride", amount=2},{type="fluid", name="Ethylene", amount=1},},results={{type="fluid", name="Dichloroethane", amount=1,probability =1},{type="fluid", name="Water", amount=1,probability =1},},}
makeRecipe{name="Diesel",energy_required=4,category="Chemical_plant",fluidIcon=true,ingredients={{type="fluid", name="Light_oil", amount=1},},results={{type="fluid", name="Diesel", amount=1,probability =1},},}
makeRecipe{name="Diesel-electric_engine",energy_required=30,category="Assembling_machine",ingredients={{type="item", name="Large_diesel_engine", amount=1},{type="item", name="HV_transformer", amount=2},{type="item", name="HV_electric_motor", amount=24},{type="item", name="Steel_transmission_chain", amount=24},},results={{type="item", name="Diesel-electric_engine", amount=1,probability =1},},}
makeRecipe{name="Diesel-electric_locomotive",energy_required=40,category="crafting",ingredients={{type="item", name="Diesel_locomotive_hull_part", amount=4},{type="item", name="Battery", amount=30},{type="item", name="Diesel-electric_engine", amount=1},{type="item", name="Circuit_board", amount=20},{type="item", name="HV_electric_motor", amount=24},},results={{type="item", name="Diesel-electric_locomotive", amount=1,probability =1},},}
makeRecipe{name="Diesel-electric_locomotive",energy_required=50,category="Assembling_machine",ingredients={{type="item", name="Diesel_locomotive_hull_part", amount=4},{type="item", name="Battery", amount=30},{type="item", name="Diesel-electric_engine", amount=1},{type="item", name="Circuit_board", amount=20},{type="item", name="HV_electric_motor", amount=24},},results={{type="item", name="Diesel-electric_locomotive", amount=1,probability =1},},}
makeRecipe{name="Diesel_canister",energy_required=2,category="Pump",ingredients={{type="fluid", name="Diesel", amount=1},{type="item", name="Canister", amount=1},},results={{type="item", name="Diesel_canister", amount=1,probability =1},},}
makeRecipe{name="Diesel_engine",energy_required=10,category="Assembling_machine",ingredients={{type="fluid", name="Lubricant", amount=2},{type="item", name="Small_gearbox", amount=1},{type="item", name="Small_piston", amount=4},{type="item", name="Steel_engine_block", amount=1},},results={{type="item", name="Diesel_engine", amount=1,probability =1},},}
makeRecipe{name="Diesel_generator",energy_required=10,category="crafting",ingredients={{type="item", name="Transformer", amount=1},{type="item", name="Basic_electric_motor", amount=6},{type="item", name="Diesel_engine", amount=1},{type="item", name="Steel_transmission_chain", amount=2},{type="item", name="Basic_electronics_board", amount=4},},results={{type="item", name="Diesel_generator", amount=1,probability =1},},}
makeRecipe{name="Diesel_locomotive",energy_required=40,category="crafting",ingredients={{type="item", name="Large_diesel_engine", amount=1},{type="item", name="Hydraulic_transmission", amount=1},{type="item", name="Battery", amount=20},{type="item", name="Electronics_board", amount=10},{type="item", name="Diesel_locomotive_hull_part", amount=4},},results={{type="item", name="Diesel_locomotive", amount=1,probability =1},},}
makeRecipe{name="Diesel_locomotive",energy_required=60,category="Assembling_machine",ingredients={{type="item", name="Large_diesel_engine", amount=1},{type="item", name="Hydraulic_transmission", amount=1},{type="item", name="Battery", amount=20},{type="item", name="Electronics_board", amount=10},{type="item", name="Diesel_locomotive_hull_part", amount=4},},results={{type="item", name="Diesel_locomotive", amount=1,probability =1},},}
makeRecipe{name="Diesel_locomotive_hull_part",energy_required=25,category="Assembling_machine",ingredients={{type="item", name="Steel_dense_plate", amount=60},{type="item", name="Steel_billet", amount=45},{type="item", name="Steel_bearing", amount=24},{type="item", name="Steel_gear", amount=24},},results={{type="item", name="Diesel_locomotive_hull_part", amount=1,probability =1},},}
makeRecipe{name="Diode",energy_required=4,category="Assembling_machine",ingredients={{type="item", name="Silicon_wafer", amount=1},{type="item", name="Lead_solder", amount=1},{type="item", name="Tinned_copper_wire", amount=2},},results={{type="item", name="Diode", amount=6,probability =1},},}
makeRecipe{name="Direct_reduced_iron",energy_required=4,category="Chemical_furnace",ingredients={{type="item", name="Coal_coke", amount=1},{type="item", name="Limestone_crushed", amount=1},{type="item", name="Magnetite_concentrate", amount=2},{type="fluid", name="Syngas", amount=2},},results={{type="item", name="Direct_reduced_iron", amount=1,probability =1},},}
makeRecipe{name="Distillery_t1",energy_required=8,category="crafting",ingredients={{type="item", name="Boiler_t1", amount=1},{type="item", name="Copper_pipe", amount=4},{type="item", name="Wooden_tank_2x2", amount=1},},results={{type="item", name="Distillery_t1", amount=1,probability =1},},}
makeRecipe{name="Distillery_t2",energy_required=15,category="crafting",ingredients={{type="item", name="Boiler_t1", amount=2},{type="item", name="Glass", amount=50},{type="item", name="Steel_tank_2x2", amount=1},{type="item", name="Refractory_furnace", amount=1},},results={{type="item", name="Distillery_t2", amount=1,probability =1},},}
makeRecipe{name="Distillery_t3",energy_required=10,category="crafting",ingredients={{type="item", name="Nichrome_wire", amount=80},{type="item", name="Stainless_steel_tank_2x2", amount=1},{type="item", name="Electronics_board", amount=15},{type="item", name="Factory_frame", amount=1},{type="item", name="Distillery_t2", amount=1},},results={{type="item", name="Distillery_t3", amount=1,probability =1},},}
makeRecipe{name="Distribution_pole_t1",energy_required=1,category="crafting",ingredients={{type="item", name="Copper_wire", amount=6},{type="item", name="Transformer", amount=1},{type="item", name="Raw_wood", amount=1},},results={{type="item", name="Distribution_pole_t1", amount=1,probability =1},},}
makeRecipe{name="Distribution_pole_t2",energy_required=2,category="crafting",ingredients={{type="item", name="Copper_wire", amount=8},{type="item", name="Stainless_steel_plate", amount=6},{type="item", name="Distribution_pole_t1", amount=1},},results={{type="item", name="Distribution_pole_t2", amount=1,probability =1},},}
makeRecipe{name="Distribution_pole_t3",energy_required=2,category="Assembling_machine",ingredients={{type="item", name="Copper_wire", amount=20},{type="item", name="Aluminium_rod", amount=15},{type="item", name="Rubber", amount=20},{type="item", name="Transformer", amount=2},},results={{type="item", name="Distribution_pole_t3", amount=1,probability =1},},}
makeRecipe{name="Dore_bar",energy_required=10,category="Furnace",ingredients={{type="item", name="Gold_concentrate", amount=10},},results={{type="item", name="Dore_bar", amount=1,probability =1},},}
makeRecipe{name="Drill_frame",energy_required=8,category="Assembling_machine",ingredients={{type="item", name="Steel_plate", amount=6},{type="item", name="Steel_rod", amount=20},{type="item", name="Steel_transmission_chain", amount=3},},results={{type="item", name="Drill_frame", amount=1,probability =1},},}
makeRecipe{name="Drill_frame_basic",energy_required=8,category="crafting",ingredients={{type="item", name="Iron_riveted_plate", amount=6},{type="item", name="Iron_rod", amount=20},{type="item", name="Iron_transmission_chain", amount=3},},results={{type="item", name="Drill_frame_basic", amount=1,probability =1},},}
makeRecipe{name="Drone_frame",energy_required=10,category="Assembling_machine",ingredients={{type="item", name="Carbon_fiber_fabric", amount=8},{type="item", name="ABS-plastic_pellets", amount=3},},results={{type="item", name="Drone_frame", amount=1,probability =1},},}
makeRecipe{name="Electric_arc_furnace_t1",energy_required=30,category="crafting",ingredients={{type="item", name="Graphite_electrode", amount=3},{type="item", name="Transformer", amount=20},{type="item", name="Refractory_brick", amount=40},{type="item", name="Basic_electronics_board", amount=20},{type="item", name="Steel_plate", amount=50},{type="item", name="Factory_frame", amount=1},},results={{type="item", name="Electric_arc_furnace_t1", amount=1,probability =1},},}
makeRecipe{name="Electric_chemical_furnace_t1",energy_required=10,category="crafting",ingredients={{type="item", name="Electric_furnace_t1", amount=1},{type="item", name="Steel_pipe", amount=6},{type="item", name="Graphite_rod", amount=10},},results={{type="item", name="Electric_chemical_furnace_t1", amount=1,probability =1},},}
makeRecipe{name="Electric_chemical_furnace_t2",energy_required=10,category="crafting",ingredients={{type="item", name="Electric_chemical_furnace_t1", amount=1},{type="item", name="Nichrome_wire", amount=80},{type="item", name="Compressor_t1", amount=1},{type="item", name="Electronics_board", amount=10},},results={{type="item", name="Electric_chemical_furnace_t2", amount=1,probability =1},},}
makeRecipe{name="Electric_chemical_furnace_t3",energy_required=10,category="crafting",ingredients={{type="item", name="Circuit_board", amount=20},{type="item", name="Tungsten_wire", amount=30},{type="item", name="Compressor_t2", amount=2},{type="item", name="Electric_chemical_furnace_t2", amount=1},},results={{type="item", name="Electric_chemical_furnace_t3", amount=1,probability =1},},}
makeRecipe{name="Electric_flash_furnace_t1",energy_required=10,category="crafting",ingredients={{type="item", name="Electric_furnace_t2", amount=1},{type="item", name="Stainless_steel_pipe", amount=10},{type="item", name="Compressor_t1", amount=1},},results={{type="item", name="Electric_flash_furnace_t1", amount=1,probability =1},},}
makeRecipe{name="Electric_flash_furnace_t2",energy_required=10,category="crafting",ingredients={{type="item", name="Electric_furnace_t3", amount=1},{type="item", name="Compressor_t2", amount=2},},results={{type="item", name="Electric_flash_furnace_t2", amount=1,probability =1},},}
makeRecipe{name="Electric_furnace_t1",energy_required=60,category="crafting",ingredients={{type="item", name="Steel_wire", amount=80},{type="item", name="Refractory_brick", amount=20},{type="item", name="Basic_electronics_board", amount=4},{type="item", name="Factory_frame", amount=1},},results={{type="item", name="Electric_furnace_t1", amount=1,probability =1},},}
makeRecipe{name="Electric_furnace_t2",energy_required=10,category="crafting",ingredients={{type="item", name="Nichrome_wire", amount=80},{type="item", name="Electronics_board", amount=20},{type="item", name="Electric_furnace_t1", amount=1},},results={{type="item", name="Electric_furnace_t2", amount=1,probability =1},},}
makeRecipe{name="Electric_furnace_t3",energy_required=10,category="crafting",ingredients={{type="item", name="Circuit_board", amount=20},{type="item", name="Tungsten_wire", amount=30},{type="item", name="Electric_furnace_t2", amount=1},},results={{type="item", name="Electric_furnace_t3", amount=1,probability =1},},}
makeRecipe{name="Electric_motor_hull",energy_required=5,category="crafting",ingredients={{type="item", name="Copper_wire", amount=3},{type="item", name="Iron_riveted_plate", amount=1},},results={{type="item", name="Electric_motor_hull", amount=1,probability =1},},}
makeRecipe{name="Electric_pole_t1",energy_required=1,category="crafting",ingredients={{type="item", name="Copper_wire", amount=4},{type="item", name="Raw_wood", amount=1},},results={{type="item", name="Electric_pole_t1", amount=1,probability =1},},}
makeRecipe{name="Electric_rotor",energy_required=4,category="crafting",ingredients={{type="item", name="Copper_wire", amount=3},{type="item", name="Iron_rod", amount=1},{type="item", name="Iron_gear", amount=1},},results={{type="item", name="Electric_rotor", amount=1,probability =1},},}
makeRecipe{name="Electrolyzer_t1",energy_required=15,category="crafting",ingredients={{type="item", name="Iron_riveted_plate", amount=15},{type="item", name="Copper_pipe", amount=6},{type="item", name="Transformer", amount=4},},results={{type="item", name="Electrolyzer_t1", amount=1,probability =1},},}
makeRecipe{name="Electrolyzer_t2",energy_required=15,category="crafting",ingredients={{type="item", name="Electronics_board", amount=30},{type="item", name="Transformer", amount=20},{type="item", name="Plastic_pipe", amount=30},{type="item", name="Stainless_steel_plate", amount=50},{type="item", name="Factory_frame", amount=2},},results={{type="item", name="Electrolyzer_t2", amount=1,probability =1},},}
makeRecipe{name="Electrolyzer_t3",energy_required=20,category="crafting",ingredients={{type="item", name="Circuit_board", amount=30},{type="item", name="Electrolyzer_t3", amount=1},{type="item", name="Gold_wire", amount=30},},results={{type="item", name="Electrolyzer_t3", amount=1,probability =1},},}
makeRecipe{name="Electronics_assembling_macine_t1",energy_required=20,category="crafting",ingredients={{type="item", name="Factory_frame", amount=1},{type="item", name="Circuit_board", amount=8},{type="item", name="Inserter_t4", amount=9},{type="item", name="Excimer_laser", amount=10},},results={{type="item", name="Electronics_assembling_macine_t1", amount=1,probability =1},},}
makeRecipe{name="Electronics_board",energy_required=2,category="Assembling_machine",ingredients={{type="item", name="Diode", amount=4},{type="item", name="Basic_electronics_board", amount=1},{type="item", name="Lead_solder", amount=1},},results={{type="item", name="Electronics_board", amount=1,probability =1},},}
makeRecipe{name="Electronics_components",energy_required=1,category="Assembling_machine",ingredients={{type="item", name="Resistor", amount=4},{type="item", name="Capacitor", amount=2},{type="item", name="Diode", amount=4},{type="item", name="Transistor", amount=6},},results={{type="item", name="Electronics_components", amount=1,probability =1},},}
makeRecipe{name="Enriched_uranium_pellet",energy_required=10,category="Nuclear_fuel_processing_plant",ingredients={{type="fluid", name="Water_distilled", amount=2},{type="fluid", name="Uranium_hexafluoride", amount=1},{type="fluid", name="Hydrogen", amount=2},{type="fluid", name="Ammonia", amount=1},},results={{type="item", name="Enriched_uranium_pellet", amount=10,probability =0.01},{type="item", name="Depleted_uranium_pellet", amount=10,probability =0.99},},}
makeRecipe{name="Ethylbenzene",energy_required=2,category="Chemical_plant",fluidIcon=true,ingredients={{type="fluid", name="Ethylene", amount=1},{type="fluid", name="Benzene", amount=1},},results={{type="fluid", name="Ethylbenzene", amount=1,probability =1},},}
makeRecipe{name="Ethylbenzene",energy_required=8,category="Distillation",fluidIcon=true,ingredients={{type="item", name="Coal_tar", amount=3},},results={{type="fluid", name="Ethylbenzene", amount=1,probability =0.9},{type="fluid", name="Bitumi", amount=3,probability =1},},}
makeRecipe{name="Ethylene",energy_required=2,category="Cracking_plant",fluidIcon=true,ingredients={{type="fluid", name="Petroleum_gas", amount=1},{type="fluid", name="Water_distilled", amount=1},},results={{type="fluid", name="Ethylene", amount=1,probability =1},{type="fluid", name="Toluene", amount=1,probability =0.1},},}
makeRecipe{name="Ethylene",energy_required=3,category="Cracking_plant",fluidIcon=true,ingredients={{type="fluid", name="Benzene", amount=1},{type="fluid", name="Water_distilled", amount=1},},results={{type="fluid", name="Ethylene", amount=1,probability =1},},}
makeRecipe{name="Excimer_laser",energy_required=8,category="Assembling_machine",ingredients={{type="fluid", name="Argon", amount=3},{type="item", name="Excimer_laser_frame", amount=1},{type="item", name="Chloride", amount=3},},results={{type="item", name="Excimer_laser", amount=1,probability =1},},}
makeRecipe{name="Excimer_laser_frame",energy_required=6,category="Assembling_machine",ingredients={{type="item", name="HR-mirror", amount=1},{type="item", name="Circuit_board", amount=2},{type="item", name="Oxide_glass", amount=1},{type="item", name="Aluminium_plate", amount=4},},results={{type="item", name="Excimer_laser_frame", amount=1,probability =1},},}
makeRecipe{name="Extruder_t1",energy_required=20,category="crafting",ingredients={{type="item", name="Furnace_t1", amount=1},{type="item", name="Iron_plate", amount=8},},results={{type="item", name="Extruder_t1", amount=1,probability =1},},}
makeRecipe{name="Extruder_t2",energy_required=15,category="crafting",ingredients={{type="item", name="Extruder_t1", amount=1},{type="item", name="Basic_electric_motor", amount=2},{type="item", name="Transformer", amount=1},{type="item", name="Transport_belt_t2", amount=2},},results={{type="item", name="Extruder_t2", amount=1,probability =1},},}
makeRecipe{name="Extruder_t3",energy_required=15,category="crafting",ingredients={{type="item", name="Basic_electric_motor", amount=4},{type="item", name="Transport_belt_t3", amount=2},{type="item", name="Steel_dense_plate", amount=1},{type="item", name="Transformer", amount=2},{type="item", name="Steel_wire", amount=20},},results={{type="item", name="Extruder_t3", amount=1,probability =1},},}
makeRecipe{name="Extruder_t4",energy_required=10,category="crafting",ingredients={{type="item", name="Transport_belt_t4", amount=2},{type="item", name="Extruder_t3", amount=1},{type="item", name="LV_electric_motor", amount=4},},results={{type="item", name="Extruder_t4", amount=1,probability =1},},}
makeRecipe{name="Factory_frame",energy_required=8,category="Assembling_machine",ingredients={{type="item", name="Concrete_block", amount=50},{type="item", name="Steel_rod", amount=25},},results={{type="item", name="Factory_frame", amount=1,probability =1},},}
makeRecipe{name="Farm_t1",energy_required=15,category="crafting",ingredients={{type="item", name="Copper_pipe", amount=4},{type="item", name="Wooden_tank_4x4", amount=1},{type="item", name="Wooden_framework", amount=20},{type="item", name="Pump_t1", amount=1},},results={{type="item", name="Farm_t1", amount=1,probability =1},},}
makeRecipe{name="Farm_t2",energy_required=15,category="crafting",ingredients={{type="item", name="Plastic_pipe", amount=15},{type="item", name="Stainless_steel_tank_4x4", amount=1},{type="item", name="Wooden_framework", amount=30},{type="item", name="Pump", amount=2},{type="item", name="Electronics_board", amount=5},},results={{type="item", name="Farm_t2", amount=1,probability =1},},}
makeRecipe{name="Ferric_chloride_solution",energy_required=3,category="Chemical_plant",fluidIcon=true,ingredients={{type="fluid", name="Hydrochloric_acid", amount=1},{type="item", name="Magnetite_concentrate", amount=1},},results={{type="fluid", name="Ferric_chloride_solution", amount=1,probability =1},},}
makeRecipe{name="Ferrochrome",energy_required=6,category="Electric_arc_furnace",ingredients={{type="item", name="Chromite_concentrate", amount=1},{type="item", name="Coal_coke", amount=1},},results={{type="item", name="Ferrochrome", amount=1,probability =1},},}
makeRecipe{name="Ferrosilicon",energy_required=2,category="Electric_arc_furnace",ingredients={{type="item", name="Magnetite_concentrate", amount=4},{type="item", name="Silicon_dioxide", amount=1},{type="item", name="Coal_coke", amount=1},},results={{type="item", name="Ferrosilicon", amount=1,probability =1},},}
makeRecipe{name="Ferrosilicon",energy_required=7,category="Blast_furnace",ingredients={{type="item", name="Magnetite_concentrate", amount=4},{type="item", name="Silicon_dioxide", amount=1},{type="item", name="Coal_coke", amount=2},},results={{type="item", name="Ferrosilicon", amount=1,probability =1},},}
makeRecipe{name="Fertilizer",energy_required=4,category="Chemical_plant",ingredients={{type="item", name="Potassium_nitrate", amount=1},{type="fluid", name="Water", amount=4},},results={{type="item", name="Fertilizer", amount=1,probability =1},},}
makeRecipe{name="Fiberglass_cloth",energy_required=4,category="Assembling_machine",ingredients={{type="item", name="Fiberglass_roving", amount=1},},results={{type="item", name="Fiberglass_cloth", amount=1,probability =1},},}
makeRecipe{name="Fiberglass_laminate",energy_required=2,category="Assembling_machine",ingredients={{type="item", name="Fiberglass_cloth", amount=4},{type="item", name="Resin", amount=1},},results={{type="item", name="Fiberglass_laminate", amount=1,probability =1},},}
makeRecipe{name="Flash_furnace_t1",energy_required=15,category="crafting",ingredients={{type="item", name="Iron_riveted_plate", amount=15},{type="item", name="Iron_plate", amount=2},{type="item", name="Furnace_t1", amount=1},},results={{type="item", name="Flash_furnace_t1", amount=1,probability =1},},}
makeRecipe{name="Flash_tube_lamp",energy_required=2,category="Assembling_machine",ingredients={{type="item", name="Glass", amount=1},{type="fluid", name="Argon", amount=1},{type="item", name="Capacitor", amount=2},},results={{type="item", name="Flash_tube_lamp", amount=1,probability =1},},}
makeRecipe{name="Fluorite_crushed_ore",energy_required=2,category="Crusher",ingredients={{type="item", name="Fluorite_ore", amount=1},},results={{type="item", name="Fluorite_crushed_ore", amount=1,probability =1},},}
makeRecipe{name="Furnace_t1",energy_required=40,category="crafting",ingredients={{type="item", name="Quarried_stone", amount=20},},results={{type="item", name="Furnace_t1", amount=1,probability =1},},}
makeRecipe{name="Furnace_t2",energy_required=30,category="crafting",ingredients={{type="item", name="Brick", amount=20},},results={{type="item", name="Furnace_t2", amount=1,probability =1},},}
makeRecipe{name="Furnace_t3",energy_required=15,category="crafting",ingredients={{type="item", name="Refractory_brick", amount=20},},results={{type="item", name="Furnace_t3", amount=1,probability =1},},}
makeRecipe{name="Galena_crushed_ore",energy_required=2,category="Crusher",ingredients={{type="item", name="Galena_ore", amount=1},},results={{type="item", name="Galena_crushed_ore", amount=1,probability =1},},}
makeRecipe{name="Gas_centrifuge",energy_required=6,category="Assembling_machine",ingredients={{type="item", name="LV_electric_motor", amount=1},{type="item", name="Sensor", amount=2},{type="item", name="Stainless_steel_pipe", amount=1},{type="item", name="Stainless_steel_plate", amount=2},},results={{type="item", name="Gas_centrifuge", amount=1,probability =1},},}
makeRecipe{name="Gas_turbine",energy_required=50,category="Assembling_machine",ingredients={{type="item", name="Titanium_plate", amount=20},{type="item", name="Turbine_fan", amount=4},{type="item", name="Circuit_board", amount=9},{type="item", name="Inconel_plate", amount=4},{type="item", name="Compression_turbine_fan", amount=12},},results={{type="item", name="Gas_turbine", amount=1,probability =1},},}
makeRecipe{name="Gas_turbine_generator",energy_required=15,category="Assembling_machine",ingredients={{type="item", name="HV_electric_motor", amount=20},{type="item", name="Gas_turbine", amount=1},{type="item", name="HV_transformer", amount=8},},results={{type="item", name="Gas_turbine_generator", amount=1,probability =1},},}
makeRecipe{name="Gas_turbine_power_plant",energy_required=90,category="crafting",ingredients={{type="item", name="Gas_turbine_generator", amount=1},{type="item", name="Large_factory_frame", amount=1},{type="item", name="Circuit_board", amount=20},{type="item", name="Steam_turbine_t3", amount=1},},results={{type="item", name="Gas_turbine_power_plant", amount=1,probability =1},},}
makeRecipe{name="Germanium",energy_required=4.5,category="Chemical_plant",ingredients={{type="fluid", name="Hydrogen", amount=1},{type="item", name="Germanium_dioxide", amount=1},},results={{type="item", name="Germanium", amount=1,probability =1},{type="fluid", name="Water", amount=1,probability =1},},}
makeRecipe{name="Germanium_dioxide",energy_required=3,category="Chemical_plant",ingredients={{type="fluid", name="Water_distilled", amount=1},{type="fluid", name="Germanium_tetrachloride", amount=1},},results={{type="item", name="Germanium_dioxide", amount=1,probability =1},{type="fluid", name="Hydrogen", amount=1,probability =1},},}
makeRecipe{name="Germanium_tetrachloride",energy_required=4,category="Chemical_plant",fluidIcon=true,ingredients={{type="item", name="Germanium_concentrate", amount=1},{type="fluid", name="Chlorine", amount=1},},results={{type="fluid", name="Germanium_tetrachloride", amount=1,probability =1},{type="fluid", name="Oxygen", amount=1,probability =1},},}
makeRecipe{name="Glass",energy_required=8,category="Furnace",ingredients={{type="item", name="Calcium_carbonate", amount=1},{type="item", name="Sodium_carbonate", amount=2},{type="item", name="Silicon_dioxide", amount=7},},results={{type="item", name="Glass", amount=10,probability =1},},}
makeRecipe{name="Glycerol",energy_required=6,category="Chemical_plant",fluidIcon=true,ingredients={{type="fluid", name="Seed_oil", amount=1},{type="item", name="Sodium_hydroxide", amount=3},{type="fluid", name="Water_distilled", amount=1},},results={{type="fluid", name="Glycerol", amount=1,probability =1},},}
makeRecipe{name="Gold_concentrate",energy_required=1,category="Ore_washing",ingredients={{type="item", name="Silt", amount=1},{type="fluid", name="Water", amount=10},},results={{type="item", name="Gold_concentrate", amount=1,probability =0.004},{type="item", name="Zircon", amount=1,probability =0.0002},{type="item", name="Rare_earth", amount=1,probability =0.0001},},}
makeRecipe{name="Gold_concentrate",energy_required=3,category="Chemical_plant",ingredients={{type="fluid", name="Anode_slime", amount=1},{type="fluid", name="Chlorine", amount=1},{type="fluid", name="Hydrochloric_acid", amount=1},},results={{type="item", name="Gold_concentrate", amount=1,probability =0.02},},}
makeRecipe{name="Gold_ingot",energy_required=14,category="Electrolyzer",ingredients={{type="item", name="Dore_bar", amount=1},{type="item", name="Chloroauric_acid", amount=1},},results={{type="item", name="Gold_ingot", amount=1,probability =1},},}
makeRecipe{name="Graphite_crushed",energy_required=3,category="Chemical_plant",ingredients={{type="item", name="Graphite_crushed", amount=5},{type="fluid", name="Water_distilled", amount=5},},results={{type="item", name="Graphite_crushed", amount=4,probability =1},{type="item", name="Graphite_dust", amount=1,probability =0.2},},}
makeRecipe{name="Graphite_crushed_ore",energy_required=2,category="Crusher",ingredients={{type="item", name="Graphite_ore", amount=1},},results={{type="item", name="Graphite_crushed_ore", amount=1,probability =1},},}
makeRecipe{name="Graphite_electrode",energy_required=60,category="Electric_furnace",ingredients={{type="item", name="Graphite_dust", amount=100},},results={{type="item", name="Graphite_electrode", amount=1,probability =1},},}
makeRecipe{name="Graphite_rod",energy_required=15,category="Electric_furnace",ingredients={{type="item", name="Graphite_dust", amount=4},},results={{type="item", name="Graphite_rod", amount=1,probability =1},},}
makeRecipe{name="Graphite_rod",energy_required=8,category="Electric_furnace",ingredients={{type="item", name="Graphite_dust", amount=15},},results={{type="item", name="Graphite_rod", amount=1,probability =1},},}
makeRecipe{name="Gravel",energy_required=2,category="Grinding_mill",ingredients={{type="item", name="Stone_crushed", amount=1},},results={{type="item", name="Gravel", amount=1,probability =1},{type="item", name="Sand", amount=1,probability =0.05},},}
makeRecipe{name="Green_wire",energy_required=1,category="crafting",ingredients={{type="item", name="Data_cable", amount=1},},results={{type="item", name="Green_wire", amount=1,probability =1},},}
makeRecipe{name="Grinding_mill_t1",energy_required=10,category="crafting",ingredients={{type="item", name="Basic_electric_motor", amount=2},{type="item", name="Iron_gear", amount=6},{type="item", name="Iron_riveted_plate", amount=6},{type="item", name="Iron_pipe", amount=4},},results={{type="item", name="Grinding_mill_t1", amount=1,probability =1},},}
makeRecipe{name="Grinding_mill_t2",energy_required=15,category="crafting",ingredients={{type="item", name="Steel_riveted_plate", amount=12},{type="item", name="Basic_electric_motor", amount=4},{type="item", name="Steel_gear", amount=12},{type="item", name="Steel_bearing", amount=4},{type="item", name="Steel_pipe", amount=8},},results={{type="item", name="Grinding_mill_t2", amount=1,probability =1},},}
makeRecipe{name="Grinding_mill_t3",energy_required=10,category="crafting",ingredients={{type="item", name="LV_electric_motor", amount=3},{type="item", name="Tungsten_carbide_gear", amount=12},{type="item", name="Grinding_mill_t2", amount=1},{type="item", name="Circuit_board", amount=5},},results={{type="item", name="Grinding_mill_t3", amount=1,probability =1},},}
makeRecipe{name="Gunpowder",energy_required=10,category="crafting",ingredients={{type="item", name="Charcoal", amount=2},{type="item", name="Sulfur", amount=1},{type="item", name="Potassium_nitrate", amount=7},},results={{type="item", name="Gunpowder", amount=10,probability =1},},}
makeRecipe{name="HR-mirror",energy_required=3,category="Chemical_plant",ingredients={{type="item", name="Calcium_fluoride", amount=1},{type="item", name="Oxide_glass", amount=3},},results={{type="item", name="HR-mirror", amount=3,probability =1},},}
makeRecipe{name="HS_curved_track",energy_required=4,category="crafting",ingredients={{type="item", name="HS_track", amount=5},},results={{type="item", name="HS_curved_track", amount=1,probability =1},},}
makeRecipe{name="HS_track",energy_required=4,category="crafting",ingredients={{type="item", name="Gravel", amount=15},{type="item", name="Steel_HS_rail", amount=2},{type="item", name="Concrete_block", amount=8},},results={{type="item", name="HS_track", amount=1,probability =1},},}
makeRecipe{name="HV_electric_motor",energy_required=4,category="Assembling_machine",ingredients={{type="item", name="Electronics_board", amount=4},{type="item", name="HV_electric_rotor", amount=1},{type="item", name="Steel_plate", amount=20},{type="item", name="HV_electric_motor_hull", amount=1},},results={{type="item", name="HV_electric_motor", amount=1,probability =1},},}
makeRecipe{name="HV_electric_motor_hull",energy_required=5,category="Assembling_machine",ingredients={{type="item", name="Steel_rod", amount=1},{type="item", name="Steel_plate", amount=18},{type="item", name="Copper_wire", amount=100},{type="item", name="Steel_bearing", amount=6},{type="fluid", name="Lubricant", amount=4},},results={{type="item", name="HV_electric_motor_hull", amount=1,probability =1},},}
makeRecipe{name="HV_electric_rotor",energy_required=3,category="Assembling_machine",ingredients={{type="item", name="Steel_plate", amount=12},{type="item", name="Steel_billet", amount=1},},results={{type="item", name="HV_electric_rotor", amount=1,probability =1},},}
makeRecipe{name="HV_transformer",energy_required=8,category="Assembling_machine",ingredients={{type="item", name="Transformer", amount=4},{type="item", name="Steel_plate", amount=8},{type="fluid", name="Lubricant", amount=1},{type="item", name="Basic_electronics_board", amount=5},{type="item", name="Steel_rod", amount=4},},results={{type="item", name="HV_transformer", amount=1,probability =1},},}
makeRecipe{name="Heat_exchanger",energy_required=3,category="Assembling_machine",ingredients={{type="item", name="Aluminium_plate", amount=3},},results={{type="item", name="Heat_exchanger", amount=1,probability =1},},}
makeRecipe{name="Hydraulic_piston",energy_required=2,category="Assembling_machine",ingredients={{type="fluid", name="Lubricant", amount=1},{type="item", name="Rubber", amount=1},{type="item", name="Small_piston", amount=1},},results={{type="item", name="Hydraulic_piston", amount=1,probability =1},},}
makeRecipe{name="Hydraulic_pump",energy_required=6,category="Assembling_machine",ingredients={{type="item", name="Steel_bearing", amount=4},{type="item", name="Steel_gear", amount=4},{type="item", name="Steel_rod", amount=2},{type="item", name="Hydraulic_pump_hull", amount=1},},results={{type="item", name="Hydraulic_pump", amount=1,probability =1},},}
makeRecipe{name="Hydraulic_pump_hull",energy_required=5,category="Assembling_machine",ingredients={{type="item", name="Electronics_board", amount=1},{type="item", name="Steel_plate", amount=6},{type="item", name="LV_electric_motor", amount=1},},results={{type="item", name="Hydraulic_pump_hull", amount=1,probability =1},},}
makeRecipe{name="Hydraulic_transmission",energy_required=20,category="Assembling_machine",ingredients={{type="item", name="Hydraulic_piston", amount=12},{type="item", name="Hydraulic_pump", amount=2},{type="fluid", name="Lubricant", amount=4},{type="item", name="Large_gearbox", amount=1},},results={{type="item", name="Hydraulic_transmission", amount=1,probability =1},},}
makeRecipe{name="Hydrochloric_acid",energy_required=1,category="Chemical_plant",fluidIcon=true,ingredients={{type="fluid", name="Hydrogen_chloride", amount=1},{type="fluid", name="Water_distilled", amount=1},},results={{type="fluid", name="Hydrochloric_acid", amount=1,probability =1},},}
makeRecipe{name="Hydrofluoric_acid",energy_required=1,category="Chemical_plant",fluidIcon=true,ingredients={{type="fluid", name="Hydrogen_fluoride", amount=1},{type="fluid", name="Water_distilled", amount=1},},results={{type="fluid", name="Hydrofluoric_acid", amount=1,probability =1},},}
makeRecipe{name="Hydrogen",energy_required=2,category="Cracking_plant",fluidIcon=true,ingredients={{type="fluid", name="Petroleum_gas", amount=1},{type="fluid", name="Water_distilled", amount=1},},results={{type="fluid", name="Hydrogen", amount=10,probability =1},},}
makeRecipe{name="Hydrogen_chloride",energy_required=1.5,category="Chemical_plant",fluidIcon=true,ingredients={{type="fluid", name="Chlorine", amount=1},{type="fluid", name="Hydrogen", amount=1},},results={{type="fluid", name="Hydrogen_chloride", amount=1,probability =1},},}
makeRecipe{name="Hydrogen_chloride",energy_required=7,category="Chemical_plant",fluidIcon=true,ingredients={{type="fluid", name="Dichloroethane", amount=2},},results={{type="fluid", name="Hydrogen_chloride", amount=1,probability =1},{type="item", name="Plastic_pellets", amount=1,probability =1},},}
makeRecipe{name="Inconel_ball",energy_required=2,category="Assembling_machine",ingredients={{type="item", name="Inconel_rod", amount=1},},results={{type="item", name="Inconel_ball", amount=12,probability =1},},}
makeRecipe{name="Inconel_bearing",energy_required=2,category="Assembling_machine",ingredients={{type="item", name="Inconel_ball", amount=8},{type="item", name="Inconel_bearing_hull", amount=1},{type="item", name="Lubrincant", amount=1},},results={{type="item", name="Inconel_bearing", amount=1,probability =1},},}
makeRecipe{name="Inconel_bearing_hull",energy_required=2,category="Assembling_machine",ingredients={{type="item", name="Inconel_plate", amount=1},},results={{type="item", name="Inconel_bearing_hull", amount=2,probability =1},},}
makeRecipe{name="Inconel_billet",energy_required=75,category="Electric_furnace",ingredients={{type="item", name="Nickel_billet", amount=16},{type="item", name="Ferrochrome", amount=6},{type="item", name="Cobalt_ingot", amount=1},{type="item", name="Titanium_billet", amount=2},},results={{type="item", name="Inconel_billet", amount=25,probability =1},},}
makeRecipe{name="Inconel_dense_pipe",energy_required=6,category="Assembling_machine",ingredients={{type="item", name="Inconel_dense_plate", amount=2},},results={{type="item", name="Inconel_dense_pipe", amount=1,probability =1},},}
makeRecipe{name="Inconel_pipe",energy_required=6,category="Assembling_machine",ingredients={{type="item", name="Inconel_plate", amount=2},},results={{type="item", name="Inconel_pipe", amount=1,probability =1},},}
makeRecipe{name="Inserter_filter_stack_t3",energy_required=8,category="Assembling_machine",ingredients={{type="item", name="Titanium_plate", amount=15},{type="item", name="Inserter_filter_t3", amount=1},{type="item", name="LV_electric_motor", amount=2},},results={{type="item", name="Inserter_filter_stack_t3", amount=1,probability =1},},}
makeRecipe{name="Inserter_filter_t3",energy_required=12,category="Assembling_machine",ingredients={{type="item", name="Circuit_board", amount=6},{type="item", name="Inserter_t3", amount=1},{type="item", name="Magnetron", amount=1},{type="item", name="LV_electric_motor", amount=1},},results={{type="item", name="Inserter_filter_t3", amount=1,probability =1},},}
makeRecipe{name="Inserter_filter_t4",energy_required=8,category="Assembling_machine",ingredients={{type="item", name="Sensor", amount=6},{type="item", name="Inserter_t4", amount=1},{type="item", name="LV_electric_motor", amount=2},},results={{type="item", name="Inserter_filter_t4", amount=1,probability =1},},}
makeRecipe{name="Inserter_frame",energy_required=8,category="Assembling_machine",ingredients={{type="item", name="Steel_plate", amount=10},{type="item", name="Steel_bearing", amount=4},{type="item", name="Steel_gear", amount=4},{type="item", name="Steel_rod", amount=6},},results={{type="item", name="Inserter_frame", amount=1,probability =1},},}
makeRecipe{name="Inserter_long_stack_t3",energy_required=12,category="Assembling_machine",ingredients={{type="item", name="Steel_transmission_chain", amount=4},{type="item", name="Steel_plate", amount=25},{type="item", name="Steel_rod", amount=2},{type="item", name="Inserter_t3", amount=1},{type="item", name="Basic_electric_motor", amount=9},},results={{type="item", name="Inserter_long_stack_t3", amount=1,probability =1},},}
makeRecipe{name="Inserter_long_stack_t4",energy_required=12,category="Assembling_machine",ingredients={{type="item", name="Hydraulic_piston", amount=4},{type="item", name="Titanium_plate", amount=25},{type="item", name="Inserter_t4", amount=1},{type="item", name="Hydraulic_pump", amount=1},},results={{type="item", name="Inserter_long_stack_t4", amount=1,probability =1},},}
makeRecipe{name="Inserter_long_t2",energy_required=6,category="crafting",ingredients={{type="item", name="Inserter_t2", amount=1},{type="item", name="Basic_electric_motor", amount=1},{type="item", name="Iron_rod", amount=2},},results={{type="item", name="Inserter_long_t2", amount=1,probability =1},},}
makeRecipe{name="Inserter_long_t3",energy_required=8,category="crafting",ingredients={{type="item", name="Basic_electric_motor", amount=1},{type="item", name="Inserter_t3", amount=1},{type="item", name="Steel_rod", amount=2},},results={{type="item", name="Inserter_long_t3", amount=1,probability =1},},}
makeRecipe{name="Inserter_long_t4",energy_required=8,category="crafting",ingredients={{type="item", name="Hydraulic_pump", amount=1},{type="item", name="Inserter_t4", amount=1},{type="item", name="Hydraulic_piston", amount=3},},results={{type="item", name="Inserter_long_t4", amount=1,probability =1},},}
makeRecipe{name="Inserter_stack_t3",energy_required=8,category="Assembling_machine",ingredients={{type="item", name="Steel_transmission_chain", amount=4},{type="item", name="Steel_plate", amount=15},{type="item", name="Inserter_t3", amount=1},{type="item", name="Basic_electric_motor", amount=8},},results={{type="item", name="Inserter_stack_t3", amount=1,probability =1},},}
makeRecipe{name="Inserter_stack_t4",energy_required=8,category="Assembling_machine",ingredients={{type="item", name="Hydraulic_piston", amount=1},{type="item", name="Titanium_plate", amount=15},{type="item", name="Inserter_t4", amount=1},{type="item", name="Hydraulic_pump", amount=1},},results={{type="item", name="Inserter_stack_t4", amount=1,probability =1},},}
makeRecipe{name="Inserter_t1",energy_required=8,category="crafting",ingredients={{type="item", name="Stirling_engine", amount=1},{type="item", name="Iron_rod", amount=4},{type="item", name="Iron_plate", amount=4},},results={{type="item", name="Inserter_t1", amount=1,probability =1},},}
makeRecipe{name="Inserter_t2",energy_required=10,category="crafting",ingredients={{type="item", name="Basic_electric_motor", amount=1},{type="item", name="Iron_rod", amount=4},{type="item", name="Iron_transmission_chain", amount=2},{type="item", name="Iron_plate", amount=4},},results={{type="item", name="Inserter_t2", amount=1,probability =1},},}
makeRecipe{name="Inserter_t3",energy_required=8,category="Assembling_machine",ingredients={{type="item", name="Steel_transmission_chain", amount=3},{type="item", name="Inserter_frame", amount=1},{type="item", name="Basic_electric_motor", amount=4},{type="item", name="Basic_electronics_board", amount=4},},results={{type="item", name="Inserter_t3", amount=1,probability =1},},}
makeRecipe{name="Inserter_t4",energy_required=6,category="Assembling_machine",ingredients={{type="item", name="Circuit_board", amount=4},{type="item", name="Inserter_t3", amount=1},{type="item", name="LV_electric_motor", amount=2},},results={{type="item", name="Inserter_t4", amount=1,probability =1},},}
makeRecipe{name="Inserter_t5",energy_required=6,category="Assembling_machine",ingredients={{type="item", name="Computer", amount=2},{type="item", name="Inserter_t4", amount=1},{type="item", name="HV_electric_motor", amount=1},{type="item", name="Cooling_system", amount=4},},results={{type="item", name="Inserter_t5", amount=1,probability =1},},}
makeRecipe{name="Integrated_circuit",energy_required=6,category="Assembling_machine",ingredients={{type="item", name="Resin", amount=4},{type="item", name="Silver_foil", amount=1},{type="item", name="Sodium_hydroxide", amount=3},{type="item", name="Silicon_wafer", amount=1},},results={{type="item", name="Integrated_circuit", amount=11,probability =1},},}
makeRecipe{name="Integrated_circuit",energy_required=6,category="Electronics_assembling_machine",ingredients={{type="item", name="Resin", amount=4},{type="item", name="Silver_foil", amount=1},{type="item", name="Sodium_hydroxide", amount=3},{type="item", name="Silicon_wafer", amount=1},},results={{type="item", name="Integrated_circuit", amount=11,probability =1},},}
makeRecipe{name="Iron_ball",energy_required=5,category="crafting",ingredients={{type="item", name="Iron_rod", amount=1},},results={{type="item", name="Iron_ball", amount=12,probability =1},},}
makeRecipe{name="Iron_bearing",energy_required=4,category="crafting",ingredients={{type="item", name="Iron_ball", amount=8},{type="item", name="Iron_bearing_hull", amount=1},},results={{type="item", name="Iron_bearing", amount=1,probability =1},},}
makeRecipe{name="Iron_bearing_hull",energy_required=2,category="crafting",ingredients={{type="item", name="Iron_plate", amount=1},},results={{type="item", name="Iron_bearing_hull", amount=2,probability =1},},}
makeRecipe{name="Iron_billet",energy_required=3,category="Furnace",ingredients={{type="item", name="Iron_pig", amount=1},},results={{type="item", name="Iron_billet", amount=1,probability =1},},}
makeRecipe{name="Iron_billet",energy_required=5,category="Furnace",ingredients={{type="item", name="Magnetite_ore", amount=6},{type="item", name="Charcoal", amount=3},},results={{type="item", name="Iron_billet", amount=1,probability =1},{type="item", name="Slag", amount=2,probability =1},},}
makeRecipe{name="Iron_chest",energy_required=15,category="crafting",ingredients={{type="item", name="Iron_plate", amount=6},{type="item", name="Iron_rivet", amount=48},},results={{type="item", name="Iron_chest", amount=1,probability =1},},}
makeRecipe{name="Iron_dense_pipe",energy_required=12,category="crafting",ingredients={{type="item", name="Iron_riveted_dense_plate", amount=2},},results={{type="item", name="Iron_dense_pipe", amount=1,probability =1},},}
makeRecipe{name="Iron_dense_underground_pipe",energy_required=8,category="crafting",ingredients={{type="item", name="Iron_dense_pipe", amount=24},},results={{type="item", name="Iron_dense_underground_pipe", amount=2,probability =1},},}
makeRecipe{name="Iron_drill_bit",energy_required=4,category="crafting",ingredients={{type="item", name="Iron_bearing", amount=3},{type="item", name="Iron_gear", amount=9},{type="item", name="Iron_rod", amount=1},},results={{type="item", name="Iron_drill_bit", amount=1,probability =1},},}
makeRecipe{name="Iron_engine_block",energy_required=5,category="crafting",ingredients={{type="item", name="Iron_billet", amount=2},{type="item", name="Iron_pipe", amount=1},},results={{type="item", name="Iron_engine_block", amount=1,probability =1},},}
makeRecipe{name="Iron_pipe",energy_required=6,category="crafting",ingredients={{type="item", name="Iron_riveted_plate", amount=2},},results={{type="item", name="Iron_pipe", amount=1,probability =1},},}
makeRecipe{name="Iron_piston",energy_required=2,category="crafting",ingredients={{type="item", name="Iron_plate", amount=1},{type="item", name="Iron_rod", amount=1},},results={{type="item", name="Iron_piston", amount=1,probability =1},},}
makeRecipe{name="Iron_rail",energy_required=2,category="Furnace",ingredients={{type="item", name="Iron_billet", amount=13},},results={{type="item", name="Iron_rail", amount=1,probability =1},},}
makeRecipe{name="Iron_rivet",energy_required=3,category="crafting",ingredients={{type="item", name="Iron_wire", amount=1},},results={{type="item", name="Iron_rivet", amount=6,probability =1},},}
makeRecipe{name="Iron_riveted_dense_plate",energy_required=10,category="crafting",ingredients={{type="item", name="Iron_dense_plate", amount=1},{type="item", name="Iron_rivet", amount=16},},results={{type="item", name="Iron_riveted_dense_plate", amount=1,probability =1},},}
makeRecipe{name="Iron_riveted_plate",energy_required=5,category="crafting",ingredients={{type="item", name="Iron_plate", amount=1},{type="item", name="Iron_rivet", amount=8},},results={{type="item", name="Iron_riveted_plate", amount=1,probability =1},},}
makeRecipe{name="Iron_tools",energy_required=12,category="crafting",ingredients={{type="item", name="Stick", amount=1},{type="item", name="Iron_rod", amount=1},},results={{type="item", name="Iron_tools", amount=1,probability =1},},}
makeRecipe{name="Iron_underground_pipe",energy_required=4,category="crafting",ingredients={{type="item", name="Iron_pipe", amount=24},},results={{type="item", name="Iron_underground_pipe", amount=2,probability =1},},}
makeRecipe{name="LV_electric_motor",energy_required=4,category="Assembling_machine",ingredients={{type="item", name="Electronics_board", amount=1},{type="item", name="LV_electric_rotor", amount=1},{type="item", name="Steel_plate", amount=5},{type="item", name="LV_electric_motor_hull", amount=1},},results={{type="item", name="LV_electric_motor", amount=1,probability =1},},}
makeRecipe{name="LV_electric_motor_hull",energy_required=5,category="Assembling_machine",ingredients={{type="item", name="Steel_plate", amount=6},{type="item", name="Copper_wire", amount=30},{type="item", name="Steel_bearing", amount=2},{type="fluid", name="Lubricant", amount=1},},results={{type="item", name="LV_electric_motor_hull", amount=1,probability =1},},}
makeRecipe{name="LV_electric_rotor",energy_required=3,category="Assembling_machine",ingredients={{type="item", name="Steel_plate", amount=2},{type="item", name="Steel_rod", amount=1},},results={{type="item", name="LV_electric_rotor", amount=1,probability =1},},}
makeRecipe{name="Laboratory_t1",energy_required=35,category="crafting",ingredients={{type="item", name="HV_transformer", amount=2},{type="item", name="Factory_frame", amount=1},{type="item", name="Inserter_t3", amount=5},{type="item", name="LV_electric_engine", amount=5},{type="item", name="Glass", amount=30},{type="item", name="Battery", amount=15},},results={{type="item", name="Laboratory_t1", amount=1,probability =1},},}
makeRecipe{name="Lamp",energy_required=1,category="Assembling_machine",ingredients={{type="item", name="Tungsten_wire", amount=1},{type="item", name="Glass", amount=1},},results={{type="item", name="Lamp", amount=1,probability =1},},}
makeRecipe{name="Large_Li-ion_battery",energy_required=4,category="Assembling_machine",ingredients={{type="item", name="Zinc_foil", amount=2},{type="item", name="Li-ion_battery", amount=20},{type="item", name="Aluminium_plate", amount=4},},results={{type="item", name="Large_Li-ion_battery", amount=1,probability =1},},}
makeRecipe{name="Large_diesel_engine",energy_required=20,category="Assembling_machine",ingredients={{type="item", name="Large_engine_block", amount=1},{type="fluid", name="Lubricant", amount=16},{type="item", name="Large_piston", amount=16},},results={{type="item", name="Large_diesel_engine", amount=1,probability =1},},}
makeRecipe{name="Large_engine_block",energy_required=30,category="Assembling_machine",ingredients={{type="item", name="Steel_dense_plate", amount=26},{type="item", name="Steel_billet", amount=60},{type="item", name="Steel_dense_pipe", amount=16},},results={{type="item", name="Large_engine_block", amount=1,probability =1},},}
makeRecipe{name="Large_factory_frame",energy_required=8,category="Assembling_machine",ingredients={{type="item", name="Factory_frame", amount=10},},results={{type="item", name="Large_factory_frame", amount=1,probability =1},},}
makeRecipe{name="Large_gearbox",energy_required=50,category="Assembling_machine",ingredients={{type="item", name="Steel_dense_plate", amount=60},{type="item", name="Steel_gear", amount=40},{type="item", name="Steel_bearing", amount=40},{type="item", name="Steel_billet", amount=6},},results={{type="item", name="Large_gearbox", amount=1,probability =1},},}
makeRecipe{name="Large_piston",energy_required=4,category="Assembling_machine",ingredients={{type="item", name="Steel_pipe", amount=1},{type="item", name="Steel_billet", amount=2},{type="item", name="Steel_dense_plate", amount=1},},results={{type="item", name="Large_piston", amount=1,probability =1},},}
makeRecipe{name="Large_piston",energy_required=8,category="Assembling_machine",ingredients={{type="item", name="Steel_pipe", amount=1},{type="item", name="Steel_billet", amount=2},{type="item", name="Steel_dense_plate", amount=1},},results={{type="item", name="Large_piston", amount=1,probability =1},},}
makeRecipe{name="Laser_frame",energy_required=7,category="Assembling_machine",ingredients={{type="item", name="HR-mirror", amount=2},{type="item", name="Ruby_crystal_tube", amount=1},{type="item", name="Flash_tube_lamp", amount=2},{type="item", name="Aluminium_plate", amount=2},},results={{type="item", name="Laser_frame", amount=1,probability =1},},}
makeRecipe{name="Lead_billet",energy_required=2.4,category="Furnace",ingredients={{type="item", name="Lead_bullion", amount=1},},results={{type="item", name="Lead_billet", amount=1,probability =1},{type="item", name="Silver_ingot", amount=1,probability =0.02},},}
makeRecipe{name="Lead_bullion",energy_required=1.5,category="Flash_furnace",ingredients={{type="item", name="Lead_concentrate", amount=3},},results={{type="item", name="Lead_bullion", amount=1,probability =1},{type="item", name="Slag", amount=1,probability =0.2},{type="fluid", name="Sulfur_dioxide", amount=1,probability =0.9},},}
makeRecipe{name="Lead_dense_pipe",energy_required=3,category="crafting",ingredients={{type="item", name="Lead_dense_plate", amount=2},},results={{type="item", name="Lead_dense_pipe", amount=1,probability =1},},}
makeRecipe{name="Lead_dust",energy_required=2,category="Grinding_mill",ingredients={{type="item", name="Lead_scrap", amount=1},},results={{type="item", name="Lead_dust", amount=1,probability =1},},}
makeRecipe{name="Lead_free_solder",energy_required=6,category="Assembling_machine",ingredients={{type="item", name="Lead_free_solder_ingot", amount=1},},results={{type="item", name="Lead_free_solder", amount=8,probability =1},},}
makeRecipe{name="Lead_free_solder_ingot",energy_required=10,category="Furnace",ingredients={{type="item", name="Tin_billet", amount=7},{type="item", name="Copper_billet", amount=1},{type="item", name="Silver_ingot", amount=2},},results={{type="item", name="Lead_free_solder_ingot", amount=10,probability =1},},}
makeRecipe{name="Lead_oxide",energy_required=1.5,category="Furnace",ingredients={{type="item", name="Lead_dust", amount=1},},results={{type="item", name="Lead_oxide", amount=1,probability =1},},}
makeRecipe{name="Lead_pipe",energy_required=3,category="crafting",ingredients={{type="item", name="Lead_plate", amount=2},},results={{type="item", name="Lead_pipe", amount=1,probability =1},},}
makeRecipe{name="Lead_scrap",energy_required=2,category="Crusher",ingredients={{type="item", name="Lead_billet", amount=1},},results={{type="item", name="Lead_scrap", amount=1,probability =1},},}
makeRecipe{name="Lead_solder",energy_required=6,category="Assembling_machine",ingredients={{type="item", name="Lead_solder_ingot", amount=1},},results={{type="item", name="Lead_solder", amount=8,probability =1},},}
makeRecipe{name="Lead_solder_ingot",energy_required=6,category="Furnace",ingredients={{type="item", name="Tin_billet", amount=6},{type="item", name="Lead_billet", amount=4},},results={{type="item", name="Lead_solder_ingot", amount=10,probability =1},},}
makeRecipe{name="Li-ion_battery",energy_required=3,category="Assembling_machine",ingredients={{type="item", name="ABS-plastic_pellets", amount=2},{type="item", name="Li-ion_battery_cell", amount=8},{type="item", name="Circuit_board", amount=1},},results={{type="item", name="Li-ion_battery", amount=1,probability =1},},}
makeRecipe{name="Li-ion_battery_cell",energy_required=2,category="Assembling_machine",ingredients={{type="item", name="Lithium_cobalt_oxide", amount=1},{type="item", name="Lithium_perchlorate", amount=1},{type="item", name="Zinc_foil", amount=2},{type="item", name="Graphite_dust", amount=1},},results={{type="item", name="Li-ion_battery_cell", amount=1,probability =1},},}
makeRecipe{name="Light_oil",energy_required=3,category="Cracking_plant",fluidIcon=true,ingredients={{type="fluid", name="Heavy_oil", amount=1},{type="fluid", name="Water_distilled", amount=1},},results={{type="fluid", name="Light_oil", amount=1.5,probability =1},},}
makeRecipe{name="Limestone_crushed",energy_required=2,category="Crusher",ingredients={{type="item", name="Limestone_Quarried", amount=1},},results={{type="item", name="Limestone_crushed", amount=1,probability =1},},}
makeRecipe{name="Lithium",energy_required=8,category="Electrolyzer",ingredients={{type="item", name="Lithium_chloride", amount=2},},results={{type="item", name="Lithium", amount=2,probability =1},{type="fluid", name="Chlorine", amount=1,probability =1},},}
makeRecipe{name="Lithium_carbonate",energy_required=1,category="Chemical_plant",ingredients={{type="item", name="Sodium_carbonate", amount=1},{type="item", name="Lithium_chloride", amount=1},},results={{type="item", name="Lithium_carbonate", amount=1,probability =1},{type="item", name="Salt", amount=2,probability =1},},}
makeRecipe{name="Lithium_cobalt_oxide",energy_required=4,category="Chemical_plant",ingredients={{type="item", name="Cobalt_oxide", amount=1},{type="item", name="Lithium", amount=1},},results={{type="item", name="Lithium_cobalt_oxide", amount=1,probability =1},},}
makeRecipe{name="Lithium_perchlorate",energy_required=2,category="Electrolyzer",ingredients={{type="item", name="Lithium_chloride", amount=1},{type="item", name="Sodium_perchlorate", amount=1},},results={{type="item", name="Lithium_perchlorate", amount=1,probability =1},},}
makeRecipe{name="Locomotive_firebox",energy_required=35,category="Assembling_machine",ingredients={{type="item", name="Copper_dense_plate", amount=40},{type="item", name="Copper_dense_pipe", amount=26},{type="item", name="Steel_riveted_dense_plate", amount=48},},results={{type="item", name="Locomotive_firebox", amount=1,probability =1},},}
makeRecipe{name="Locomotive_hull_part",energy_required=45,category="Assembling_machine",ingredients={{type="item", name="Steel_riveted_dense_plate", amount=40},{type="item", name="Steel_billet", amount=45},{type="item", name="Copper_dense_plate", amount=5},{type="item", name="Steel_gear", amount=10},},results={{type="item", name="Locomotive_hull_part", amount=1,probability =1},},}
makeRecipe{name="Locomotive_piston",energy_required=25,category="Assembling_machine",ingredients={{type="item", name="Steel_dense_plate", amount=21},{type="item", name="Steel_billet", amount=30},{type="item", name="Steel_dense_pipe", amount=8},},results={{type="item", name="Locomotive_piston", amount=1,probability =1},},}
makeRecipe{name="Locomotive_t1",energy_required=45,category="Assembling_machine",ingredients={{type="item", name="Crude_locomotive_firebox", amount=1},{type="item", name="Crude_locomotive_piston", amount=3},{type="item", name="Crude_locomotive_hull", amount=1},},results={{type="item", name="Locomotive_t1", amount=1,probability =1},},}
makeRecipe{name="Locomotive_t2",energy_required=50,category="Assembling_machine",ingredients={{type="item", name="Locomotive_fire_box", amount=1},{type="item", name="Locomotive_piston", amount=3},{type="item", name="Locomotive_hull_part", amount=3},},results={{type="item", name="Locomotive_t2", amount=1,probability =1},},}
makeRecipe{name="Logistic_robot",energy_required=6,category="Assembling_machine",ingredients={{type="item", name="Li-ion_battery", amount=2},{type="item", name="Drone_frame", amount=1},{type="item", name="LV_electric_motor", amount=4},{type="item", name="Sensor", amount=5},},results={{type="item", name="Logistic_robot", amount=1,probability =1},},}
makeRecipe{name="Lubricant",energy_required=4,category="Chemical_plant",fluidIcon=true,ingredients={{type="fluid", name="Heavy_oil", amount=1},},results={{type="fluid", name="Lubricant", amount=1,probability =1},},}
makeRecipe{name="MNT",energy_required=1.5,category="Chemical_plant",fluidIcon=true,ingredients={{type="fluid", name="Toluene", amount=1},{type="fluid", name="Nitric_sulfuric_acid_mixture", amount=1},},results={{type="fluid", name="MNT", amount=1,probability =1},},}
makeRecipe{name="Magnesium",energy_required=25,category="Electric_arc_furnace",ingredients={{type="item", name="Magnesium_oxide", amount=1},{type="item", name="Ferrosilicon", amount=1},},results={{type="item", name="Magnesium", amount=1,probability =1},{type="item", name="Pig_iron", amount=2,probability =1},{type="item", name="Silicon_dioxide", amount=1,probability =1},},}
makeRecipe{name="Magnesium",energy_required=45,category="Electrolyzer",ingredients={{type="item", name="Magnesium_chloride", amount=1},},results={{type="item", name="Magnesium", amount=1,probability =1},{type="fluid", name="Chlorine", amount=1,probability =1},},}
makeRecipe{name="Magnesium_ball",energy_required=2,category="Assembling_machine",ingredients={{type="item", name="Magnesium_rod", amount=1},},results={{type="item", name="Magnesium_ball", amount=12,probability =1},},}
makeRecipe{name="Magnesium_bearing",energy_required=2,category="Assembling_machine",ingredients={{type="item", name="Magnesium_ball", amount=8},{type="item", name="Magnesium_bearing_hull", amount=1},{type="fluid", name="Lubricant", amount=1},},results={{type="item", name="Magnesium_bearing", amount=1,probability =1},},}
makeRecipe{name="Magnesium_bearing_hull",energy_required=2,category="Assembling_machine",ingredients={{type="item", name="Magnesium_plate", amount=1},},results={{type="item", name="Magnesium_bearing_hull", amount=2,probability =1},},}
makeRecipe{name="Magnesium_chloride",energy_required=4,category="Chemical_plant",ingredients={{type="item", name="Magnesium_hydroxide", amount=1},{type="fluid", name="Hydrochloric_acid", amount=2},},results={{type="item", name="Magnesium_chloride", amount=1,probability =1},{type="fluid", name="Water", amount=2,probability =1},},}
makeRecipe{name="Magnesium_hydroxide",energy_required=15,category="Electrolyzer",ingredients={{type="item", name="Calcium_oxide", amount=1},{type="fluid", name="Water", amount=10},{type="fluid", name="Brine", amount=10},},results={{type="item", name="Magnesium_hydroxide", amount=1,probability =0.5},},}
makeRecipe{name="Magnesium_oxide",energy_required=6,category="Furnace",ingredients={{type="item", name="Magnesium_hydroxide", amount=1},},results={{type="item", name="Magnesium_oxide", amount=1,probability =1},},}
makeRecipe{name="Magnetite_crushed_ore",energy_required=2,category="Crusher",ingredients={{type="item", name="Magnetite_ore", amount=1},},results={{type="item", name="Magnetite_crushed_ore", amount=1,probability =1},},}
makeRecipe{name="Magnetron",energy_required=6,category="Assembling_machine",ingredients={{type="item", name="Steel_plate", amount=3},{type="item", name="Steel_rod", amount=1},{type="item", name="Copper_plate", amount=2},{type="item", name="Copper_wire", amount=6},},results={{type="item", name="Magnetron", amount=1,probability =1},},}
makeRecipe{name="Mining_drill_t1",energy_required=12,category="crafting",ingredients={{type="item", name="Drill_frame_basic", amount=1},{type="item", name="Basic_electric_motor", amount=3},{type="item", name="Transport_belt_t2", amount=3},{type="item", name="Iron_drill_bit", amount=12},},results={{type="item", name="Mining_drill_t1", amount=1,probability =1},},}
makeRecipe{name="Mining_drill_t2",energy_required=15,category="crafting",ingredients={{type="item", name="Drill_frame", amount=1},{type="item", name="Basic_electric_motor", amount=3},{type="item", name="Transport_belt_t3", amount=3},{type="item", name="Steel_drill_bit", amount=12},},results={{type="item", name="Mining_drill_t2", amount=1,probability =1},},}
makeRecipe{name="Mining_drill_t3",energy_required=10,category="Assembling_machine",ingredients={{type="item", name="Circuit_board", amount=4},{type="item", name="Drill_frame", amount=1},{type="item", name="LV_electric_motor", amount=3},{type="item", name="Tungsten_carbide_drill_bit", amount=12},{type="item", name="Transport_belt_t4", amount=3},},results={{type="item", name="Mining_drill_t3", amount=1,probability =1},},}
makeRecipe{name="Nail",energy_required=3,category="crafting",ingredients={{type="item", name="Iron_wire", amount=1},},results={{type="item", name="Nail", amount=12,probability =1},},}
makeRecipe{name="Nail",energy_required=3,category="crafting",ingredients={{type="item", name="Steel_wire", amount=1},},results={{type="item", name="Nail", amount=12,probability =1},},}
makeRecipe{name="Napalm",energy_required=2,category="Chemical_plant",fluidIcon=true,ingredients={{type="item", name="Polystyrene", amount=1},{type="fluid", name="Diesel", amount=1},},results={{type="fluid", name="Napalm", amount=1,probability =1},},}
makeRecipe{name="Nichrome",energy_required=12,category="Furnace",ingredients={{type="item", name="Ferrochrome", amount=2},{type="item", name="Nickel_billet", amount=3},},results={{type="item", name="Nichrome", amount=5,probability =1},},}
makeRecipe{name="Nickel_billet",energy_required=2,category="Electrolyzer",ingredients={{type="item", name="Nickel_cathode", amount=1},{type="fluid", name="Hydrogen", amount=4},},results={{type="item", name="Nickel_billet", amount=1,probability =1},},}
makeRecipe{name="Nickel_cathode",energy_required=1,category="Chemical_plant",ingredients={{type="item", name="Nickel_dust", amount=1},{type="fluid", name="Sulfuric_acid", amount=1},},results={{type="item", name="Nickel_cathode", amount=1,probability =1},{type="item", name="Cobalt_oxide", amount=1,probability =1},},}
makeRecipe{name="Nickel_dust",energy_required=3.5,category="Flash_furnace",ingredients={{type="item", name="Nickel_concentrate", amount=1},{type="fluid", name="Oxygen", amount=1},},results={{type="item", name="Nickel_dust", amount=1,probability =1},{type="item", name="Slag", amount=1,probability =0.2},{type="fluid", name="Sulfur_dioxide", amount=1,probability =0.9},},}
makeRecipe{name="Nitric_acid",energy_required=1,category="Chemical_plant",fluidIcon=true,ingredients={{type="fluid", name="Water_distilled", amount=1},{type="fluid", name="Nitrogen_dioxide", amount=3},},results={{type="fluid", name="Nitric_acid", amount=2,probability =1},{type="item", name="Nitric_oxide", amount=1,probability =1},},}
makeRecipe{name="Nitric_acid",energy_required=3,category="Chemical_plant",fluidIcon=true,ingredients={{type="item", name="Potassium_nitrate", amount=2},{type="fluid", name="Sulfuric_acid", amount=1},},results={{type="fluid", name="Nitric_acid", amount=2,probability =1},{type="item", name="Potassium_sulfate", amount=1,probability =1},},}
makeRecipe{name="Nitric_oxide",energy_required=8,category="Chemical_plant",ingredients={{type="fluid", name="Ammonia", amount=4},{type="fluid", name="Oxygen", amount=5},},results={{type="item", name="Nitric_oxide", amount=4,probability =1},{type="fluid", name="Water_distilled", amount=6,probability =1},},}
makeRecipe{name="Nitrogen",energy_required=2,category="Cryogenic_distillation_plant",fluidIcon=true,ingredients={{type="fluid", name="Air", amount=1},},results={{type="fluid", name="Nitrogen", amount=1,probability =0.78},{type="fluid", name="Oxygen", amount=1,probability =0.21},{type="fluid", name="Argon", amount=1,probability =0.01},},}
makeRecipe{name="Nitrogen",energy_required=4,category="Chemical_plant",fluidIcon=true,ingredients={{type="item", name="Molecular sieve", amount=1},{type="item", name="Compressed_air", amount=10},},results={{type="fluid", name="Nitrogen", amount=7,probability =1},{type="fluid", name="Oxygen", amount=3,probability =1},},}
makeRecipe{name="Nitrogen_dioxide",energy_required=1.5,category="Chemical_plant",fluidIcon=true,ingredients={{type="item", name="Nitric_oxide", amount=2},{type="fluid", name="Oxygen", amount=1},},results={{type="fluid", name="Nitrogen_dioxide", amount=2,probability =1},},}
makeRecipe{name="Nuclear_fuel_bundle",energy_required=2.5,category="Assembling_machine",ingredients={{type="item", name="Nuclear_fuel_rod", amount=19},},results={{type="item", name="Nuclear_fuel_bundle", amount=1,probability =1},},}
makeRecipe{name="Nuclear_fuel_processing_plant_t1",energy_required=60,category="crafting",ingredients={{type="item", name="Compressor_t2", amount=1},{type="item", name="Large_factory_frame", amount=1},{type="item", name="Gas_centrifuge", amount=100},{type="item", name="Stainless_steel_pipe", amount=20},{type="item", name="Computer", amount=30},},results={{type="item", name="Nuclear_fuel_processing_plant_t1", amount=1,probability =1},},}
makeRecipe{name="Nuclear_fuel_rod",energy_required=1,category="Assembling_machine",ingredients={{type="item", name="Enriched_uranium_pellet", amount=10},{type="item", name="Zirconium_tube", amount=1},},results={{type="item", name="Nuclear_fuel_rod", amount=1,probability =1},},}
makeRecipe{name="Nuclear_reactor",energy_required=120,category="crafting",ingredients={{type="item", name="Sensor", amount=40},{type="item", name="Large_factory_frame", amount=1},{type="item", name="Stainless_steel_pipe", amount=35},{type="item", name="Nuclear_reactor", amount=1},},results={{type="item", name="Nuclear_reactor", amount=1,probability =1},},}
makeRecipe{name="Nuclear_reactor_core",energy_required=30,category="crafting",ingredients={{type="item", name="Lead_dense_plate", amount=60},{type="item", name="Factory_frame", amount=12},{type="item", name="Silver_rod", amount=50},{type="item", name="Inconel_dense_plate", amount=30},},results={{type="item", name="Nuclear_reactor_core", amount=1,probability =1},},}
makeRecipe{name="Offshore_pump_t1",energy_required=15,category="Assembling_machine",ingredients={{type="item", name="Basic_electronics_board", amount=4},{type="item", name="Pump", amount=4},{type="item", name="Brass_pipe", amount=8},},results={{type="item", name="Offshore_pump_t1", amount=1,probability =1},},}
makeRecipe{name="Offshore_pump_t2",energy_required=15,category="Assembling_machine",ingredients={{type="item", name="Copper_pipe", amount=6},{type="item", name="Iron_riveted_plate", amount=12},{type="item", name="Iron_bearing", amount=3},{type="item", name="Basic_electric_motor", amount=4},{type="item", name="Copper_plate", amount=4},},results={{type="item", name="Offshore_pump_t2", amount=1,probability =1},},}
makeRecipe{name="Offshore_pump_t3",energy_required=10,category="Assembling_machine",ingredients={{type="item", name="Circuit_board", amount=4},{type="item", name="Pump_t2", amount=4},{type="item", name="Stainless_steel_pipe", amount=8},},results={{type="item", name="Offshore_pump_t3", amount=1,probability =1},},}
makeRecipe{name="Oleum",energy_required=1,category="Chemical_plant",fluidIcon=true,ingredients={{type="fluid", name="Sulfur_trioxide", amount=1},{type="fluid", name="Sulfuric_acid", amount=1},},results={{type="fluid", name="Oleum", amount=1,probability =1},},}
makeRecipe{name="Optical_fiber",energy_required=15,category="Assembling_machine",ingredients={{type="item", name="Purified_glass_tube", amount=1},},results={{type="item", name="Optical_fiber", amount=10,probability =1},},}
makeRecipe{name="Ore_washer_t1",energy_required=15,category="crafting",ingredients={{type="item", name="Basic_electric_motor", amount=2},{type="item", name="Wooden_tank_2x2", amount=4},{type="item", name="Iron_riveted_plate", amount=6},{type="item", name="Transport_belt_t2", amount=4},},results={{type="item", name="Ore_washer_t1", amount=1,probability =1},},}
makeRecipe{name="Ore_washer_t2",energy_required=15,category="crafting",ingredients={{type="item", name="Basic_electric_motor", amount=6},{type="item", name="Transport_belt_t3", amount=6},{type="item", name="Stainless_steel_pipe", amount=4},{type="item", name="Stainless_steel_tank_4x4", amount=1},{type="item", name="Compressor_t1", amount=1},},results={{type="item", name="Ore_washer_t2", amount=1,probability =1},},}
makeRecipe{name="Ore_washer_t3",energy_required=10,category="crafting",ingredients={{type="item", name="Circuit_board", amount=5},{type="item", name="Transport_belt_t4", amount=6},{type="item", name="Ore_washer_t2", amount=1},{type="item", name="Compressor_t2", amount=1},},results={{type="item", name="Ore_washer_t3", amount=1,probability =1},},}
makeRecipe{name="Oxide_glass",energy_required=15,category="Furnace",ingredients={{type="item", name="Alumina", amount=9},{type="item", name="Germanium_dioxide", amount=1},},results={{type="item", name="Oxide_glass", amount=10,probability =1},},}
makeRecipe{name="Oxygen",energy_required=8,category="Electrolyzer",fluidIcon=true,ingredients={{type="fluid", name="Water_distilled", amount=2},{type="fluid", name="Water", amount=2},},results={{type="fluid", name="Oxygen", amount=1,probability =1},{type="fluid", name="Hydrogen", amount=2,probability =1},},}
makeRecipe{name="PAN_filament",energy_required=5,category="Chemical_plant",ingredients={{type="fluid", name="Acrylonitrile", amount=1},},results={{type="item", name="PAN_filament", amount=1,probability =1},},}
makeRecipe{name="Passive_provider_chest",energy_required=3,category="crafting",ingredients={{type="item", name="Computer", amount=2},{type="item", name="Titanium_chest", amount=1},{type="item", name="Sensor", amount=1},},results={{type="item", name="Passive_provider_chest", amount=1,probability =1},},}
makeRecipe{name="Pentlandite_crushed_ore",energy_required=2,category="Crusher",ingredients={{type="item", name="Pentlandite_ore", amount=1},},results={{type="item", name="Pentlandite_crushed_ore", amount=1,probability =1},},}
makeRecipe{name="Petroleum_gas",energy_required=10,category="Refinery",fluidIcon=true,ingredients={{type="fluid", name="Crude_oil", amount=10},},results={{type="fluid", name="Petroleum_gas", amount=4,probability =1},{type="fluid", name="Light_oil", amount=4,probability =1},{type="fluid", name="Heavy_oil", amount=2,probability =1},},}
makeRecipe{name="Petroleum_gas",energy_required=2,category="Cracking_plant",fluidIcon=true,ingredients={{type="fluid", name="Light_oil", amount=1},{type="fluid", name="Water_distilled", amount=1},},results={{type="fluid", name="Petroleum_gas", amount=1.5,probability =1},},}
makeRecipe{name="Petroleum_jelly",energy_required=4,category="Chemical_plant",ingredients={{type="fluid", name="Heavy_oil", amount=1},},results={{type="item", name="Petroleum_jelly", amount=1,probability =1},},}
makeRecipe{name="Pig_iron",energy_required=10,category="Blast_furnace",ingredients={{type="item", name="Magnetite_concentrate", amount=10},{type="item", name="Coal_coke", amount=3},{type="item", name="Limestone_crushed", amount=2},},results={{type="item", name="Pig_iron", amount=7,probability =1},{type="item", name="Slag", amount=3,probability =1},{type="fluid", name="Carbon_monoxide", amount=2,probability =1},},}
makeRecipe{name="Plank",energy_required=2,category="crafting",ingredients={{type="item", name="Raw_wood", amount=1},},results={{type="item", name="Plank", amount=4,probability =1},},}
makeRecipe{name="Plaster",energy_required=0.8,category="Furnace",ingredients={{type="item", name="Calcium_sulfate", amount=1},},results={{type="item", name="Plaster", amount=1,probability =1},},}
makeRecipe{name="Plastic_pipe",energy_required=2,category="Assembling_machine",ingredients={{type="item", name="Plastic_pellets", amount=4},},results={{type="item", name="Plastic_pipe", amount=1,probability =1},},}
makeRecipe{name="Polystyrene",energy_required=5,category="Chemical_plant",ingredients={{type="fluid", name="Styrene", amount=1},},results={{type="item", name="Polystyrene", amount=1,probability =1},},}
makeRecipe{name="Power_switch",energy_required=2,category="Assembling_machine",ingredients={{type="item", name="ABS-plastic_pellets", amount=2},{type="item", name="Computer", amount=1},},results={{type="item", name="Power_switch", amount=1,probability =1},},}
makeRecipe{name="Pump_jack_t1",energy_required=10,category="crafting",ingredients={{type="item", name="Basic_electric_motor", amount=2},{type="item", name="Iron_piston", amount=1},{type="item", name="Iron_riveted_plate", amount=6},{type="item", name="Iron_pipe", amount=12},},results={{type="item", name="Pump_jack_t1", amount=1,probability =1},},}
makeRecipe{name="Pump_t1",energy_required=15,category="Assembling_machine",ingredients={{type="item", name="Basic_electric_motor", amount=2},{type="item", name="Steel_bearing", amount=2},{type="item", name="Brass_pipe", amount=2},{type="item", name="Brass_plate", amount=4},},results={{type="item", name="Pump_t1", amount=1,probability =1},},}
makeRecipe{name="Pump_t2",energy_required=15,category="Assembling_machine",ingredients={{type="item", name="Copper_pipe", amount=2},{type="item", name="Iron_riveted_plate", amount=4},{type="item", name="Iron_bearing", amount=1},{type="item", name="Basic_electric_motor", amount=1},{type="item", name="Copper_plate", amount=2},},results={{type="item", name="Pump_t2", amount=1,probability =1},},}
makeRecipe{name="Pump_t3",energy_required=15,category="Assembling_machine",ingredients={{type="item", name="HV_electric_motor", amount=1},{type="item", name="Steel_bearing", amount=2},{type="item", name="Stainless_steel_pipe", amount=2},{type="item", name="Cooling_system", amount=2},{type="item", name="Stainless_steel_plate", amount=2},},results={{type="item", name="Pump_t3", amount=1,probability =1},},}
makeRecipe{name="Pumpjack_t2",energy_required=15,category="Assembling_machine",ingredients={{type="item", name="Basic_electric_motor", amount=8},{type="item", name="Large_piston", amount=1},{type="item", name="Steel_pipe", amount=20},{type="item", name="Steel_dense_plate", amount=4},{type="item", name="Steel_chain", amount=20},},results={{type="item", name="Pumpjack_t2", amount=1,probability =1},},}
makeRecipe{name="Pumpjack_t3",energy_required=10,category="Assembling_machine",ingredients={{type="item", name="HV_electric_motor", amount=2},{type="item", name="Stainless_steel_pipe", amount=20},{type="item", name="Pumpjack_t1", amount=1},{type="item", name="Circuit_board", amount=4},{type="item", name="Cooling_system", amount=4},},results={{type="item", name="Pumpjack_t3", amount=1,probability =1},},}
makeRecipe{name="Purified_glass_tube",energy_required=2,category="Chemical_plant",ingredients={{type="item", name="Glass_tube", amount=1},{type="fluid", name="Hydrofluoric_acid", amount=1},},results={{type="item", name="Purified_glass_tube", amount=1,probability =1},},}
makeRecipe{name="Quartz_crushed_rock",energy_required=2,category="Crusher",ingredients={{type="item", name="Quartz_rock", amount=1},},results={{type="item", name="Quartz_crushed_rock", amount=1,probability =1},},}
makeRecipe{name="Radar_antenna",energy_required=10,category="Assembling_machine",ingredients={{type="item", name="Steel_rod", amount=60},{type="item", name="HV_electric_motor", amount=1},{type="item", name="Steel_plate", amount=10},},results={{type="item", name="Radar_antenna", amount=1,probability =1},},}
makeRecipe{name="Radar_t1",energy_required=15,category="crafting",ingredients={{type="item", name="Magnetron", amount=6},{type="item", name="HV_transformer", amount=1},{type="item", name="Radar_antenna", amount=1},{type="item", name="Electronics_board", amount=30},},results={{type="item", name="Radar_t1", amount=1,probability =1},},}
makeRecipe{name="Rail_chain_signal",energy_required=2,category="crafting",ingredients={{type="item", name="Rail_signal", amount=1},{type="item", name="Circuit_board", amount=2},},results={{type="item", name="Rail_chain_signal", amount=1,probability =1},},}
makeRecipe{name="Rail_signal",energy_required=4,category="crafting",ingredients={{type="item", name="Lamp", amount=3},{type="item", name="Steel_rod", amount=2},{type="item", name="Circuit_board", amount=1},},results={{type="item", name="Rail_signal", amount=1,probability =1},},}
makeRecipe{name="Raw_wood",energy_required=240,category="Farm",ingredients={{type="item", name="Fertilizer", amount=1},{type="item", name="Tree_seeds", amount=1},{type="fluid", name="Water", amount=40},},results={{type="item", name="Raw_wood", amount=10,probability =1},{type="item", name="Tree_seeds", amount=5,probability =1},},}
makeRecipe{name="Red_wire",energy_required=1,category="crafting",ingredients={{type="item", name="Data_cable", amount=1},},results={{type="item", name="Red_wire", amount=1,probability =1},},}
makeRecipe{name="Refinery_t1",energy_required=45,category="crafting",ingredients={{type="item", name="Distillery_t2", amount=2},{type="item", name="Large_factory_frame", amount=1},{type="item", name="Steel_pipe", amount=20},{type="item", name="Transformer", amount=8},},results={{type="item", name="Refinery_t1", amount=1,probability =1},},}
makeRecipe{name="Refinery_t2",energy_required=30,category="crafting",ingredients={{type="item", name="Refinery_t1", amount=1},{type="item", name="Distillery_t3", amount=2},{type="item", name="Stainless_steel_pipe", amount=40},{type="item", name="Circuit_board", amount=30},{type="item", name="HV_transformer", amount=8},},results={{type="item", name="Refinery_t2", amount=1,probability =1},},}
makeRecipe{name="Refractory_brick",energy_required=3,category="Furnace",ingredients={{type="item", name="Clay", amount=1},{type="item", name="Chromite_ore", amount=1},},results={{type="item", name="Refractory_brick", amount=1,probability =1},},}
makeRecipe{name="Repair_kit",energy_required=2,category="Assembling_machine",ingredients={{type="item", name="Cotton", amount=2},{type="item", name="Resin", amount=3},{type="item", name="Rubber", amount=2},},results={{type="item", name="Repair_kit", amount=1,probability =1},},}
makeRecipe{name="Requester_chest",energy_required=3,category="crafting",ingredients={{type="item", name="Computer", amount=2},{type="item", name="Titanium_chest", amount=1},{type="item", name="Sensor", amount=1},},results={{type="item", name="Requester_chest", amount=1,probability =1},},}
makeRecipe{name="Resin",energy_required=6,category="Chemical_plant",ingredients={{type="fluid", name="Glycerol", amount=1},{type="fluid", name="Hydrogen_chloride", amount=1},},results={{type="item", name="Resin", amount=1,probability =1},},}
makeRecipe{name="Resistor",energy_required=4,category="Assembling_machine",ingredients={{type="item", name="Tinned_copper_wire", amount=1},{type="item", name="Clay", amount=1},{type="item", name="Graphite_dust", amount=1},},results={{type="item", name="Resistor", amount=6,probability =1},},}
makeRecipe{name="Roboport_t1",energy_required=30,category="crafting",ingredients={{type="item", name="Copper_wire", amount=50},{type="item", name="Large_Li-ion_battery", amount=4},{type="item", name="Factory_frame", amount=1},{type="item", name="Inserter_t5", amount=2},{type="item", name="Sensor", amount=20},},results={{type="item", name="Roboport_t1", amount=1,probability =1},},}
makeRecipe{name="Rolling_machine_t1",energy_required=20,category="crafting",ingredients={{type="item", name="Furnace_t1", amount=1},{type="item", name="Iron_billet", amount=4},},results={{type="item", name="Rolling_machine_t1", amount=1,probability =1},},}
makeRecipe{name="Rolling_machine_t2",energy_required=15,category="crafting",ingredients={{type="item", name="Rolling_machine_t1", amount=1},{type="item", name="Basic_electric_motor", amount=2},{type="item", name="Transformer", amount=1},{type="item", name="Transport_belt_t2", amount=2},},results={{type="item", name="Rolling_machine_t2", amount=1,probability =1},},}
makeRecipe{name="Rolling_machine_t3",energy_required=15,category="crafting",ingredients={{type="item", name="Steel_bearing", amount=8},{type="item", name="Transport_belt_t3", amount=2},{type="item", name="Basic_electric_motor", amount=8},{type="item", name="Steel_billet", amount=8},{type="item", name="Transformer", amount=2},},results={{type="item", name="Rolling_machine_t3", amount=1,probability =1},},}
makeRecipe{name="Rolling_machine_t4",energy_required=10,category="crafting",ingredients={{type="item", name="Transport_belt_t4", amount=2},{type="item", name="Rolling_machine_t3", amount=1},{type="item", name="LV_electric_motor", amount=8},},results={{type="item", name="Rolling_machine_t4", amount=1,probability =1},},}
makeRecipe{name="Rubber",energy_required=8,category="Chemical_plant",ingredients={{type="fluid", name="Styrene", amount=1},{type="fluid", name="Butadiene", amount=1},},results={{type="item", name="Rubber", amount=1,probability =1},},}
makeRecipe{name="Ruby_crystal_tube",energy_required=30,category="Electric_chemical_furnace",ingredients={{type="fluid", name="Hydrogen", amount=6},{type="item", name="Alumina", amount=10},{type="fluid", name="Oxygen", amount=6},{type="item", name="Chromium_oxide", amount=1},},results={{type="item", name="Ruby_crystal_tube", amount=1,probability =1},{type="item", name="Chromium_oxide", amount=1,probability =0.8},},}
makeRecipe{name="Rutile_crushed_ore",energy_required=2,category="Crusher",ingredients={{type="item", name="Rutile_ore", amount=1},},results={{type="item", name="Rutile_crushed_ore", amount=1,probability =1},},}
makeRecipe{name="Rutile_ore_sand",energy_required=2,category="Grinding_mill",ingredients={{type="item", name="Rutile_crushed_ore", amount=1},},results={{type="item", name="Rutile_ore_sand", amount=1,probability =1},},}
makeRecipe{name="Salt",energy_required=15,category="Distillation",ingredients={{type="fluid", name="Brine", amount=10},},results={{type="item", name="Salt", amount=1,probability =0.5},{type="item", name="Potassium_nitrate", amount=1,probability =0.3},{type="fluid", name="Water_distilled", amount=6,probability =1},},}
makeRecipe{name="Salt",energy_required=15,category="Distillation",ingredients={{type="fluid", name="Brine", amount=10},},results={{type="item", name="Salt", amount=1,probability =1},{type="item", name="Potassium_nitrate", amount=1,probability =0.3},{type="item", name="Lithium_chloride", amount=1,probability =0.01},{type="fluid", name="Water_distilled", amount=6,probability =1},},}
makeRecipe{name="Sand",energy_required=2,category="Grinding_mill",ingredients={{type="item", name="Gravel", amount=1},},results={{type="item", name="Sand", amount=1,probability =1},{type="item", name="Silt", amount=1,probability =0.05},},}
makeRecipe{name="Sand",energy_required=2,category="Ore_washing",ingredients={{type="item", name="Coal_ore_dust", amount=2},{type="fluid", name="Water", amount=10},},results={{type="item", name="Sand", amount=1,probability =1},{type="item", name="Coal_dust", amount=1,probability =1},},}
makeRecipe{name="Sand",energy_required=2,category="Ore_washing",ingredients={{type="item", name="Rutile_ore_sand", amount=2},{type="fluid", name="Water", amount=10},},results={{type="item", name="Sand", amount=1,probability =1},{type="item", name="Rutile_sand", amount=1,probability =1},{type="item", name="Zircon", amount=1,probability =0.02},},}
makeRecipe{name="Scheelite_crushed_ore",energy_required=2,category="Crusher",ingredients={{type="item", name="Scheelite_ore", amount=1},},results={{type="item", name="Scheelite_crushed_ore", amount=1,probability =1},},}
makeRecipe{name="Seed_oil",energy_required=2,category="Assembling_machine",fluidIcon=true,ingredients={{type="item", name="Cotton_seeds", amount=10},},results={{type="fluid", name="Seed_oil", amount=1,probability =1},},}
makeRecipe{name="Sensor",energy_required=4,category="Assembling_machine",ingredients={{type="item", name="Computer", amount=1},{type="item", name="Copper_wire", amount=4},{type="item", name="ABS-plastic_pellets", amount=1},{type="item", name="Gold_foil", amount=1},},results={{type="item", name="Sensor", amount=1,probability =1},},}
makeRecipe{name="Silicon_boule",energy_required=60,category="Chemical_furnace",ingredients={{type="item", name="Silicon_granule", amount=1},{type="fluid", name="Argon", amount=2},},results={{type="item", name="Silicon_boule", amount=1,probability =1},},}
makeRecipe{name="Silicon_boule",energy_required=60,category="Chemical_furnace",ingredients={{type="item", name="Silicon_granule", amount=1},},results={{type="item", name="Silicon_boule", amount=1,probability =0.1},},}
makeRecipe{name="Silicon_carbide",energy_required=30,category="Chemical_furnace",ingredients={{type="item", name="Silicon_dioxide", amount=1},{type="item", name="Graphite_dust", amount=1},{type="fluid", name="Argon", amount=2},},results={{type="item", name="Silicon_carbide", amount=1,probability =1},},}
makeRecipe{name="Silicon_dioxide",energy_required=2,category="Grinding_mill",ingredients={{type="item", name="Quartz", amount=1},},results={{type="item", name="Silicon_dioxide", amount=1,probability =1},},}
makeRecipe{name="Silicon_granule",energy_required=1,category="Crusher",ingredients={{type="item", name="Polycrystalline_silicon_rod", amount=1},},results={{type="item", name="Silicon_granule", amount=1,probability =1},},}
makeRecipe{name="Silicon_poly_wafer",energy_required=60,category="Assembling_machine",ingredients={{type="item", name="Polycrystalline_silicon_rod", amount=1},{type="fluid", name="Water_distilled", amount=1},},results={{type="item", name="Silicon_poly_wafer", amount=20,probability =1},},}
makeRecipe{name="Silicon_polycrystalline_rod",energy_required=8,category="Chemical_plant",ingredients={{type="fluid", name="Trichlorosilane", amount=2},{type="fluid", name="Hydrogen", amount=2},},results={{type="item", name="Silicon_polycrystalline_rod", amount=1,probability =0.1},{type="fluid", name="Trichlorosilane", amount=1,probability =1},{type="fluid", name="Hydrochloric_acid", amount=1,probability =0.1},},}
makeRecipe{name="Silicon_wafer",energy_required=60,category="Assembling_machine",ingredients={{type="item", name="Silicon_boule", amount=1},},results={{type="item", name="Silicon_wafer", amount=20,probability =1},},}
makeRecipe{name="Silt",energy_required=2,category="Grinding_mill",ingredients={{type="item", name="Sand", amount=1},},results={{type="item", name="Silt", amount=1,probability =1},},}
makeRecipe{name="Silver-oxide_battery",energy_required=1.75,category="Assembling_machine",ingredients={{type="item", name="Zinc_foil", amount=1},{type="item", name="Sodium_hydroxide", amount=1},{type="item", name="Silver_oxide", amount=1},},results={{type="item", name="Silver-oxide_battery", amount=3,probability =1},},}
makeRecipe{name="Silver-oxide_battery",energy_required=2,category="Assembling_machine",ingredients={{type="item", name="Circuit_board", amount=1},{type="item", name="Silver-oxide_battery_cell", amount=14},{type="item", name="ABS-plastic_pellets", amount=1},},results={{type="item", name="Silver-oxide_battery", amount=1,probability =1},},}
makeRecipe{name="Silver_nitrate",energy_required=6,category="Chemical_plant",ingredients={{type="item", name="Silver_ingot", amount=1},{type="fluid", name="Nitric_acid", amount=1},},results={{type="item", name="Silver_nitrate", amount=1,probability =1},{type="fluid", name="Nitrogen_dioxide", amount=1,probability =1},{type="fluid", name="Water", amount=1,probability =1},},}
makeRecipe{name="Silver_oxide",energy_required=2,category="Chemical_plant",ingredients={{type="item", name="Silver_nitrate", amount=1},{type="item", name="Sodium_hydroxide", amount=1},},results={{type="item", name="Silver_oxide", amount=1,probability =1},{type="fluid", name="Water", amount=1,probability =0.9},},}
makeRecipe{name="Small_cargo_wagon",energy_required=20,category="Assembling_machine",ingredients={{type="item", name="Iron_riveted_dense_plate", amount=17},{type="item", name="Small_cargo_wagon_hull", amount=1},{type="item", name="Plank", amount=60},},results={{type="item", name="Small_cargo_wagon", amount=1,probability =1},},}
makeRecipe{name="Small_cargo_wagon_hull",energy_required=25,category="Assembling_machine",ingredients={{type="item", name="Iron_dense_plate", amount=48},{type="item", name="Iron_billet", amount=20},},results={{type="item", name="Small_cargo_wagon_hull", amount=1,probability =1},},}
makeRecipe{name="Small_gearbox",energy_required=10,category="crafting",ingredients={{type="item", name="Steel_bearing", amount=8},{type="item", name="Steel_gear", amount=8},{type="item", name="Steel_plate", amount=8},{type="item", name="Steel_rod", amount=1},},results={{type="item", name="Small_gearbox", amount=1,probability =1},},}
makeRecipe{name="Small_piston",energy_required=3,category="Assembling_machine",ingredients={{type="item", name="Steel_rod", amount=1},{type="item", name="Steel_plate", amount=1},},results={{type="item", name="Small_piston", amount=4,probability =1},},}
makeRecipe{name="Sodium_carbonate",energy_required=4,category="Chemical_plant",ingredients={{type="item", name="Calcium_carbonate", amount=1},{type="fluid", name="Brine", amount=1},},results={{type="item", name="Sodium_carbonate", amount=1,probability =1},{type="item", name="Calcium_chloride", amount=1,probability =1},},}
makeRecipe{name="Sodium_chlorate",energy_required=2,category="Electrolyzer",ingredients={{type="fluid", name="Water_distilled", amount=3},{type="item", name="Salt", amount=1},},results={{type="item", name="Sodium_chlorate", amount=1,probability =1},{type="fluid", name="Hydrogen", amount=3,probability =1},},}
makeRecipe{name="Sodium_dichromate",energy_required=3,category="Chemical_plant",ingredients={{type="item", name="Sodium_carbonate", amount=4},{type="item", name="Chromite_concentrate", amount=2},{type="fluid", name="Water_distilled", amount=3},},results={{type="item", name="Sodium_dichromate", amount=1,probability =1},},}
makeRecipe{name="Sodium_perchlorate",energy_required=2,category="Electrolyzer",ingredients={{type="item", name="Sodium_chlorate", amount=1},{type="fluid", name="Water_distilled", amount=1},},results={{type="item", name="Sodium_perchlorate", amount=1,probability =1},{type="fluid", name="Hydrogen", amount=1,probability =1},},}
makeRecipe{name="Sodium_tugstate_solution",energy_required=2.5,category="Chemical_plant",fluidIcon=true,ingredients={{type="item", name="Scheelite_crushed_ore", amount=2},{type="item", name="Sodium_hydroxide", amount=1},{type="fluid", name="Water_distilled", amount=1},},results={{type="fluid", name="Sodium_tugstate_solution", amount=1,probability =1},{type="item", name="Stone_crushed", amount=1,probability =1},},}
makeRecipe{name="Solar_array_t1",energy_required=10,category="crafting",ingredients={{type="item", name="Aluminium_rod", amount=20},{type="item", name="Solar_panel", amount=16},{type="item", name="Aluminium_plate", amount=5},},results={{type="item", name="Solar_array_t1", amount=1,probability =1},},}
makeRecipe{name="Solar_array_t2",energy_required=10,category="crafting",ingredients={{type="item", name="Aluminium_rod", amount=20},{type="item", name="Solar_panel_mk2", amount=16},{type="item", name="Aluminium_plate", amount=5},{type="item", name="LV_electric_motor", amount=1},},results={{type="item", name="Solar_array_t2", amount=1,probability =1},},}
makeRecipe{name="Solar_cell",energy_required=4,category="Assembling_machine",ingredients={{type="item", name="Plastic_pellets", amount=1},{type="item", name="Silver_wire", amount=1},{type="item", name="Anti-reflective_glass", amount=1},{type="item", name="Aluminium_plate", amount=1},{type="item", name="Polycrystalline_silicon_wafer", amount=1},},results={{type="item", name="Solar_cell", amount=16,probability =1},},}
makeRecipe{name="Solar_cell_mk2",energy_required=5,category="Assembling_machine",ingredients={{type="item", name="ABS-plastic_pellets", amount=1},{type="item", name="Silver_wire", amount=1},{type="item", name="Anti-reflective_glass", amount=1},{type="item", name="Aluminium_plate", amount=1},{type="item", name="Silicon_wafer", amount=1},},results={{type="item", name="Solar_cell_mk2", amount=18,probability =1},},}
makeRecipe{name="Solar_panel",energy_required=5,category="Assembling_machine",ingredients={{type="item", name="Solar_cell", amount=40},{type="item", name="Electronics_board", amount=2},{type="item", name="Aluminium_plate", amount=2},},results={{type="item", name="Solar_panel", amount=1,probability =1},},}
makeRecipe{name="Solar_panel_mk2",energy_required=4.5,category="Assembling_machine",ingredients={{type="item", name="Solar_cell_mk2", amount=40},{type="item", name="Circuit_board", amount=2},{type="item", name="Aluminium_plate", amount=2},},results={{type="item", name="Solar_panel_mk2", amount=1,probability =1},},}
makeRecipe{name="Solder_paste",energy_required=5,category="Assembling_machine",ingredients={{type="item", name="Lead_free_solder", amount=2},{type="item", name="Resin", amount=1},},results={{type="item", name="Solder_paste", amount=3,probability =1},},}
makeRecipe{name="Sphalerite_crushed_ore",energy_required=2,category="Crusher",ingredients={{type="item", name="Sphalerite_ore", amount=1},},results={{type="item", name="Sphalerite_crushed_ore", amount=1,probability =1},},}
makeRecipe{name="Splitter_t1",energy_required=2,category="crafting",ingredients={{type="item", name="Plank", amount=1},{type="item", name="Transport_belt_t1", amount=2},},results={{type="item", name="Splitter_t1", amount=1,probability =1},},}
makeRecipe{name="Splitter_t2",energy_required=2,category="crafting",ingredients={{type="item", name="Transport_belt_t2", amount=2},{type="item", name="Copper_plate", amount=1},},results={{type="item", name="Splitter_t2", amount=1,probability =1},},}
makeRecipe{name="Splitter_t3",energy_required=2,category="crafting",ingredients={{type="item", name="Iron_plate", amount=4},{type="item", name="Transport_belt_t3", amount=2},{type="item", name="Basic_electric_motor", amount=1},},results={{type="item", name="Splitter_t3", amount=1,probability =1},},}
makeRecipe{name="Splitter_t4",energy_required=6,category="crafting",ingredients={{type="item", name="Steel_riveted_plate", amount=4},{type="item", name="Basic_electronics_board", amount=2},{type="item", name="Transport_belt_t4", amount=2},{type="item", name="Basic_electric_motor", amount=2},},results={{type="item", name="Splitter_t4", amount=1,probability =1},},}
makeRecipe{name="Splitter_t5",energy_required=6,category="Assembling_machine",ingredients={{type="item", name="Circuit_board", amount=3},{type="item", name="Transport_belt_t5", amount=2},{type="item", name="Steel_plate", amount=8},{type="item", name="LV_electric_motor", amount=4},},results={{type="item", name="Splitter_t5", amount=1,probability =1},},}
makeRecipe{name="Splitter_t6",energy_required=6,category="Assembling_machine",ingredients={{type="item", name="Advanced_circuit_board", amount=4},{type="item", name="Transport_belt_t6", amount=2},{type="item", name="Titanium_plate", amount=8},{type="item", name="HV_electric_motor", amount=2},},results={{type="item", name="Splitter_t6", amount=1,probability =1},},}
makeRecipe{name="Splitter_t7",energy_required=6,category="Assembling_machine",ingredients={{type="item", name="Cooling_system", amount=4},{type="item", name="HV_electric_motor", amount=4},{type="item", name="Transport_belt_t7", amount=2},{type="item", name="Sensor", amount=12},{type="item", name="Titanium_plate", amount=16},},results={{type="item", name="Splitter_t7", amount=1,probability =1},},}
makeRecipe{name="Stainless_steel_billet",energy_required=1.5,category="Chemical_plant",ingredients={{type="fluid", name="Oxygen", amount=1},{type="item", name="Stainless_steel_mix_hot", amount=1},},results={{type="item", name="Stainless_steel_billet", amount=1,probability =1},},}
makeRecipe{name="Stainless_steel_dense_pipe",energy_required=5,category="Assembling_machine",ingredients={{type="item", name="Stainless_steel_dense_plate", amount=2},},results={{type="item", name="Stainless_steel_dense_pipe", amount=1,probability =1},},}
makeRecipe{name="Stainless_steel_mix_hot",energy_required=40,category="Electric_arc_furnace",ingredients={{type="item", name="Nickel_billet", amount=1},{type="item", name="Ferrochrome", amount=1},{type="item", name="Steel_billet", amount=10},},results={{type="item", name="Stainless_steel_mix_hot", amount=10,probability =1},},}
makeRecipe{name="Stainless_steel_pipe",energy_required=5,category="Assembling_machine",ingredients={{type="item", name="Stainless_steel_plate", amount=2},},results={{type="item", name="Stainless_steel_pipe", amount=1,probability =1},},}
makeRecipe{name="Stainless_steel_tank_2x2",energy_required=10,category="crafting",ingredients={{type="item", name="Stainless_steel_plate", amount=60},{type="item", name="Stainless_steel_pipe", amount=4},},results={{type="item", name="Stainless_steel_tank_2x2", amount=1,probability =1},},}
makeRecipe{name="Stainless_steel_tank_4x4",energy_required=5,category="crafting",ingredients={{type="item", name="Stainless_steel_tank_2x2", amount=4},},results={{type="item", name="Stainless_steel_tank_4x4", amount=1,probability =1},},}
makeRecipe{name="Steam_engine_generator_t1",energy_required=20,category="crafting",ingredients={{type="item", name="Iron_transmission_chain", amount=2},{type="item", name="Iron_piston", amount=3},{type="item", name="Iron_engine_block", amount=3},{type="item", name="Basic_electric_motor", amount=8},{type="item", name="Transformer", amount=4},},results={{type="item", name="Steam_engine_generator_t1", amount=1,probability =1},},}
makeRecipe{name="Steam_tubine_t1",energy_required=50,category="crafting",ingredients={{type="item", name="Basic_electric_motor", amount=30},{type="item", name="Steel_plate", amount=80},{type="item", name="Steel_bearing", amount=20},{type="item", name="Transformer", amount=8},},results={{type="item", name="Steam_tubine_t1", amount=1,probability =1},},}
makeRecipe{name="Steam_turbine_t2",energy_required=30,category="Assembling_machine",ingredients={{type="item", name="HV_electric_motor", amount=10},{type="item", name="Stainless_steel_plate", amount=120},{type="item", name="Steel_bearing", amount=30},{type="fluid", name="Lubricant", amount=15},{type="item", name="HV_transformer", amount=6},},results={{type="item", name="Steam_turbine_t2", amount=1,probability =1},},}
makeRecipe{name="Steam_turbine_t3",energy_required=40,category="Assembling_machine",ingredients={{type="item", name="Titanium_plate", amount=50},{type="item", name="HV_electric_motor", amount=22},{type="item", name="Compression_turbine_fan", amount=18},{type="item", name="HV_transformer", amount=12},{type="fluid", name="Lubricant", amount=20},},results={{type="item", name="Steam_turbine_t3", amount=1,probability =1},},}
makeRecipe{name="Steel_HS_rail",energy_required=3,category="Furnace",ingredients={{type="item", name="Steel_billet", amount=13},},results={{type="item", name="Steel_HS_rail", amount=1,probability =1},},}
makeRecipe{name="Steel_ball",energy_required=2,category="Assembling_machine",ingredients={{type="item", name="Steel_rod", amount=1},},results={{type="item", name="Steel_ball", amount=12,probability =1},},}
makeRecipe{name="Steel_bearing",energy_required=2,category="Assembling_machine",ingredients={{type="item", name="Steel_ball", amount=8},{type="item", name="Steel_bearing_hull", amount=1},},results={{type="item", name="Steel_bearing", amount=1,probability =1},},}
makeRecipe{name="Steel_bearing_hull",energy_required=2,category="Assembling_machine",ingredients={{type="item", name="Steel_plate", amount=1},},results={{type="item", name="Steel_bearing_hull", amount=2,probability =1},},}
makeRecipe{name="Steel_belt_hull",energy_required=6,category="Assembling_machine",ingredients={{type="item", name="Steel_bearing", amount=18},{type="item", name="Steel_transmission_chain", amount=2},{type="item", name="Steel_gear", amount=4},{type="item", name="Steel_rod", amount=8},},results={{type="item", name="Steel_belt_hull", amount=1,probability =1},},}
makeRecipe{name="Steel_billet",energy_required=4,category="Blast_furnace",ingredients={{type="item", name="Pig_iron", amount=1},{type="fluid", name="Oxygen", amount=10},},results={{type="item", name="Steel_billet", amount=1,probability =1},},}
makeRecipe{name="Steel_billet",energy_required=5,category="Electric_arc_furnace",ingredients={{type="item", name="Direct_reduced_iron", amount=1},},results={{type="item", name="Steel_billet", amount=1,probability =1},{type="item", name="Slag", amount=1,probability =1},},}
makeRecipe{name="Steel_chest",energy_required=15,category="crafting",ingredients={{type="item", name="Steel_bearing", amount=4},{type="item", name="Steel_riveted_plate", amount=24},{type="item", name="Steel_rod", amount=2},},results={{type="item", name="Steel_chest", amount=1,probability =1},},}
makeRecipe{name="Steel_dense_pipe",energy_required=12,category="crafting",ingredients={{type="item", name="Steel_riveted_dense_plate", amount=2},},results={{type="item", name="Steel_dense_pipe", amount=1,probability =1},},}
makeRecipe{name="Steel_dense_underground_pipe",energy_required=8,category="crafting",ingredients={{type="item", name="Steel_dense_pipe", amount=24},},results={{type="item", name="Steel_dense_underground_pipe", amount=2,probability =1},},}
makeRecipe{name="Steel_drill_bit",energy_required=3,category="Assembling_machine",ingredients={{type="item", name="Steel_bearing", amount=3},{type="item", name="Steel_gear", amount=9},{type="item", name="Steel_rod", amount=1},},results={{type="item", name="Steel_drill_bit", amount=1,probability =1},},}
makeRecipe{name="Steel_engine_block",energy_required=8,category="Assembling_machine",ingredients={{type="item", name="Steel_billet", amount=15},{type="item", name="Steel_pipe", amount=4},},results={{type="item", name="Steel_engine_block", amount=1,probability =1},},}
makeRecipe{name="Steel_pipe",energy_required=6,category="crafting",ingredients={{type="item", name="Steel_riveted_plate", amount=2},},results={{type="item", name="Steel_pipe", amount=1,probability =1},},}
makeRecipe{name="Steel_rivet",energy_required=3,category="crafting",ingredients={{type="item", name="Steel_wire", amount=1},},results={{type="item", name="Steel_rivet", amount=6,probability =1},},}
makeRecipe{name="Steel_riveted_dense_plate",energy_required=10,category="crafting",ingredients={{type="item", name="Steel_dense_plate", amount=1},{type="item", name="Steel_rivet", amount=16},},results={{type="item", name="Steel_riveted_dense_plate", amount=1,probability =1},},}
makeRecipe{name="Steel_riveted_plate",energy_required=5,category="crafting",ingredients={{type="item", name="Steel_plate", amount=1},{type="item", name="Steel_rivet", amount=8},},results={{type="item", name="Steel_riveted_plate", amount=1,probability =1},},}
makeRecipe{name="Steel_tank_2x2",energy_required=10,category="crafting",ingredients={{type="item", name="Nickel_plate", amount=10},{type="item", name="Steel_riveted_plate", amount=40},{type="item", name="Steel_pipe", amount=4},},results={{type="item", name="Steel_tank_2x2", amount=1,probability =1},},}
makeRecipe{name="Steel_tank_4x4",energy_required=5,category="crafting",ingredients={{type="item", name="Steel_tank_2x2", amount=4},},results={{type="item", name="Steel_tank_4x4", amount=1,probability =1},},}
makeRecipe{name="Steel_tools",energy_required=12,category="crafting",ingredients={{type="item", name="Stick", amount=1},{type="item", name="Steel_rod", amount=1},},results={{type="item", name="Steel_tools", amount=1,probability =1},},}
makeRecipe{name="Steel_underground_pipe",energy_required=4,category="crafting",ingredients={{type="item", name="Steel_pipe", amount=24},},results={{type="item", name="Steel_underground_pipe", amount=2,probability =1},},}
makeRecipe{name="Stick",energy_required=2,category="crafting",ingredients={{type="item", name="Raw_wood", amount=1},},results={{type="item", name="Stick", amount=15,probability =1},},}
makeRecipe{name="Stirling_engine",energy_required=3,category="crafting",ingredients={{type="item", name="Iron_engine_block", amount=1},{type="item", name="Iron_piston", amount=2},{type="item", name="Furnace_t1", amount=1},{type="item", name="Iron_transmission_chain", amount=1},},results={{type="item", name="Stirling_engine", amount=1,probability =1},},}
makeRecipe{name="Stirling_miner_t1",energy_required=10,category="crafting",ingredients={{type="item", name="Stirling_engine", amount=1},{type="item", name="Drill_frame_basic", amount=1},{type="item", name="Iron_drill_bit", amount=3},},results={{type="item", name="Stirling_miner_t1", amount=1,probability =1},},}
makeRecipe{name="Stirling_offshore_pump_t1",energy_required=12,category="crafting",ingredients={{type="item", name="Stirling_engine", amount=1},{type="item", name="Iron_piston", amount=4},{type="item", name="Copper_pipe", amount=4},},results={{type="item", name="Stirling_offshore_pump_t1", amount=1,probability =1},},}
makeRecipe{name="Stone_crushed",energy_required=2,category="Crusher",ingredients={{type="item", name="Stone_Quarried", amount=1},},results={{type="item", name="Stone_crushed", amount=1,probability =1},},}
makeRecipe{name="Stone_crushed",energy_required=2,category="Ore_washing",ingredients={{type="fluid", name="Water", amount=10},},results={{type="item", name="Stone_crushed", amount=1,probability =1},{type="item", name="Graphite_curshed", amount=1,probability =1},},}
makeRecipe{name="Stone_crushed",energy_required=2,category="Ore_washing",ingredients={{type="item", name="Bauxite_crushed_ore", amount=2},{type="fluid", name="Water", amount=10},},results={{type="item", name="Stone_crushed", amount=1,probability =1},{type="item", name="Bauxite_concentrate", amount=1,probability =1},},}
makeRecipe{name="Stone_crushed",energy_required=2,category="Ore_washing",ingredients={{type="item", name="Cassiterite_crushed_ore", amount=2},{type="fluid", name="Water", amount=10},},results={{type="item", name="Stone_crushed", amount=1,probability =1},{type="item", name="Tin_concentrate", amount=1,probability =1},},}
makeRecipe{name="Stone_crushed",energy_required=2,category="Ore_washing",ingredients={{type="item", name="Chalcopyrite_crushed_ore", amount=2},{type="fluid", name="Water", amount=10},},results={{type="item", name="Stone_crushed", amount=1,probability =1},{type="item", name="Copper_concentrate", amount=1,probability =1},},}
makeRecipe{name="Stone_crushed",energy_required=2,category="Ore_washing",ingredients={{type="item", name="Chromite_crushed_ore", amount=2},{type="fluid", name="Water", amount=10},},results={{type="item", name="Stone_crushed", amount=1,probability =1},{type="item", name="Chromite_concentrate", amount=1,probability =1},},}
makeRecipe{name="Stone_crushed",energy_required=2,category="Ore_washing",ingredients={{type="item", name="Fluorite_crushed_ore", amount=2},{type="fluid", name="Water", amount=10},},results={{type="item", name="Stone_crushed", amount=1,probability =1},{type="item", name="Calcium_fluoride", amount=1,probability =1},},}
makeRecipe{name="Stone_crushed",energy_required=2,category="Ore_washing",ingredients={{type="item", name="Galena_crushed_ore", amount=2},{type="fluid", name="Water", amount=10},},results={{type="item", name="Stone_crushed", amount=1,probability =1},{type="item", name="Lead_concentrate", amount=1,probability =1},},}
makeRecipe{name="Stone_crushed",energy_required=2,category="Ore_washing",ingredients={{type="item", name="Magnetite_crushed_ore", amount=2},{type="fluid", name="Water", amount=10},},results={{type="item", name="Stone_crushed", amount=1,probability =1},{type="item", name="Magnetite_concentrate", amount=1,probability =1},},}
makeRecipe{name="Stone_crushed",energy_required=2,category="Ore_washing",ingredients={{type="item", name="Pentlandite_crushed_ore", amount=2},{type="fluid", name="Water", amount=10},},results={{type="item", name="Stone_crushed", amount=1,probability =1},{type="item", name="Nickel_concentrate", amount=1,probability =1},},}
makeRecipe{name="Stone_crushed",energy_required=2,category="Ore_washing",ingredients={{type="item", name="Quartz_crushed_rock", amount=2},{type="fluid", name="Water", amount=10},},results={{type="item", name="Stone_crushed", amount=1,probability =1},{type="item", name="Quartz", amount=1,probability =1},},}
makeRecipe{name="Stone_crushed",energy_required=2,category="Ore_washing",ingredients={{type="item", name="Sphalerite_crushed_ore", amount=2},{type="fluid", name="Water", amount=10},},results={{type="item", name="Stone_crushed", amount=1,probability =1},{type="item", name="Zinc_concentrate", amount=1,probability =1},},}
makeRecipe{name="Stone_gear",energy_required=10,category="crafting",ingredients={{type="item", name="Quarried_stone", amount=1},},results={{type="item", name="Stone_gear", amount=1,probability =1},},}
makeRecipe{name="Stone_tools",energy_required=12,category="crafting",ingredients={{type="item", name="Stick", amount=1},{type="item", name="Quarried_stone", amount=1},},results={{type="item", name="Stone_tools", amount=1,probability =1},},}
makeRecipe{name="Storage_chest",energy_required=3,category="crafting",ingredients={{type="item", name="Computer", amount=2},{type="item", name="Titanium_chest", amount=1},{type="item", name="Sensor", amount=1},},results={{type="item", name="Storage_chest", amount=1,probability =1},},}
makeRecipe{name="Strong_steel_tools",energy_required=5,category="Assembling_machine",ingredients={{type="item", name="Steel_rod", amount=2},},results={{type="item", name="Strong_steel_tools", amount=1,probability =1},},}
makeRecipe{name="Styrene",energy_required=4,category="Chemical_plant",fluidIcon=true,ingredients={{type="fluid", name="Ethylbenzene", amount=1},},results={{type="fluid", name="Styrene", amount=1,probability =1},{type="fluid", name="Hydrogen", amount=1,probability =1},},}
makeRecipe{name="Substation_t1",energy_required=15,category="Assembling_machine",ingredients={{type="item", name="Circuit_board", amount=12},{type="item", name="Transformer", amount=8},{type="item", name="HV_transformer", amount=2},{type="item", name="Copper_wire", amount=30},{type="item", name="Rubber", amount=30},},results={{type="item", name="Substation_t1", amount=1,probability =1},},}
makeRecipe{name="Sulfur_dioxide",energy_required=3,category="Chemical_plant",fluidIcon=true,ingredients={{type="item", name="Sulfur", amount=1},{type="fluid", name="Oxygen", amount=1},},results={{type="fluid", name="Sulfur_dioxide", amount=1,probability =1},},}
makeRecipe{name="Sulfur_trioxide",energy_required=1,category="Chemical_plant",fluidIcon=true,ingredients={{type="fluid", name="Sulfur_dioxide", amount=1},{type="fluid", name="Oxygen", amount=1},},results={{type="fluid", name="Sulfur_trioxide", amount=1,probability =1},},}
makeRecipe{name="Sulfuric_acid",energy_required=2,category="Chemical_plant",fluidIcon=true,ingredients={{type="fluid", name="Sulfur_dioxide", amount=1},{type="fluid", name="Water", amount=1},},results={{type="fluid", name="Sulfuric_acid", amount=1,probability =1},},}
makeRecipe{name="Syngas",energy_required=2,category="Cracking_plant",fluidIcon=true,ingredients={{type="item", name="CO", amount=1},{type="fluid", name="Hydrogen", amount=3},},results={{type="fluid", name="Syngas", amount=1,probability =1},},}
makeRecipe{name="Syngas",energy_required=3,category="Cracking_plant",fluidIcon=true,ingredients={{type="fluid", name="Coal_gas", amount=1},{type="fluid", name="Water_distilled", amount=1},},results={{type="fluid", name="Syngas", amount=1,probability =1},{type="fluid", name="Toluene", amount=1,probability =0.1},},}
makeRecipe{name="TNT",energy_required=1.5,category="Chemical_plant",ingredients={{type="item", name="DNT", amount=1},{type="fluid", name="Nitric_acid", amount=1},{type="fluid", name="Oleum", amount=1},},results={{type="item", name="TNT", amount=1,probability =1},},}
makeRecipe{name="TiN_tungsten_carbide_tools",energy_required=6,category="Electrolyzer",ingredients={{type="item", name="Titanium_power", amount=1},{type="item", name="Tungsten_carbide_tools", amount=1},{type="fluid", name="Nitrogen", amount=10},},results={{type="item", name="TiN_tungsten_carbide_tools", amount=1,probability =1},},}
makeRecipe{name="Tin_billet",energy_required=2,category="Furnace",ingredients={{type="item", name="Tin_concentrate", amount=2},},results={{type="item", name="Tin_billet", amount=1,probability =1},},}
makeRecipe{name="Tinned_copper_wire",energy_required=1,category="crafting",ingredients={{type="item", name="Copper_wire", amount=1},{type="item", name="Tin_foil", amount=1},},results={{type="item", name="Tinned_copper_wire", amount=1,probability =1},},}
makeRecipe{name="Titanium_ball",energy_required=3,category="Assembling_machine",ingredients={{type="item", name="Titanium_rod", amount=1},},results={{type="item", name="Titanium_ball", amount=12,probability =1},},}
makeRecipe{name="Titanium_bearing",energy_required=3,category="Assembling_machine",ingredients={{type="item", name="Titanium_ball", amount=8},{type="item", name="Titanium_bearing_hull", amount=1},{type="fluid", name="Lubricant", amount=1},},results={{type="item", name="Titanium_bearing", amount=1,probability =1},},}
makeRecipe{name="Titanium_bearing_hull",energy_required=3,category="Assembling_machine",ingredients={{type="item", name="Titanium_plate", amount=1},},results={{type="item", name="Titanium_bearing_hull", amount=2,probability =1},},}
makeRecipe{name="Titanium_belt_hull",energy_required=8,category="Assembling_machine",ingredients={{type="item", name="Titanium_bearing", amount=20},{type="item", name="Titanium_transmission_chain", amount=6},{type="item", name="Titanium_gear", amount=4},{type="item", name="Titanium_rod", amount=8},},results={{type="item", name="Titanium_belt_hull", amount=1,probability =1},},}
makeRecipe{name="Titanium_billet",energy_required=12,category="Electric_furnace",ingredients={{type="item", name="Titanium_dust", amount=8},},results={{type="item", name="Titanium_billet", amount=1,probability =1},},}
makeRecipe{name="Titanium_chest",energy_required=8,category="Assembling_machine",ingredients={{type="item", name="Titanium_bearing", amount=8},{type="item", name="Titanium_framework", amount=8},{type="item", name="Titanium_rod", amount=4},},results={{type="item", name="Titanium_chest", amount=1,probability =1},},}
makeRecipe{name="Titanium_dense_pipe",energy_required=8,category="Assembling_machine",ingredients={{type="item", name="Titanium_dense_plate", amount=2},},results={{type="item", name="Titanium_dense_pipe", amount=1,probability =1},},}
makeRecipe{name="Titanium_dioxide",energy_required=6,category="Chemical_plant",ingredients={{type="fluid", name="Titanium_tetrachloride", amount=1},{type="fluid", name="Oxygen", amount=1},},results={{type="item", name="Titanium_dioxide", amount=1,probability =1},{type="fluid", name="Chlorine", amount=1,probability =0.9},},}
makeRecipe{name="Titanium_dust",energy_required=5,category="Ore_washing",ingredients={{type="item", name="Titanium_dust_dirty", amount=1},{type="fluid", name="Water_distilled", amount=5},},results={{type="item", name="Titanium_dust", amount=1,probability =1},},}
makeRecipe{name="Titanium_dust_dirty",energy_required=2,category="Grinding_mill",ingredients={{type="item", name="Titanium_pellet", amount=1},},results={{type="item", name="Titanium_dust_dirty", amount=1,probability =1},},}
makeRecipe{name="Titanium_framework",energy_required=2,category="Assembling_machine",ingredients={{type="item", name="Titanium_plate", amount=5},{type="item", name="Titanium_rod", amount=8},},results={{type="item", name="Titanium_framework", amount=1,probability =1},},}
makeRecipe{name="Titanium_pellet",energy_required=25,category="Electrolyzer",ingredients={{type="item", name="Titanium_dioxide_pellet", amount=1},{type="item", name="Calcium_chloride", amount=1},},results={{type="item", name="Titanium_pellet", amount=1,probability =1},{type="item", name="Calcium_oxide", amount=1,probability =1},},}
makeRecipe{name="Titanium_pipe",energy_required=8,category="Assembling_machine",ingredients={{type="item", name="Titanium_plate", amount=2},},results={{type="item", name="Titanium_pipe", amount=1,probability =1},},}
makeRecipe{name="Titanium_tetrachloride",energy_required=5,category="Electric_chemical_furnace",fluidIcon=true,ingredients={{type="item", name="Coal_coke", amount=1},{type="item", name="Rutile_sand", amount=1},{type="fluid", name="Chlorine", amount=1},},results={{type="fluid", name="Titanium_tetrachloride", amount=1,probability =1},},}
makeRecipe{name="Toluene",energy_required=3,category="Chemical_plant",fluidIcon=true,ingredients={{type="fluid", name="Light_oil", amount=1},},results={{type="fluid", name="Toluene", amount=1,probability =1},},}
makeRecipe{name="Track",energy_required=3,category="crafting",ingredients={{type="item", name="Gravel", amount=66},{type="item", name="Iron_rail", amount=2},{type="item", name="Plank", amount=6},},results={{type="item", name="Track", amount=1,probability =1},},}
makeRecipe{name="Trading_post",energy_required=15,category="crafting",ingredients={{type="item", name="Copper_wire", amount=20},{type="item", name="Wooden_framework", amount=30},{type="item", name="Brick", amount=30},},results={{type="item", name="Trading_post", amount=1,probability =1},},}
makeRecipe{name="Train_stop",energy_required=2,category="crafting",ingredients={{type="item", name="Iron_rod", amount=10},{type="item", name="Wooden_board", amount=4},{type="item", name="Plank", amount=10},},results={{type="item", name="Train_stop", amount=1,probability =1},},}
makeRecipe{name="Transformer",energy_required=3,category="crafting",ingredients={{type="item", name="Transformer_core", amount=1},{type="item", name="Copper_wire", amount=8},},results={{type="item", name="Transformer", amount=1,probability =1},},}
makeRecipe{name="Transformer_core",energy_required=1,category="crafting",ingredients={{type="item", name="Iron_billet", amount=1},},results={{type="item", name="Transformer_core", amount=2,probability =1},},}
makeRecipe{name="Transformer_core",energy_required=4,category="crafting",ingredients={{type="item", name="Steel_billet", amount=1},},results={{type="item", name="Transformer_core", amount=2,probability =1},},}
makeRecipe{name="Transistor",energy_required=4,category="Assembling_machine",ingredients={{type="item", name="Copper_foil", amount=2},{type="item", name="Silicon_wafer", amount=1},{type="item", name="Resin", amount=4},{type="item", name="Tinned_copper_wire", amount=12},},results={{type="item", name="Transistor", amount=10,probability =1},},}
makeRecipe{name="Transmission_pole_t1",energy_required=2,category="crafting",ingredients={{type="item", name="Steel_wire", amount=12},{type="item", name="Steel_rod", amount=4},{type="item", name="Transformer", amount=1},},results={{type="item", name="Transmission_pole_t1", amount=1,probability =1},},}
makeRecipe{name="Transmission_pole_t2",energy_required=2,category="crafting",ingredients={{type="item", name="Steel_wire", amount=8},{type="item", name="Transmission_pole_t1", amount=1},{type="item", name="HV_transformer", amount=1},},results={{type="item", name="Transmission_pole_t2", amount=1,probability =1},},}
makeRecipe{name="Transmission_pole_t3",energy_required=1,category="Assembling_machine",ingredients={{type="item", name="Steel_wire", amount=4},{type="item", name="Aluminium_wire", amount=8},{type="item", name="Transmission_pole_t2", amount=2},},results={{type="item", name="Transmission_pole_t3", amount=1,probability =1},},}
makeRecipe{name="Transport_belt_t1",energy_required=4,category="crafting",ingredients={{type="item", name="Stone_gear", amount=4},{type="item", name="Stick", amount=12},{type="item", name="Raw_wood", amount=4},},results={{type="item", name="Transport_belt_t1", amount=1,probability =1},},}
makeRecipe{name="Transport_belt_t2",energy_required=4,category="crafting",ingredients={{type="item", name="Transport_belt_t1", amount=1},{type="item", name="Copper_plate", amount=4},{type="item", name="Copper_transmission_chain", amount=2},},results={{type="item", name="Transport_belt_t2", amount=1,probability =1},},}
makeRecipe{name="Transport_belt_t3",energy_required=3,category="crafting",ingredients={{type="item", name="Iron_transmission_chain", amount=4},{type="item", name="Iron_riveted_plate", amount=6},{type="item", name="Iron_rod", amount=2},{type="item", name="Basic_electric_motor", amount=1},},results={{type="item", name="Transport_belt_t3", amount=1,probability =1},},}
makeRecipe{name="Transport_belt_t4",energy_required=5,category="Assembling_machine",ingredients={{type="item", name="Basic_electronics_board", amount=2},{type="fluid", name="Lubricant", amount=4},{type="item", name="Transport_belt_t3", amount=1},{type="item", name="Basic_electric_motor", amount=4},{type="item", name="Steel_belt_hull", amount=1},},results={{type="item", name="Transport_belt_t4", amount=1,probability =1},},}
makeRecipe{name="Transport_belt_t5",energy_required=4,category="Assembling_machine",ingredients={{type="item", name="Circuit_board", amount=3},{type="item", name="Steel_plate", amount=4},{type="item", name="Transport_belt_t4", amount=1},{type="fluid", name="Lubricant", amount=4},{type="item", name="LV_electric_motor", amount=4},},results={{type="item", name="Transport_belt_t5", amount=1,probability =1},},}
makeRecipe{name="Transport_belt_t6",energy_required=4,category="Assembling_machine",ingredients={{type="item", name="Advanced_circuit_board", amount=4},{type="item", name="Titanium_plate", amount=6},{type="item", name="Transport_belt_t5", amount=1},{type="fluid", name="Lubricant", amount=8},{type="item", name="Titanium_belt_hull", amount=1},},results={{type="item", name="Transport_belt_t6", amount=1,probability =1},},}
makeRecipe{name="Transport_belt_t7",energy_required=4,category="Assembling_machine",ingredients={{type="item", name="HV_electric_motor", amount=1},{type="fluid", name="Lubricant", amount=20},{type="item", name="Transport_belt_t6", amount=1},{type="item", name="Cooling_system", amount=8},{type="item", name="Sensor", amount=4},},results={{type="item", name="Transport_belt_t7", amount=1,probability =1},},}
makeRecipe{name="Transport_belt_underground_t1",energy_required=2,category="crafting",ingredients={{type="item", name="Transport_belt_t1", amount=6},{type="item", name="Wooden_framework", amount=2},},results={{type="item", name="Transport_belt_underground_t1", amount=2,probability =1},},}
makeRecipe{name="Transport_belt_underground_t2",energy_required=2,category="crafting",ingredients={{type="item", name="Transport_belt_t2", amount=9},{type="item", name="Wooden_framework", amount=5},},results={{type="item", name="Transport_belt_underground_t2", amount=2,probability =1},},}
makeRecipe{name="Transport_belt_underground_t3",energy_required=2,category="crafting",ingredients={{type="item", name="Transport_belt_t3", amount=12},{type="item", name="Wooden_framework", amount=8},},results={{type="item", name="Transport_belt_underground_t3", amount=2,probability =1},},}
makeRecipe{name="Transport_belt_underground_t4",energy_required=10,category="crafting",ingredients={{type="item", name="Transport_belt_t4", amount=15},{type="item", name="Concrete_block", amount=15},},results={{type="item", name="Transport_belt_underground_t4", amount=2,probability =1},},}
makeRecipe{name="Transport_belt_underground_t5",energy_required=10,category="crafting",ingredients={{type="item", name="Transport_belt_underground_t5", amount=18},{type="item", name="Concrete_block", amount=18},},results={{type="item", name="Transport_belt_underground_t5", amount=2,probability =1},},}
makeRecipe{name="Transport_belt_underground_t6",energy_required=10,category="crafting",ingredients={{type="item", name="Transport_belt_t6", amount=21},{type="item", name="Concrete_block", amount=21},},results={{type="item", name="Transport_belt_underground_t6", amount=2,probability =1},},}
makeRecipe{name="Transport_belt_underground_t7",energy_required=10,category="crafting",ingredients={{type="item", name="Transport_belt_t7", amount=24},{type="item", name="Concrete_block", amount=24},},results={{type="item", name="Transport_belt_underground_t7", amount=2,probability =1},},}
makeRecipe{name="Tree_seeds",energy_required=3,category="crafting",ingredients={{type="item", name="Clay", amount=10},},results={{type="item", name="Tree_seeds", amount=1,probability =0.05},{type="item", name="Cotton_seeds", amount=1,probability =0.01},},}
makeRecipe{name="Trichlorosilane",energy_required=2,category="Chemical_plant",fluidIcon=true,ingredients={{type="fluid", name="Silicon_tetrachloride", amount=1},{type="fluid", name="Hydrogen", amount=1},},results={{type="fluid", name="Trichlorosilane", amount=1,probability =1},{type="fluid", name="Hydrogen_chloride", amount=1,probability =1},},}
makeRecipe{name="Trichlorosilane",energy_required=3,category="Chemical_plant",fluidIcon=true,ingredients={{type="item", name="Silicon_metallurgical", amount=1},{type="fluid", name="Hydrochloric_acid", amount=3},},results={{type="fluid", name="Trichlorosilane", amount=1,probability =1},{type="fluid", name="Hydrogen", amount=1,probability =1},},}
makeRecipe{name="Tubine_fan",energy_required=12,category="Assembling_machine",ingredients={{type="item", name="Titanium_plate", amount=12},{type="item", name="Titanium_bearing", amount=6},{type="item", name="Steel_rod", amount=1},},results={{type="item", name="Tubine_fan", amount=1,probability =1},},}
makeRecipe{name="Tungsten_carbide_drill_bit",energy_required=3,category="Assembling_machine",ingredients={{type="item", name="Steel_bearing", amount=3},{type="item", name="Tungsten_carbide_gear", amount=9},{type="item", name="Tungsten_carbide_gear", amount=1},},results={{type="item", name="Tungsten_carbide_drill_bit", amount=1,probability =1},},}
makeRecipe{name="Tungsten_carbide_dust",energy_required=5,category="Electric_chemical_furnace",ingredients={{type="fluid", name="Hydrogen", amount=2},{type="item", name="Tungsten_powder", amount=1},{type="item", name="Graphite_dust", amount=1},},results={{type="item", name="Tungsten_carbide_dust", amount=1,probability =1},},}
makeRecipe{name="Tungsten_carbide_gear",energy_required=6,category="Electric_chemical_furnace",ingredients={{type="fluid", name="Hydrogen", amount=2},{type="item", name="Tungsten_carbide_dust", amount=1},{type="item", name="Cobalt_dust", amount=1},},results={{type="item", name="Tungsten_carbide_gear", amount=1,probability =1},},}
makeRecipe{name="Tungsten_carbide_rod",energy_required=6,category="Electric_chemical_furnace",ingredients={{type="fluid", name="Hydrogen", amount=2},{type="item", name="Tungsten_carbide_dust", amount=1},{type="item", name="Cobalt_dust", amount=1},},results={{type="item", name="Tungsten_carbide_rod", amount=1,probability =1},},}
makeRecipe{name="Tungsten_carbide_tools",energy_required=6,category="Assembling_machine",ingredients={{type="item", name="Steel_rod", amount=1},{type="item", name="Tungsten_carbide_rod", amount=1},{type="item", name="Rubber", amount=1},},results={{type="item", name="Tungsten_carbide_tools", amount=1,probability =1},},}
makeRecipe{name="Tungsten_oxide",energy_required=3,category="Chemical_furnace",ingredients={{type="item", name="Ammonium_Paratungstate", amount=1},{type="fluid", name="Nitrogen", amount=1},},results={{type="item", name="Tungsten_oxide", amount=1,probability =1},},}
makeRecipe{name="Tungsten_powder",energy_required=5,category="Chemical_furnace",ingredients={{type="item", name="Tungsten_oxide", amount=1},{type="fluid", name="Hydrogen", amount=1},},results={{type="item", name="Tungsten_powder", amount=1,probability =1},},}
makeRecipe{name="Tungsten_rod",energy_required=6,category="Electric_furnace",ingredients={{type="item", name="Tungsten_powder", amount=1},},results={{type="item", name="Tungsten_rod", amount=1,probability =1},},}
makeRecipe{name="Uraninite_crushed_ore",energy_required=2,category="Crusher",ingredients={{type="item", name="Uraninite_ore", amount=1},},results={{type="item", name="Uraninite_crushed_ore", amount=1,probability =1},},}
makeRecipe{name="Uraninite_ore_concentrate",energy_required=2,category="Grinding_mill",ingredients={{type="item", name="Uraninite_crushed_ore", amount=1},},results={{type="item", name="Uraninite_ore_concentrate", amount=1,probability =1},},}
makeRecipe{name="Uranium_dioxide",energy_required=5,category="Chemical_plant",ingredients={{type="fluid", name="ADU", amount=1},{type="fluid", name="Hydrogen", amount=2},},results={{type="item", name="Uranium_dioxide", amount=1,probability =1},},}
makeRecipe{name="Uranium_hexafluoride",energy_required=3,category="Electrolyzer",fluidIcon=true,ingredients={{type="item", name="Uranium_tetrafluoride", amount=1},{type="fluid", name="Hydrofluoric_acid", amount=2},},results={{type="fluid", name="Uranium_hexafluoride", amount=1,probability =1},},}
makeRecipe{name="Uranium_tetrafluoride",energy_required=6,category="Chemical_plant",ingredients={{type="item", name="Uranium_dioxide", amount=1},{type="fluid", name="Hydrofluoric_acid", amount=4},},results={{type="item", name="Uranium_tetrafluoride", amount=1,probability =1},},}
makeRecipe{name="Uranyl_nitrate",energy_required=2.5,category="Chemical_plant",fluidIcon=true,ingredients={{type="item", name="Yellowcake", amount=1},{type="fluid", name="Nitric_acid", amount=1},},results={{type="fluid", name="Uranyl_nitrate", amount=1,probability =1},},}
makeRecipe{name="Water_distilled",energy_required=15,category="Distillation",fluidIcon=true,ingredients={{type="fluid", name="Water", amount=10},},results={{type="fluid", name="Water_distilled", amount=9,probability =1},{type="item", name="Salt", amount=1,probability =0.05},},}
makeRecipe{name="Wooden_board",energy_required=2,category="crafting",ingredients={{type="item", name="Plank", amount=2},},results={{type="item", name="Wooden_board", amount=3,probability =1},},}
makeRecipe{name="Wooden_box",energy_required=15,category="crafting",ingredients={{type="item", name="Stick", amount=30},},results={{type="item", name="Wooden_box", amount=1,probability =1},},}
makeRecipe{name="Wooden_chest",energy_required=15,category="crafting",ingredients={{type="item", name="Plank", amount=12},{type="item", name="Nail", amount=24},{type="item", name="Wooden_framework", amount=1},},results={{type="item", name="Wooden_chest", amount=1,probability =1},},}
makeRecipe{name="Wooden_framework",energy_required=6,category="crafting",ingredients={{type="item", name="Nail", amount=36},{type="item", name="Plank", amount=12},},results={{type="item", name="Wooden_framework", amount=1,probability =1},},}
makeRecipe{name="Wooden_tank_2x2",energy_required=8,category="crafting",ingredients={{type="item", name="Iron_plate", amount=4},{type="item", name="Wooden_framework", amount=6},{type="item", name="Plank", amount=24},},results={{type="item", name="Wooden_tank_2x2", amount=1,probability =1},},}
makeRecipe{name="Wooden_tank_4x4",energy_required=4,category="crafting",ingredients={{type="item", name="Wooden_tank_2x2", amount=4},{type="item", name="Iron_plate", amount=8},},results={{type="item", name="Wooden_tank_4x4", amount=1,probability =1},},}
makeRecipe{name="Workshop",energy_required=30,category="crafting",ingredients={{type="item", name="Transformer", amount=10},{type="item", name="Wooden_framework", amount=30},{type="item", name="Inserter_t2", amount=6},{type="item", name="Brick", amount=20},},results={{type="item", name="Workshop", amount=1,probability =1},},}
makeRecipe{name="Yellowcake",energy_required=6,category="Chemical_plant",ingredients={{type="item", name="Uraninite_ore_concentrate", amount=4},{type="fluid", name="Ferric_chloride_solution", amount=1},{type="fluid", name="Sulfuric_acid", amount=2},},results={{type="item", name="Yellowcake", amount=1,probability =1},{type="item", name="Sand", amount=3,probability =1},},}
makeRecipe{name="Zinc_billet",energy_required=2,category="Electrolyzer",ingredients={{type="item", name="Zinc_matte", amount=1},{type="fluid", name="Sulfuric_acid", amount=2},},results={{type="item", name="Zinc_billet", amount=1,probability =1},{type="fluid", name="Anode_slime", amount=1,probability =1},},}
makeRecipe{name="Zinc_matte",energy_required=2,category="Flash_furnace",ingredients={{type="item", name="Zinc_concentrate", amount=1},{type="fluid", name="Oxygen", amount=1},},results={{type="item", name="Zinc_matte", amount=1,probability =1},{type="item", name="Slag", amount=1,probability =0.2},{type="fluid", name="Sulfur_dioxide", amount=1,probability =0.9},{type="item", name="Germanium_concentrate", amount=1,probability =0.004},},}
makeRecipe{name="Zirconium_billet",energy_required=5,category="Electric_furnace",ingredients={{type="item", name="Zirconium_sponge", amount=8},},results={{type="item", name="Zirconium_billet", amount=1,probability =1},{type="item", name="Magnesium_chloride", amount=7,probability =1},},}
makeRecipe{name="Zirconium_sponge",energy_required=10,category="Electric_furnace",ingredients={{type="item", name="Zirconium_tetrachloride", amount=1},{type="item", name="Magnesium_billet", amount=1},},results={{type="item", name="Zirconium_sponge", amount=8,probability =1},},}
makeRecipe{name="Zirconium_tetrachloride",energy_required=12,category="Chemical_furnace",ingredients={{type="item", name="Zircon", amount=1},{type="item", name="Coal_coke", amount=2},{type="fluid", name="Chlorine", amount=4},},results={{type="item", name="Zirconium_tetrachloride", amount=1,probability =1},},}
makeRecipe{name="Zirconium_tube",energy_required=1.5,category="Assembling_machine",ingredients={{type="item", name="Zirconium_rod", amount=1},},results={{type="item", name="Zirconium_tube", amount=1,probability =1},},}


