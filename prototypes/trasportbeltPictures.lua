-- Specifies set of pictures and animations used by more entities, to avoid duplication.
-- The standard set of transport belt pictures (vertical/horizontal + endigns + startings)
-- are used in transport belt, transport belt to ground and splitter.

ending_patch_prototype =
  {
    sheet =
    {
      filename = "__base__/graphics/entity/basic-transport-belt/start-end-integration-patches.png",
      width = 40,
      height = 40,
      priority = "extra-high"
    }
  }


function belt_horizontal(name)
	if(name=="crude" or name=="basic" or name=="normal")then
		return{
			filename = "__NCP-Tech__/graphics/entity/Transport/Transport_belt_"..name..".png",
			priority = "extra-high",
			width = 40,
			height = 40,
			frame_count = 16
		}
	else
		return{
			filename = "__NCP-Tech__/graphics/entity/Transport/Transport_belt_"..name..".png",
			priority = "extra-high",
			width = 40,
			height = 40,
			frame_count = 32
		}
	end
end
function belt_vertical(name)
	if(name=="crude" or name=="basic" or name=="normal")then
		return{
			filename = "__NCP-Tech__/graphics/entity/Transport/Transport_belt_"..name..".png",
			priority = "extra-high",
			width = 40,
			height = 40,
			frame_count = 16,
			y = 40
		}
	else
		return{
			filename = "__NCP-Tech__/graphics/entity/Transport/Transport_belt_"..name..".png",
			priority = "extra-high",
			width = 40,
			height = 40,
			frame_count = 32,
			y = 40
		}
	end
end
function belt_ending_top(name)
	if(name=="crude" or name=="basic" or name=="normal")then
		return{
			filename = "__NCP-Tech__/graphics/entity/Transport/Transport_belt_"..name..".png",
			priority = "extra-high",
			width = 40,
			height = 40,
			frame_count = 16,
			y = 80
		}
	else
		return{
			filename = "__NCP-Tech__/graphics/entity/Transport/Transport_belt_"..name..".png",
			priority = "extra-high",
			width = 40,
			height = 40,
			frame_count = 32,
			y = 80
		}
	end
end
function belt_ending_bottom(name)
	if(name=="crude" or name=="basic" or name=="normal")then
		return{
			filename = "__NCP-Tech__/graphics/entity/Transport/Transport_belt_"..name..".png",
			priority = "extra-high",
			width = 40,
			height = 40,
			frame_count = 16,
			y = 120
		}
	else
		return{
			filename = "__NCP-Tech__/graphics/entity/Transport/Transport_belt_"..name..".png",
			priority = "extra-high",
			width = 40,
			height = 40,
			frame_count = 32,
			y = 120
		}
	end
end
function belt_ending_side(name)
	if(name=="crude" or name=="basic" or name=="normal")then
		return{
			filename = "__NCP-Tech__/graphics/entity/Transport/Transport_belt_"..name..".png",
			priority = "extra-high",
			width = 40,
			height = 40,
			frame_count = 16,
			y = 160
		}
	else
		return{
			filename = "__NCP-Tech__/graphics/entity/Transport/Transport_belt_"..name..".png",
			priority = "extra-high",
			width = 40,
			height = 40,
			frame_count = 32,
			y = 160
		}
	end
end
function belt_starting_top(name)
	if(name=="crude" or name=="basic" or name=="normal")then
		return{
			filename = "__NCP-Tech__/graphics/entity/Transport/Transport_belt_"..name..".png",
			priority = "extra-high",
			width = 40,
			height = 40,
			frame_count = 16,
			y = 200
		}
	else
		return{
			filename = "__NCP-Tech__/graphics/entity/Transport/Transport_belt_"..name..".png",
			priority = "extra-high",
			width = 40,
			height = 40,
			frame_count = 32,
			y = 200
		}
	end
end
function belt_starting_bottom(name)
	if(name=="crude" or name=="basic" or name=="normal")then
		return{
			filename = "__NCP-Tech__/graphics/entity/Transport/Transport_belt_"..name..".png",
			priority = "extra-high",
			width = 40,
			height = 40,
			frame_count = 16,
			y = 240
		}
	else
		return{
			filename = "__NCP-Tech__/graphics/entity/Transport/Transport_belt_"..name..".png",
			priority = "extra-high",
			width = 40,
			height = 40,
			frame_count = 32,
			y = 240
		}
	end
end
function belt_starting_side(name)
	if(name=="crude" or name=="basic" or name=="normal")then
		return{
			filename = "__NCP-Tech__/graphics/entity/Transport/Transport_belt_"..name..".png",
			priority = "extra-high",
			width = 40,
			height = 40,
			frame_count = 16,
			y = 280
		}
	else
		return{
			filename = "__NCP-Tech__/graphics/entity/Transport/Transport_belt_"..name..".png",
			priority = "extra-high",
			width = 40,
			height = 40,
			frame_count = 32,
			y = 280
		}
	end
end
