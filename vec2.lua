local vector2   = {}
vector2.__index = vector2

setmetatable(vector2, {
	__call = function(_, x, y)
		return setmetatable({
			x = tonumber(x) or 0,
			y = tonumber(y) or 0
		}, vector2)
	end
})

function vector2:__add(e)
	return vector2(self.x + e.x, self.y + e.y)
end

function vector2:__mul(e)
	return vector2(self.x * e.x, self.y * e.y)
end

function vector2:__sub(e)
	return vector2(self.x - e.x, self.y - e.y)
end

function vector2:__div(e)
	return vector2(self.x / e.x, self.y / e.y)
end

return vector2
