local Darts = {}

function Darts.score(x, y)
	local position = math.sqrt(x ^ 2 + y ^ 2)
	if position <= 1 then
		return 10
	elseif position <= 5 then
		return 5
	elseif position <= 10 then
		return 1
	else
		return 0
	end
end

return Darts
