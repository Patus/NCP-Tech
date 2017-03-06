





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
	
	oldmakeRecipe(name.."ToCredits",{{"item",name,1}},list,"Market","Recourses")
	
	
	
	
	
	
	
	
	

end

makeRecipe{name="Alumina",ingredients={{type="item", name="stone", amount=1}}}


local reclist=data.raw["recipe"]
local recnamelist={}

for i,v in ipairs(recipeNames) do
	--table.insert(recipeNames, v["name"])
	--if(v["name"]~=nil)then
		--data.raw["item"][v["name"]].price=3000
		setItemPrice(v.itemName,3000)
	--end
	

end




--data.raw["item"]["Quarried_stone"].price=3000





--setItemPrice("Quarried_stone",data.raw["item"]["Quarried_stone"].price)
setItemPrice("stone",15000)
