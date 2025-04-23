local ArmstrongNumbers = {}

function ArmstrongNumbers.is_armstrong_number(number)
	local n = tostring(number)
	local c, r = #n, 0

	n:gsub(".", function(d)
		r = r + d ^ c
	end)

	return r == number
end

return ArmstrongNumbers
