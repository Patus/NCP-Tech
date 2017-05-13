





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
recipeNames["stone"]={recipeName="stone",itemName="stone",price=10}

makeRecipe{name="Alumina",ingredients={{type="item", name="stone", amount=1}}}
--recipeNames["Alumn"]={itemName="Alumina",price=900}
--recipeNames["Alumns"]={itemName="Alumina",price=900}

--local reclist=data.raw["recipe"]
local recnamelist={}
local ready=false
while (not ready) do
	ready=true
	for i,v in pairs(recipeNames) do
	local ttt=0
		if(v.price==nil)then
			ready=false
			for z,x in pairs(data.raw.recipe[v.recipeName].ingredients) do
				if (recipeNames[x.name].price==nil) then
					ttt=nil
					break
				
				else
					local prob=x.probability or 1
					local amo=x.amount or 1
						
					
					
					ttt=ttt+(recipeNames[x.name].price*amo)/prob
					
				end
				
			end
			v.price=ttt*1.5	
		
		end
		
		
		
	end
	
end



for i,v in pairs(recipeNames) do
	

	--table.insert(recipeNames, v["name"])
	--if(v["name"]~=nil)then
		--data.raw["item"][v["name"]].price=3000
		--v.price=300
		setItemPrice(v.itemName,v.price)
	--end
	

end




--data.raw["item"]["Quarried_stone"].price=3000





--setItemPrice("Quarried_stone",data.raw["item"]["Quarried_stone"].price)
--setItemPrice("stone",15000)
