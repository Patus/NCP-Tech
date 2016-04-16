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




function testfunctio(material,item)
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
      
    }
    )


end


local items={"gear","plate","rod","foil","pipe","chain","transmission_chain","wire"}
local materials={"Iron","Copper","Steel","Tin","Gold","Nickel","Zirconium","Aluminium","Lead","Titanium","Silver","Stainless_steel","Plastic","Magnesium","Tungsten","Concrete","Brass","Nichrome"}

for i , item in pairs(items) do
	for i , material in pairs(materials) do
		if(not(material=="Concrete" or material=="Zirconium" or material=="Nichrome")) then
			testfunctio(material,item)

		else
			if((material=="Concrete" and item=="pipe")or(material=="Zirconium" and item=="rod")or(material=="Nichrome" and (item=="rod"or item=="wire")))then
				testfunctio(material,item)
			end
		end
		
	end
end

















































