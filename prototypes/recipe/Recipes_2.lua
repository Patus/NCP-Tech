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
local gases={"Argon","Air","Butadiene","Carbon_monoxide","Chlorine","Coal_gas","Ethylene","Hydrogen","Hydrogen_chlorine","Hydrogen_fluoride","Nitrogen","Nitrogen_dioxide","Oxygen","Petroleum_gas",
		"Sulfur_dioxide","Sulfur_trioxide","Uranium_hexafluoride","Syngas"}

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

--dense

local densemetals={"Iron","Copper","Steel","Lead"}

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


makeTransportBelt("crude",0.25/32)
makeTransportBelt("basic",0.5/32)
makeTransportBelt("normal",1/32)
makeTransportBelt("fast",2/32)
makeTransportBelt("improved_fast",4/32)
makeTransportBelt("express",8/32)
makeTransportBelt("improved_express",16/32)

makeUnderTransportBelt("crude","a",0.25/32,3)
makeUnderTransportBelt("basic","a",0.5/32,6)
makeUnderTransportBelt("normal","a",1/32,9)
makeUnderTransportBelt("fast","a",2/32,12)
makeUnderTransportBelt("improved_fast","a",4/32,15)
makeUnderTransportBelt("express","a",8/32,18)
makeUnderTransportBelt("improved_express","a",16/32,21)

makeUnderTransportBelt("basic","b",0.5/32,6)
makeUnderTransportBelt("normal","b",1/32,9)
makeUnderTransportBelt("fast","b",2/32,12)
makeUnderTransportBelt("improved_fast","b",4/32,15)
makeUnderTransportBelt("express","b",8/32,18)
makeUnderTransportBelt("improved_express","b",16/32,21)

makeUnderTransportBelt("normal","c",1/32,9)
makeUnderTransportBelt("fast","c",2/32,12)
makeUnderTransportBelt("improved_fast","c",4/32,15)
makeUnderTransportBelt("express","c",8/32,18)
makeUnderTransportBelt("improved_express","c",16/32,21)

makeUnderTransportBelt("fast","d",2/32,12)
makeUnderTransportBelt("improved_fast","d",4/32,15)
makeUnderTransportBelt("express","d",8/32,18)
makeUnderTransportBelt("improved_express","d",16/32,21)

--]]
--makeUnderTransportBelt("fast","e",2/32,12)
--makeUnderTransportBelt("improved_fast","e",4/32,15)
--makeUnderTransportBelt("express","e",8/32,18)
--makeUnderTransportBelt("improved_express","e",16/32,21)




makeSplitter("crude",0.25/32)
makeSplitter("basic",0.5/32)
makeSplitter("normal",1/32)
makeSplitter("fast",2/32)
makeSplitter("improved_fast",4/32)
makeSplitter("express",8/32)
makeSplitter("improved_express",16/32)


makeNormalBurnerInserter("crude",0.0025,0.0025,500000,500000,0.1,20)
makeNormalBurnerInserter("basic",0.005,0.005,1000000,1000000,0.1,30)
makeNormalElectricInserter("normal",0.01,0.01,5000,5000,"20kW")
makeNormalElectricInserter("fast",0.02,0.02,10000,10000,"40kW")
makeNormalElectricInserter("improved_fast",0.08,0.08,20000,20000,"80kW")
makeNormalElectricInserter("express",0.32,0.32,80000,80000,"160kW")
makeNormalElectricInserter("improved_express",0.64,0.64,160000,160000,"320kW")

makeLongBurnerInserter("crude",0.005,0.005,1000000,1000000,0.1,20)
makeLongBurnerInserter("basic",0.01,0.01,2000000,2000000,0.1,30)
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




--Itemeitä

makeRecipe{name="Inserter_basic",
ingredients={
{type="item", name="Iron_rod", amount=4},
{type="item", name="Iron_plate", amount=4},
{type="item", name="Basic_electric_motor", amount=2},
{type="item", name="Iron_transmission_chain", amount=2},
}
}

