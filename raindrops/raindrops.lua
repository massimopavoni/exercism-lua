return function(n)
	local rd = (n % 3 == 0 and "Pling" or "") .. (n % 5 == 0 and "Plang" or "") .. (n % 7 == 0 and "Plong" or "")
	return rd ~= "" and rd or tostring(n)
end
