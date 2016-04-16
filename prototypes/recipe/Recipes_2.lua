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
		icon = "__NCP-Tech__/graphics/icons/Credit.png",
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
		icon = "__NCP-Tech__/graphics/icons/Credit100.png",
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
		icon = "__NCP-Tech__/graphics/icons/Credit100.png",
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
		icon = "__NCP-Tech__/graphics/icons/Credit10k.png",
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
		icon = "__NCP-Tech__/graphics/icons/Credit10k.png",
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
		icon = "__NCP-Tech__/graphics/icons/Credit1M.png",
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
		icon = "__NCP-Tech__/graphics/icons/Credit1M.png",
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
		icon = "__NCP-Tech__/graphics/icons/Credit1G.png",
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
		icon = "__NCP-Tech__/graphics/icons/Credit1G.png",
		subgroup = "Recourses",
	},
	
	
  
  
  
  
  
  
 


}
)

local items={"gear","plate","rod","foil","pipe","chain","transmission_chain","wire"}
local materials={"Iron","Copper","Steel","Tin","Gold","Nickel","Zirconium","Aluminium","Lead","Titanium","Silver","Stainless_steel","Plastic","Magnesium","Tungsten","Brass","Nichrome"}
local billetName={["Iron"]="Iron_billet",["Copper"]="Copper_billet",["Steel"]="Steel_billet",["Tin"]="Tin_billet",["Gold"]="Gold_ingot",["Nickel"]="Nickel_billet",["Zirconium"]="Zirconium_billet",["Aluminium"]="Aluminium_billet",["Lead"]="Lead_billet",["Titanium"]="Titanium_billet",["Silver"]="Silver_ingot",["Stainless_steel"]="Stainless_steel_billet",["Plastic"]="Plastic_pellets",["Magnesium"]="Magnesium_billet",["Tungsten"]="Tungsten_carbide_billet",["Concrete"]="Concrete_block",["Brass"]="Brass_billet",["Nichrome"]="Nichrome"}
local itemMachines={["gear"]="",["plate"]="Rolling_machine",["rod"]="Extruder",["foil"]="Rolling_machine",["pipe"]="",["chain"]="",["transmission_chain"]="",["wire"]="Extruder"}
local itemOutputs={["gear"]=1,["plate"]=2,["rod"]=4,["foil"]=4,["pipe"]=1,["chain"]=1,["transmission_chain"]=1,["wire"]=2}
local itemInputs={["gear"]=1,["plate"]=1,["rod"]=1,["foil"]=1,["pipe"]=2,["chain"]=1,["transmission_chain"]=2,["wire"]=1}
local inputItem={["gear"]="plate",["foil"]="plate",["pipe"]="plate",["chain"]="rod",["wire"]="rod"}




function makeItems(material,item)
	local itemName=material.."_"..item
	
	data:extend(
    {
      {
		type= "item",
		name= itemName,
		icon = "__NCP-Tech__/graphics/icons/"..itemName..".png",
		flags= { "goes-to-main-inventory" },
		subgroup = item,
		order= "a-b-c",
		stack_size= 50,
	},

	})
end

function makeRecipes(material,item)
local itemName=material.."_"..item
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
		icon = "__NCP-Tech__/graphics/icons/"..itemName..".png",
		subgroup = item,
		},
		})
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
			icon = "__NCP-Tech__/graphics/icons/"..itemName..".png",
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
			icon = "__NCP-Tech__/graphics/icons/"..itemName..".png",
			subgroup = item,
			},
			})
		end
		
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

















