makeRecipe{name="Active_provider_chest",energy_required=3,ingredients={{type="item", name="Computer", amount=2},{type="item", name="Titanium_chest", amount=1},{type="item", name="Sensor", amount=1},}}
makeRecipe{name="Assembling_machine",energy_required=15,ingredients={{type="item", name="Iron_tools", amount=8},{type="item", name="Transport_belt_basic", amount=8},{type="item", name="Inserter_basic", amount=4},{type="item", name="Iron_riveted_plate", amount=20},}}
makeRecipe{name="Assembling_machine_mk2",energy_required=10,ingredients={{type="item", name="Assembling_machine", amount=1},{type="item", name="Steel_bearing", amount=10},{type="item", name="Inserter_basic_long", amount=2},{type="item", name="Compressor", amount=1},}}
--makeRecipe{name="Assembling_machine_mk3",energy_required=15,ingredients={{type="item", name="Factory_frame", amount=1},{type="item", name="Inserter", amount=8},{type="item", name="Transport_belt_fast", amount=12},{type="item", name="Acetylene_bottle", amount=20},{type="item", name="Compressor", amount=1},}}
makeRecipe{name="Assembling_machine_mk4",energy_required=10,ingredients={{type="item", name="Assembling_machine_mk3", amount=1},{type="item", name="Circuit_board", amount=10},{type="item", name="Inserter_fast", amount=6},{type="item", name="Tungsten_carbide_rod", amount=10},{type="item", name="Inserter_improved_fast", amount=4},}}
makeRecipe{name="Assembling_machine_mk5",energy_required=10,ingredients={{type="item", name="Assembling_machine_mk4", amount=1},{type="item", name="Computer", amount=10},{type="item", name="Inserter_express", amount=6},{type="item", name="Crystal_laser", amount=6},{type="item", name="Inserter_fast", amount=4},}}
makeRecipe{name="Basic_electric_motor",energy_required=2,ingredients={{type="item", name="Electric_motor_hull", amount=1},{type="item", name="Electric_rotor", amount=1},}}
makeRecipe{name="Basic_mining_drill",energy_required=12,ingredients={{type="item", name="Drill_frame_basic", amount=1},{type="item", name="Basic_electric_motor", amount=3},{type="item", name="Transport_belt_basic", amount=3},{type="item", name="Iron_drill_bit", amount=12},}}
makeRecipe{name="Blast_furnace_basic",energy_required=60,ingredients={{type="item", name="Iron_riveted_dense_plate", amount=20},{type="item", name="Refractory_furnace", amount=8},{type="item", name="Brick", amount=200},{type="item", name="Iron_pipe", amount=10},}}
makeRecipe{name="Boiler",energy_required=15,ingredients={{type="item", name="Steel_riveted_dense_plate", amount=10},{type="item", name="Steel_pipe", amount=4},}}
makeRecipe{name="Boiler_basic",energy_required=15,ingredients={{type="item", name="Copper_dense_plate", amount=8},{type="item", name="Copper_pipe", amount=4},}}
makeRecipe{name="Brass_dense_pipe",energy_required=5,ingredients={{type="item", name="Brass_dense_plate", amount=2},}}
makeRecipe{name="Brass_pipe",energy_required=5,ingredients={{type="item", name="Brass_plate", amount=2},}}
makeRecipe{name="Chemical_pipe",energy_required=15,ingredients={{type="item", name="Iron_riveted_plate", amount=10},{type="item", name="Refractory_furnace", amount=1},{type="item", name="Iron_pipe", amount=4},}}
makeRecipe{name="Chemical_plant",energy_required=15,ingredients={{type="item", name="Factory_frame", amount=1},{type="item", name="Electronics_board", amount=15},{type="item", name="Plastic_pipe", amount=30},{type="item", name="Stainless_steel_plate", amount=40},{type="item", name="Electric_chemical_furnace", amount=1},}}
makeRecipe{name="Chemical_plant_basic",energy_required=15,ingredients={{type="item", name="Lead_pipe", amount=12},{type="item", name="Transformer", amount=2},{type="item", name="Refractory_furnace", amount=1},{type="item", name="Iron_plate", amount=10},}}
makeRecipe{name="Chemical_plant_mk2",energy_required=20,ingredients={{type="item", name="Circuit_board", amount=20},{type="item", name="Tungsten_wire", amount=30},{type="item", name="Chemical_plant", amount=1},{type="item", name="Compressor_mk2", amount=4},}}
makeRecipe{name="Coal_power_plant",energy_required=70,ingredients={{type="item", name="Boiler_basic", amount=20},{type="item", name="Steel_dense_plate", amount=10},{type="item", name="Brick", amount=300},{type="item", name="Transformer", amount=5},{type="item", name="Steam_turbine", amount=1},}}
makeRecipe{name="Coal_power_plant_mk2",energy_required=45,ingredients={{type="item", name="Coal_power_plant", amount=1},{type="item", name="Stainless_steel_tank_4x4", amount=1},{type="item", name="HV_transformer", amount=5},{type="item", name="Steam_turbine_mk2", amount=1},}}
makeRecipe{name="Concrete_wall",energy_required=2,ingredients={{type="item", name="Concrete_block", amount=5},{type="item", name="Steel_rod", amount=3},}}
makeRecipe{name="Cooling_tower",energy_required=30,ingredients={{type="item", name="Large_factory_frame", amount=1},{type="item", name="Stainless_steel_pipe", amount=30},{type="item", name="Heat_exchanger", amount=80},}}
makeRecipe{name="Copper_dense_pipe",energy_required=4,ingredients={{type="item", name="Copper_dense_plate", amount=2},}}
makeRecipe{name="Copper_pipe",energy_required=4,ingredients={{type="item", name="Copper_plate", amount=2},}}
makeRecipe{name="Cracking_plant",energy_required=15,ingredients={{type="item", name="Factory_frame", amount=1},{type="item", name="Distillery", amount=1},{type="item", name="Steel_pipe", amount=6},{type="item", name="Basic_electronics_board", amount=5},}}
makeRecipe{name="Cracking_plant_mk2",energy_required=10,ingredients={{type="item", name="Cracking_plant", amount=1},{type="item", name="Distillery_mk2", amount=1},{type="item", name="Stainless_steel_pipe", amount=10},{type="item", name="Circuit_board", amount=20},{type="item", name="HV_transformer", amount=4},}}
makeRecipe{name="Crusher",energy_required=15,ingredients={{type="item", name="Steel_riveted_plate", amount=12},{type="item", name="Basic_electric_motor", amount=8},{type="item", name="Steel_gear", amount=24},{type="item", name="Steel_bearing", amount=4},}}
makeRecipe{name="Crusher_basic",energy_required=14,ingredients={{type="item", name="Basic_electric_motor", amount=4},{type="item", name="Iron_gear", amount=12},{type="item", name="Iron_riveted_plate", amount=6},{type="item", name="Iron_transmission_chain", amount=2},}}
makeRecipe{name="Crusher_mk2",energy_required=10,ingredients={{type="item", name="Circuit_board", amount=5},{type="item", name="Crusher", amount=1},{type="item", name="LV_electric_motor", amount=8},{type="item", name="Tungsten_carbide_gear", amount=24},}}
makeRecipe{name="Cryogenic_distillation_plant",energy_required=60,ingredients={{type="item", name="Compressor_mk2", amount=10},{type="item", name="Circuit_board", amount=20},{type="item", name="Cryogenic_pipe", amount=80},{type="item", name="Molecular_sieve", amount=60},{type="item", name="Cooling_system", amount=30},}}
makeRecipe{name="Cryogenic_pipe",energy_required=3,ingredients={{type="item", name="Aluminium_plate", amount=2},{type="item", name="Stainless_steel_pipe", amount=1},{type="item", name="Polystyrene", amount=4},}}
makeRecipe{name="Currency_exchange",energy_required=15,ingredients={{type="item", name="Iron_riveted_plate", amount=30},{type="item", name="Wooden_framework", amount=30},{type="item", name="Brick", amount=30},}}
makeRecipe{name="Curved_track",energy_required=1,ingredients={{type="item", name="Track", amount=5},}}
makeRecipe{name="Diesel_generator",energy_required=10,ingredients={{type="item", name="Transformer", amount=1},{type="item", name="Basic_electric_motor", amount=6},{type="item", name="Diesel_engine", amount=1},{type="item", name="Steel_transmission_chain", amount=2},{type="item", name="Basic_electronics_board", amount=4},}}
makeRecipe{name="Diesel_locomotive",energy_required=40,ingredients={{type="item", name="Large_diesel_engine", amount=1},{type="item", name="Hydraulic_transmission", amount=1},{type="item", name="Battery", amount=20},{type="item", name="Electronics_board", amount=10},{type="item", name="Diesel_locomotive_hull_part", amount=4},}}
makeRecipe{name="Diesel_electric_locomotive",energy_required=40,ingredients={{type="item", name="Diesel_locomotive_hull_part", amount=4},{type="item", name="Battery", amount=30},{type="item", name="Diesel_electric_engine", amount=1},{type="item", name="Circuit_board", amount=20},{type="item", name="HV_electric_motor", amount=24},}}
makeRecipe{name="Distillery",energy_required=10,ingredients={{type="item", name="Boiler", amount=1},{type="item", name="Glass", amount=50},{type="item", name="Steel_tank_2x2", amount=1},}}
makeRecipe{name="Distillery_basic",energy_required=8,ingredients={{type="item", name="Boiler_basic", amount=1},{type="item", name="Copper_pipe", amount=2},{type="item", name="Wooden_tank_2x2", amount=1},}}
makeRecipe{name="Distillery_mk2",energy_required=10,ingredients={{type="item", name="Nichrome_wire", amount=80},{type="item", name="Stainless_steel_tank_2x2", amount=1},{type="item", name="Electronics_board", amount=15},{type="item", name="Factory_frame", amount=1},{type="item", name="Distillery", amount=1},}}
makeRecipe{name="Distribution_pole",energy_required=1,ingredients={{type="item", name="Copper_wire", amount=6},{type="item", name="Transformer", amount=1},{type="item", name="Raw_wood", amount=1},}}
makeRecipe{name="Distribution_pole_mk2",energy_required=2,ingredients={{type="item", name="Copper_wire", amount=8},{type="item", name="Stainless_steel_plate", amount=6},{type="item", name="Distribution_pole", amount=1},}}
makeRecipe{name="Drill_frame_basic",energy_required=8,ingredients={{type="item", name="Iron_riveted_plate", amount=6},{type="item", name="Iron_rod", amount=20},{type="item", name="Iron_transmission_chain", amount=3},}}
makeRecipe{name="Electric_arc_furnace",energy_required=30,ingredients={{type="item", name="Graphite_electrode", amount=3},{type="item", name="Transformer", amount=20},{type="item", name="Refractory_brick", amount=40},{type="item", name="Basic_electronics_board", amount=20},{type="item", name="Steel_plate", amount=50},{type="item", name="Factory_frame", amount=1},}}
makeRecipe{name="Electric_chemical_furnace",energy_required=10,ingredients={{type="item", name="Electric_furnace", amount=1},{type="item", name="Steel_pipe", amount=6},{type="item", name="Graphite_rod", amount=10},}}
makeRecipe{name="Electric_chemical_furnace_mk2",energy_required=10,ingredients={{type="item", name="Electric_chemical_furnace", amount=1},{type="item", name="Nichrome_wire", amount=80},{type="item", name="Compressor", amount=1},{type="item", name="Electronics_board", amount=10},}}
makeRecipe{name="Electric_chemical_furnace_mk3",energy_required=10,ingredients={{type="item", name="Circuit_board", amount=20},{type="item", name="Tungsten_wire", amount=30},{type="item", name="Compressor_mk2", amount=2},{type="item", name="Electric_chemical_furnace_mk2", amount=1},}}
makeRecipe{name="Electric_flash_furnace",energy_required=10,ingredients={{type="item", name="Electric_furnace_mk2", amount=1},{type="item", name="Stainless_steel_pipe", amount=10},{type="item", name="Compressor", amount=1},}}
makeRecipe{name="Electric_flash_furnace_mk2",energy_required=10,ingredients={{type="item", name="Electric_furnace_mk3", amount=1},{type="item", name="Compressor_mk2", amount=2},}}
makeRecipe{name="Electric_furnace",energy_required=60,ingredients={{type="item", name="Steel_wire", amount=80},{type="item", name="Refractory_brick", amount=20},{type="item", name="Basic_electronics_board", amount=4},{type="item", name="Factory_frame", amount=1},}}
makeRecipe{name="Electric_furnace_mk2",energy_required=10,ingredients={{type="item", name="Nichrome_wire", amount=80},{type="item", name="Electronics_board", amount=20},{type="item", name="Electric_furnace", amount=1},}}
makeRecipe{name="Electric_furnace_mk3",energy_required=10,ingredients={{type="item", name="Circuit_board", amount=20},{type="item", name="Tungsten_wire", amount=30},{type="item", name="Electric_furnace_mk2", amount=1},}}
makeRecipe{name="Electric_motor_hull",energy_required=5,ingredients={{type="item", name="Copper_wire", amount=3},{type="item", name="Iron_riveted_plate", amount=1},}}
makeRecipe{name="Electric_pole",energy_required=1,ingredients={{type="item", name="Copper_wire", amount=4},{type="item", name="Raw_wood", amount=1},}}
makeRecipe{name="Electric_rotor",energy_required=4,ingredients={{type="item", name="Copper_wire", amount=3},{type="item", name="Iron_rod", amount=1},{type="item", name="Iron_gear", amount=1},}}
makeRecipe{name="Electrolyzer",energy_required=15,ingredients={{type="item", name="Electronics_board", amount=30},{type="item", name="Transformer", amount=20},{type="item", name="Plastic_pipe", amount=30},{type="item", name="Stainless_steel_plate", amount=50},{type="item", name="Factory_frame", amount=2},}}
makeRecipe{name="Electrolyzer_basic",energy_required=15,ingredients={{type="item", name="Iron_riveted_plate", amount=15},{type="item", name="Copper_pipe", amount=6},{type="item", name="Transformer", amount=4},}}
makeRecipe{name="Electrolyzer_mk2",energy_required=20,ingredients={{type="item", name="Circuit_board", amount=30},{type="item", name="Electrolyzer_mk2", amount=1},{type="item", name="Gold_wire", amount=30},}}
makeRecipe{name="Electronics_assembling_macine",energy_required=20,ingredients={{type="item", name="Factory_frame", amount=1},{type="item", name="Circuit_board", amount=8},{type="item", name="Inserter_fast", amount=9},{type="item", name="Excimer_laser", amount=10},}}
makeRecipe{name="Extruder",energy_required=15,ingredients={{type="item", name="Basic_electric_motor", amount=4},{type="item", name="Transport_belt_normal", amount=2},{type="item", name="Steel_dense_plate", amount=1},{type="item", name="Transformer", amount=2},{type="item", name="Steel_wire", amount=20},}}
makeRecipe{name="Extruder_basic",energy_required=15,ingredients={{type="item", name="Extruder_crude", amount=1},{type="item", name="Basic_electric_motor", amount=2},{type="item", name="Transformer", amount=1},{type="item", name="Transport_belt_basic", amount=2},}}
makeRecipe{name="Extruder_crude",energy_required=20,ingredients={{type="item", name="Furnace", amount=1},{type="item", name="Iron_plate", amount=8},}}
makeRecipe{name="Extruder_mk2",energy_required=10,ingredients={{type="item", name="Transport_belt_fast", amount=2},{type="item", name="Extruder", amount=1},{type="item", name="LV_electric_motor", amount=4},}}
makeRecipe{name="Farm",energy_required=15,ingredients={{type="item", name="Plastic_pipe", amount=15},{type="item", name="Stainless_steel_tank_4x4", amount=1},{type="item", name="Wooden_framework", amount=30},{type="item", name="Pump", amount=2},{type="item", name="Electronics_board", amount=5},}}
makeRecipe{name="Farm_basic",energy_required=15,ingredients={{type="item", name="Copper_pipe", amount=4},{type="item", name="Wooden_tank_4x4", amount=1},{type="item", name="Wooden_framework", amount=20},{type="item", name="Pump_basic", amount=1},}}
makeRecipe{name="Fast_long_inster",energy_required=8,ingredients={{type="item", name="Hydraulic_pump", amount=1},{type="item", name="Inserter_fast", amount=1},{type="item", name="Hydraulic_piston", amount=3},}}
makeRecipe{name="Flash_furnace",energy_required=15,ingredients={{type="item", name="Iron_riveted_plate", amount=15},{type="item", name="Iron_plate", amount=2},{type="item", name="Furnace", amount=1},}}
makeRecipe{name="Furnace",energy_required=40,ingredients={{type="item", name="Quarried_stone", amount=20},}}
makeRecipe{name="Furnace",energy_required=30,ingredients={{type="item", name="Brick", amount=20},}}
makeRecipe{name="Gas_turbine_power_plant",energy_required=90,ingredients={{type="item", name="Gas_turbine_generator", amount=1},{type="item", name="Large_factory_frame", amount=1},{type="item", name="Cooling_tower", amount=1},{type="item", name="Circuit_board", amount=20},{type="item", name="Steam_turbine_mk3", amount=1},}}
makeRecipe{name="Green_wire",energy_required=1,ingredients={{type="item", name="Data_cable", amount=1},}}
makeRecipe{name="Grinding_mill",energy_required=15,ingredients={{type="item", name="Steel_riveted_plate", amount=12},{type="item", name="Basic_electric_motor", amount=4},{type="item", name="Steel_gear", amount=12},{type="item", name="Steel_bearing", amount=4},{type="item", name="Steel_pipe", amount=8},}}
makeRecipe{name="Grinding_mill_basic",energy_required=10,ingredients={{type="item", name="Basic_electric_motor", amount=2},{type="item", name="Iron_gear", amount=6},{type="item", name="Iron_riveted_plate", amount=6},{type="item", name="Iron_pipe", amount=4},}}
makeRecipe{name="Grinding_mill_mk2",energy_required=10,ingredients={{type="item", name="LV_electric_motor", amount=3},{type="item", name="Tungsten_carbide_gear", amount=12},{type="item", name="Grinding_mill", amount=1},{type="item", name="Circuit_board", amount=5},}}
makeRecipe{name="Gunpowder",energy_required=10,results={{type="item", name="Gunpowder", amount=10,probability =1}},ingredients={{type="item", name="Charcoal", amount=2},{type="item", name="Sulfur", amount=1},{type="item", name="Potassium_nitrate", amount=7},}}
makeRecipe{name="HS_curved_track",energy_required=4,ingredients={{type="item", name="HS_track", amount=5},}}
makeRecipe{name="HS_track",energy_required=4,ingredients={{type="item", name="Gravel", amount=15},{type="item", name="Steel_HS_rail", amount=2},{type="item", name="Concrete_block", amount=8},}}
makeRecipe{name="Inserter_basic",energy_required=10,ingredients={{type="item", name="Basic_electric_motor", amount=1},{type="item", name="Iron_rod", amount=4},{type="item", name="Iron_transmission_chain", amount=2},{type="item", name="Iron_plate", amount=4},}}
makeRecipe{name="Iron_ball",energy_required=5,results={{type="item", name="Iron_ball", amount=12,probability =1}},ingredients={{type="item", name="Iron_rod", amount=1},}}
makeRecipe{name="Iron_bearing",energy_required=4,ingredients={{type="item", name="Iron_ball", amount=8},{type="item", name="Iron_bearing_hull", amount=1},}}
makeRecipe{name="Iron_bearing_hull",energy_required=2,results={{type="item", name="Iron_bearing_hull", amount=2,probability =1}},ingredients={{type="item", name="Iron_plate", amount=1},}}
makeRecipe{name="Iron_chest",energy_required=15,ingredients={{type="item", name="Iron_plate", amount=6},{type="item", name="Iron_rivet", amount=48},}}
makeRecipe{name="Iron_dense_pipe",energy_required=12,ingredients={{type="item", name="Iron_riveted_dense_plate", amount=2},}}
makeRecipe{name="Iron_dense_underground_pipe",energy_required=8,results={{type="item", name="Iron_dense_underground_pipe", amount=2,probability =1}},ingredients={{type="item", name="Iron_dense_pipe", amount=24},}}
makeRecipe{name="Iron_drill_bit",energy_required=4,ingredients={{type="item", name="Iron_bearing", amount=3},{type="item", name="Iron_gear", amount=9},{type="item", name="Iron_rod", amount=1},}}
makeRecipe{name="Iron_engine_block",energy_required=5,ingredients={{type="item", name="Iron_billet", amount=2},{type="item", name="Iron_pipe", amount=1},}}
makeRecipe{name="Iron_pipe",energy_required=6,ingredients={{type="item", name="Iron_riveted_plate", amount=2},}}
makeRecipe{name="Iron_piston",energy_required=2,ingredients={{type="item", name="Iron_plate", amount=1},{type="item", name="Iron_rod", amount=1},}}
makeRecipe{name="Iron_rivet",energy_required=3,results={{type="item", name="Iron_rivet", amount=6,probability =1}},ingredients={{type="item", name="Iron_wire", amount=1},}}
makeRecipe{name="Iron_riveted_dense_plate",energy_required=10,ingredients={{type="item", name="Iron_dense_plate", amount=1},{type="item", name="Iron_rivet", amount=16},}}
makeRecipe{name="Iron_riveted_plate",energy_required=5,ingredients={{type="item", name="Iron_plate", amount=1},{type="item", name="Iron_rivet", amount=8},}}
makeRecipe{name="Iron_tools",energy_required=12,ingredients={{type="item", name="Stick", amount=1},{type="item", name="Iron_rod", amount=1},}}
makeRecipe{name="Iron_underground_pipe",energy_required=4,results={{type="item", name="Iron_underground_pipe", amount=2,probability =1}},ingredients={{type="item", name="Iron_pipe", amount=24},}}
makeRecipe{name="Laboratory",energy_required=35,ingredients={{type="item", name="HV_transformer", amount=2},{type="item", name="Factory_frame", amount=1},{type="item", name="Inserter_normal", amount=5},{type="item", name="LV_electric_engine", amount=5},{type="item", name="Glass", amount=30},{type="item", name="Battery", amount=15},}}
makeRecipe{name="Lead_dense_pipe",energy_required=3,ingredients={{type="item", name="Lead_dense_plate", amount=2},}}
makeRecipe{name="Lead_pipe",energy_required=3,ingredients={{type="item", name="Lead_plate", amount=2},}}
makeRecipe{name="Inserter_normal_long",energy_required=8,ingredients={{type="item", name="Basic_electric_motor", amount=1},{type="item", name="Inserter_normal", amount=1},{type="item", name="Steel_rod", amount=2},}}
makeRecipe{name="Inserter_basic_long",energy_required=6,ingredients={{type="item", name="Inserter_basic", amount=1},{type="item", name="Basic_electric_motor", amount=1},{type="item", name="Iron_rod", amount=2},}}
makeRecipe{name="Mining_drill",energy_required=15,ingredients={{type="item", name="Drill_frame", amount=1},{type="item", name="Basic_electric_motor", amount=3},{type="item", name="Transport_belt_normal", amount=3},{type="item", name="Steel_drill_bit", amount=12},}}
makeRecipe{name="Nail",energy_required=3,results={{type="item", name="Nail", amount=12,probability =1}},ingredients={{type="item", name="Iron_wire", amount=1},}}
makeRecipe{name="Nail",energy_required=3,results={{type="item", name="Nail", amount=12,probability =1}},ingredients={{type="item", name="Steel_wire", amount=1},}}
makeRecipe{name="Nuclear_fuel_processing_plant",energy_required=60,ingredients={{type="item", name="Compressor_mk2", amount=1},{type="item", name="Large_factory_frame", amount=1},{type="item", name="Gas_centrifuge", amount=100},{type="item", name="Stainless_steel_pipe", amount=20},{type="item", name="Computer", amount=30},}}
makeRecipe{name="Nuclear_power_plant",energy_required=120,ingredients={{type="item", name="Cooling_tower", amount=1},{type="item", name="Large_factory_frame", amount=1},{type="item", name="Stainless_steel_pipe", amount=35},{type="item", name="Nuclear_reactor", amount=1},{type="item", name="Sensor", amount=40},{type="item", name="Steam_turbine_mk3", amount=1},}}
makeRecipe{name="Nuclear_reactor",energy_required=30,ingredients={{type="item", name="Lead_dense_plate", amount=60},{type="item", name="Large_factory_frame", amount=12},{type="item", name="Silver_rod", amount=50},{type="item", name="Inconel_dense_plate", amount=30},}}
makeRecipe{name="Oil_power_plant",energy_required=60,ingredients={{type="item", name="Stainless_steel_tank_4x4", amount=2},{type="item", name="HV_transformer", amount=5},{type="item", name="Steam_turbine_mk2", amount=1},{type="item", name="Large_factory_frame", amount=1},{type="item", name="Stainless_steel_pipe", amount=20},}}
makeRecipe{name="Ore_washer",energy_required=15,ingredients={{type="item", name="Basic_electric_motor", amount=6},{type="item", name="Transport_belt_normal", amount=6},{type="item", name="Stainless_steel_pipe", amount=4},{type="item", name="Stainless_steel_tank_4x4", amount=1},{type="item", name="Compressor", amount=1},}}
makeRecipe{name="Ore_washer_basic",energy_required=15,ingredients={{type="item", name="Basic_electric_motor", amount=2},{type="item", name="Wooden_tank_2x2", amount=4},{type="item", name="Iron_riveted_plate", amount=6},{type="item", name="Transport_belt_basic", amount=4},}}
makeRecipe{name="Ore_washer_mk2",energy_required=10,ingredients={{type="item", name="Circuit_board", amount=5},{type="item", name="Transport_belt_fast", amount=6},{type="item", name="Ore_washer", amount=1},{type="item", name="Compressor_mk2", amount=1},}}
makeRecipe{name="Passive_provider_chest",energy_required=3,ingredients={{type="item", name="Computer", amount=2},{type="item", name="Titanium_chest", amount=1},{type="item", name="Sensor", amount=1},}}
makeRecipe{name="Plank",energy_required=2,results={{type="item", name="Plank", amount=4,probability =1}},ingredients={{type="item", name="Raw_wood", amount=1},}}
makeRecipe{name="Pump_jack_basic",energy_required=10,ingredients={{type="item", name="Basic_electric_motor", amount=2},{type="item", name="Iron_piston", amount=1},{type="item", name="Iron_riveted_plate", amount=6},{type="item", name="Iron_pipe", amount=12},}}
makeRecipe{name="Radar",energy_required=15,ingredients={{type="item", name="Magnetron", amount=6},{type="item", name="HV_transformer", amount=1},{type="item", name="Radar_antenna", amount=1},{type="item", name="Electronics_board", amount=30},}}
makeRecipe{name="Rail_chain_signal",energy_required=2,ingredients={{type="item", name="Rail_signal", amount=1},{type="item", name="Circuit_board", amount=2},}}
makeRecipe{name="Rail_signal",energy_required=4,ingredients={{type="item", name="Lamp", amount=3},{type="item", name="Steel_rod", amount=2},{type="item", name="Circuit_board", amount=1},}}
makeRecipe{name="Red_wire",energy_required=1,ingredients={{type="item", name="Data_cable", amount=1},}}
makeRecipe{name="Refinery",energy_required=45,ingredients={{type="item", name="Distillery", amount=2},{type="item", name="Large_factory_frame", amount=1},{type="item", name="Steel_pipe", amount=20},{type="item", name="Transformer", amount=8},}}
makeRecipe{name="Refinery_mk2",energy_required=30,ingredients={{type="item", name="Refinery", amount=1},{type="item", name="Distillery_mk2", amount=2},{type="item", name="Stainless_steel_pipe", amount=40},{type="item", name="Circuit_board", amount=30},{type="item", name="HV_transformer", amount=8},}}
makeRecipe{name="Refractory_furnace",energy_required=15,ingredients={{type="item", name="Refractory_brick", amount=20},}}
makeRecipe{name="Requester_chest",energy_required=3,ingredients={{type="item", name="Computer", amount=2},{type="item", name="Titanium_chest", amount=1},{type="item", name="Sensor", amount=1},}}
makeRecipe{name="Roboport",energy_required=30,ingredients={{type="item", name="Copper_wire", amount=50},{type="item", name="Large_Li-ion_battery", amount=4},{type="item", name="Factory_frame", amount=1},{type="item", name="Inserter_express", amount=2},{type="item", name="Sensor", amount=20},}}
makeRecipe{name="Rolling_machine",energy_required=15,ingredients={{type="item", name="Steel_bearing", amount=8},{type="item", name="Transport_belt_normal", amount=2},{type="item", name="Basic_electric_motor", amount=8},{type="item", name="Steel_billet", amount=8},{type="item", name="Transformer", amount=2},}}
makeRecipe{name="Rolling_machine_basic",energy_required=15,ingredients={{type="item", name="Rolling_machine_crude", amount=1},{type="item", name="Basic_electric_motor", amount=2},{type="item", name="Transformer", amount=1},{type="item", name="Transport_belt_basic", amount=2},}}
makeRecipe{name="Rolling_machine_crude",energy_required=20,ingredients={{type="item", name="Furnace", amount=1},{type="item", name="Iron_billet", amount=4},}}
makeRecipe{name="Rolling_machine_mk2",energy_required=10,ingredients={{type="item", name="Transport_belt_fast", amount=2},{type="item", name="Rolling_machine", amount=1},{type="item", name="LV_electric_motor", amount=8},}}
makeRecipe{name="Rotary_kiln",energy_required=15,ingredients={{type="item", name="Refractory_brick", amount=40},{type="item", name="Steel_riveted_plate", amount=60},{type="item", name="Basic_electric_motor", amount=10},{type="item", name="Steel_gear", amount=20},}}
makeRecipe{name="Small_gearbox",energy_required=10,ingredients={{type="item", name="Steel_bearing", amount=8},{type="item", name="Steel_gear", amount=8},{type="item", name="Steel_plate", amount=8},{type="item", name="Steel_rod", amount=1},}}
makeRecipe{name="Solar_array",energy_required=10,ingredients={{type="item", name="Aluminium_rod", amount=20},{type="item", name="Solar_panel", amount=16},{type="item", name="Aluminium_plate", amount=5},}}
makeRecipe{name="Solar_array_mk2",energy_required=10,ingredients={{type="item", name="Aluminium_rod", amount=20},{type="item", name="Solar_panel_mk2", amount=16},{type="item", name="Aluminium_plate", amount=5},{type="item", name="LV_electric_motor", amount=1},}}
makeRecipe{name="Splitter",energy_required=2,ingredients={{type="item", name="Iron_plate", amount=4},{type="item", name="Transport_belt_normal", amount=2},{type="item", name="Basic_electric_motor", amount=1},}}
makeRecipe{name="Splitter_basic",energy_required=2,ingredients={{type="item", name="Transport_belt_basic", amount=2},{type="item", name="Copper_plate", amount=1},}}
makeRecipe{name="Splitter_crude",energy_required=2,ingredients={{type="item", name="Plank", amount=1},{type="item", name="Transport_belt_crude", amount=2},}}
makeRecipe{name="Splitter_fast",energy_required=6,ingredients={{type="item", name="Steel_riveted_plate", amount=4},{type="item", name="Basic_electronics_board", amount=2},{type="item", name="Transport_belt_fast", amount=2},{type="item", name="Basic_electric_motor", amount=2},}}
makeRecipe{name="Stainless_steel_tank_2x2",energy_required=10,ingredients={{type="item", name="Stainless_steel_plate", amount=60},{type="item", name="Stainless_steel_pipe", amount=4},}}
makeRecipe{name="Stainless_steel_tank_4x4",energy_required=5,ingredients={{type="item", name="Stainless_steel_tank_2x2", amount=4},}}
makeRecipe{name="Steam_engine_generator",energy_required=20,ingredients={{type="item", name="Iron_transmission_chain", amount=2},{type="item", name="Iron_piston", amount=3},{type="item", name="Iron_engine_block", amount=3},{type="item", name="Basic_electric_motor", amount=8},{type="item", name="Transformer", amount=4},}}
makeRecipe{name="Steam_tubine",energy_required=50,ingredients={{type="item", name="Basic_electric_motor", amount=30},{type="item", name="Steel_plate", amount=80},{type="item", name="Steel_bearing", amount=20},}}
makeRecipe{name="Steel_chest",energy_required=15,ingredients={{type="item", name="Steel_bearing", amount=4},{type="item", name="Steel_riveted_plate", amount=24},{type="item", name="Steel_rod", amount=2},}}
makeRecipe{name="Steel_dense_pipe",energy_required=12,ingredients={{type="item", name="Steel_riveted_dense_plate", amount=2},}}
makeRecipe{name="Steel_dense_underground_pipe",energy_required=8,results={{type="item", name="Steel_dense_underground_pipe", amount=2,probability =1}},ingredients={{type="item", name="Steel_dense_pipe", amount=24},}}
makeRecipe{name="Steel_pipe",energy_required=6,ingredients={{type="item", name="Steel_riveted_plate", amount=2},}}
makeRecipe{name="Steel_rivet",energy_required=3,results={{type="item", name="Steel_rivet", amount=6,probability =1}},ingredients={{type="item", name="Steel_wire", amount=1},}}
makeRecipe{name="Steel_riveted_dense_plate",energy_required=10,ingredients={{type="item", name="Steel_dense_plate", amount=1},{type="item", name="Steel_rivet", amount=16},}}
makeRecipe{name="Steel_riveted_plate",energy_required=5,ingredients={{type="item", name="Steel_plate", amount=1},{type="item", name="Steel_rivet", amount=8},}}
makeRecipe{name="Steel_tank_2x2",energy_required=10,ingredients={{type="item", name="Nickel_plate", amount=10},{type="item", name="Steel_riveted_plate", amount=40},{type="item", name="Steel_pipe", amount=4},}}
makeRecipe{name="Steel_tank_4x4",energy_required=5,ingredients={{type="item", name="Steel_tank_2x2", amount=4},}}
makeRecipe{name="Steel_tools",energy_required=12,ingredients={{type="item", name="Stick", amount=1},{type="item", name="Steel_rod", amount=1},}}
makeRecipe{name="Steel_underground_pipe",energy_required=4,results={{type="item", name="Steel_underground_pipe", amount=2,probability =1}},ingredients={{type="item", name="Steel_pipe", amount=24},}}
makeRecipe{name="Stick",energy_required=2,results={{type="item", name="Stick", amount=15,probability =1}},ingredients={{type="item", name="Raw_wood", amount=1},}}
makeRecipe{name="Stirling_engine",energy_required=3,ingredients={{type="item", name="Iron_engine_block", amount=1},{type="item", name="Iron_piston", amount=2},{type="item", name="Furnace", amount=1},{type="item", name="Iron_transmission_chain", amount=1},}}
makeRecipe{name="Inserter_crude",energy_required=8,ingredients={{type="item", name="Stirling_engine", amount=1},{type="item", name="Iron_rod", amount=4},{type="item", name="Iron_plate", amount=4},}}
makeRecipe{name="Stirling_miner",energy_required=10,ingredients={{type="item", name="Stirling_engine", amount=1},{type="item", name="Drill_frame_basic", amount=1},{type="item", name="Iron_drill_bit", amount=3},}}
makeRecipe{name="Stirling_offshore_pump",energy_required=12,ingredients={{type="item", name="Stirling_engine", amount=1},{type="item", name="Iron_piston", amount=4},{type="item", name="Copper_pipe", amount=4},}}
makeRecipe{name="Stone_gear",energy_required=10,ingredients={{type="item", name="Quarried_stone", amount=1},}}
makeRecipe{name="Stone_tools",energy_required=12,ingredients={{type="item", name="Stick", amount=1},{type="item", name="Quarried_stone", amount=1},}}
makeRecipe{name="Storage_chest",energy_required=3,ingredients={{type="item", name="Computer", amount=2},{type="item", name="Titanium_chest", amount=1},{type="item", name="Sensor", amount=1},}}
makeRecipe{name="Tinned_copper_wire",energy_required=1,ingredients={{type="item", name="Copper_wire", amount=1},{type="item", name="Tin_foil", amount=1},}}
makeRecipe{name="Track",energy_required=3,ingredients={{type="item", name="Gravel", amount=66},{type="item", name="Iron_rail", amount=2},{type="item", name="Plank", amount=6},}}
makeRecipe{name="Trading_post",energy_required=15,ingredients={{type="item", name="Copper_wire", amount=20},{type="item", name="Wooden_framework", amount=30},{type="item", name="Brick", amount=30},}}
makeRecipe{name="Train_stop",energy_required=2,ingredients={{type="item", name="Iron_rod", amount=10},{type="item", name="Wooden_board", amount=4},{type="item", name="Plank", amount=10},}}
makeRecipe{name="Transformer",energy_required=3,ingredients={{type="item", name="Transformer_core", amount=1},{type="item", name="Copper_wire", amount=8},}}
makeRecipe{name="Transformer_core",energy_required=1,results={{type="item", name="Transformer_core", amount=2,probability =1}},ingredients={{type="item", name="Iron_billet", amount=1},}}
makeRecipe{name="Transformer_core",energy_required=4,results={{type="item", name="Transformer_core", amount=2,probability =1}},ingredients={{type="item", name="Steel_billet", amount=1},}}
makeRecipe{name="Transmission_pole",energy_required=2,ingredients={{type="item", name="Steel_wire", amount=12},{type="item", name="Steel_rod", amount=4},{type="item", name="Transformer", amount=1},}}
makeRecipe{name="Transmission_pole_mk2",energy_required=2,ingredients={{type="item", name="Steel_wire", amount=8},{type="item", name="Transmission_pole", amount=1},{type="item", name="HV_transformer", amount=1},}}
makeRecipe{name="Transport_belt_normal",energy_required=3,ingredients={{type="item", name="Iron_transmission_chain", amount=4},{type="item", name="Iron_riveted_plate", amount=6},{type="item", name="Iron_rod", amount=2},{type="item", name="Basic_electric_motor", amount=1},}}
makeRecipe{name="Transport_belt_basic",energy_required=4,ingredients={{type="item", name="Transport_belt_crude", amount=1},{type="item", name="Copper_plate", amount=4},{type="item", name="Copper_transmission_chain", amount=2},}}
makeRecipe{name="Transport_belt_basic_under_a",energy_required=2,results={{type="item", name="Transport_belt_basic_under_a", amount=2,probability =1}},ingredients={{type="item", name="Transport_belt_basic", amount=9},{type="item", name="Wooden_framework", amount=5},}}
makeRecipe{name="Transport_belt_crude",energy_required=4,ingredients={{type="item", name="Stone_gear", amount=4},{type="item", name="Stick", amount=12},{type="item", name="Raw_wood", amount=4},}}
makeRecipe{name="Transport_belt_crude_under_a",energy_required=2,results={{type="item", name="Transport_belt_crude_under_a", amount=2,probability =1}},ingredients={{type="item", name="Transport_belt_crude", amount=6},{type="item", name="Wooden_framework", amount=2},}}
makeRecipe{name="Transport_belt_express_under_a",energy_required=10,results={{type="item", name="Transport_belt_express_under_a", amount=2,probability =1}},ingredients={{type="item", name="Transport_belt_express", amount=21},{type="item", name="Concrete_block", amount=21},}}
makeRecipe{name="Transport_belt_fast_under_a",energy_required=10,results={{type="item", name="Transport_belt_fast_under_a", amount=2,probability =1}},ingredients={{type="item", name="Transport_belt_fast", amount=15},{type="item", name="Concrete_block", amount=15},}}
makeRecipe{name="Transport_belt_improved_express_under_a",energy_required=10,results={{type="item", name="Transport_belt_improved_express_under_a", amount=2,probability =1}},ingredients={{type="item", name="Transport_belt_improved_express", amount=24},{type="item", name="Concrete_block", amount=24},}}
makeRecipe{name="Transport_belt_normal_under_a",energy_required=2,results={{type="item", name="Transport_belt_normal_under_a", amount=2,probability =1}},ingredients={{type="item", name="Transport_belt_normal", amount=12},{type="item", name="Wooden_framework", amount=8},}}
makeRecipe{name="Transport_belt_improved_fast_under_a",energy_required=10,results={{type="item", name="Transport_belt_improved_fast_under_a", amount=2,probability =1}},ingredients={{type="item", name="Transport_belt_improved_fast", amount=18},{type="item", name="Concrete_block", amount=18},}}
makeRecipe{name="Wooden_board",energy_required=2,results={{type="item", name="Wooden_board", amount=3,probability =1}},ingredients={{type="item", name="Plank", amount=2},}}
makeRecipe{name="Wooden_box",energy_required=15,ingredients={{type="item", name="Stick", amount=30},}}
makeRecipe{name="Wooden_chest",energy_required=15,ingredients={{type="item", name="Plank", amount=12},{type="item", name="Nail", amount=24},{type="item", name="Wooden_framework", amount=1},}}
makeRecipe{name="Wooden_framework",energy_required=6,ingredients={{type="item", name="Nail", amount=36},{type="item", name="Plank", amount=12},}}
makeRecipe{name="Wooden_tank_2x2",energy_required=8,ingredients={{type="item", name="Iron_plate", amount=4},{type="item", name="Wooden_framework", amount=6},{type="item", name="Plank", amount=24},}}
makeRecipe{name="Wooden_tank_4x4",energy_required=4,ingredients={{type="item", name="Wooden_tank_2x2", amount=4},{type="item", name="Iron_plate", amount=8},}}
makeRecipe{name="Workshop",energy_required=30,ingredients={{type="item", name="Transformer", amount=10},{type="item", name="Wooden_framework", amount=30},{type="item", name="Inserter_normal", amount=6},{type="item", name="Brick", amount=20},}}
makeRecipe{name="Crossbow",energy_required=2,ingredients={{type="item", name="Plank", amount=1},{type="item", name="Iron_billet", amount=1},{type="item", name="Iron_wire", amount=1},}}
























