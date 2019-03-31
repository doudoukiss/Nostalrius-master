dofile('data/lib/lib.lua')

function getDistanceBetween(firstPosition, secondPosition)
	local xDif = math.abs(firstPosition.x - secondPosition.x)
	local yDif = math.abs(firstPosition.y - secondPosition.y)
	local posDif = math.max(xDif, yDif)
	if firstPosition.z ~= secondPosition.z then
		posDif = posDif + 15
	end
	return posDif
end

function getFormattedWorldTime()
	local worldTime = getWorldTime()
	local hours = math.floor(worldTime / 60)

	local minutes = worldTime % 60
	if minutes < 10 then
		minutes = '0' .. minutes
	end
	return hours .. ':' .. minutes
end

string.split = function(str, sep)
	local res = {}
	for v in str:gmatch("([^" .. sep .. "]+)") do
		res[#res + 1] = v
	end
	return res
end

string.trim = function(str)
	return str:match'^()%s*$' and '' or str:match'^%s*(.*%S)'
end

table.contains = function(array, value)
	for _, targetColumn in pairs(array) do
		if targetColumn == value then
			return true
		end
	end
	return false
end
table.append = table.insert
table.empty = function (t)
    return next(t) == nil
end

table.find = function (table, value)
    for i, v in pairs(table) do
        if(v == value) then
            return i
        end
    end

    return nil
end

table.count = function (table, item)
    local count = 0
    for i, n in pairs(table) do
        if(item == n) then
            count = count + 1
        end
    end

    return count
end
table.countElements = table.count

table.getCombinations = function (table, num)
    local a, number, select, newlist = {}, #table, num, {}
    for i = 1, select do
        a[#a + 1] = i
    end

    local newthing = {}
    while(true) do
        local newrow = {}
        for i = 1, select do
            newrow[#newrow + 1] = table[a[i]]
        end

        newlist[#newlist + 1] = newrow
        i = select
        while(a[i] == (number - select + i)) do
            i = i - 1
        end

        if(i < 1) then
            break
        end

        a[i] = a[i] + 1
        for j = i, select do
            a[j] = a[i] + j - i
        end
    end

    return newlist
end

function table.serialize(x, recur)
    local t = type(x)
    recur = recur or {}

    if(t == nil) then
        return "nil"
    elseif(t == "string") then
        return string.format("%q", x)
    elseif(t == "number") then
        return tostring(x)
    elseif(t == "boolean") then
        return t and "true" or "false"
    elseif(getmetatable(x)) then
        error("Can not serialize a table that has a metatable associated with it.")
    elseif(t == "table") then
        if(table.find(recur, x)) then
            error("Can not serialize recursive tables.")
        end
        table.append(recur, x)

        local s = "{"
        for k, v in pairs(x) do
            s = s .. "[" .. table.serialize(k, recur) .. "]"
            s = s .. " = " .. table.serialize(v, recur) .. ","
        end
        s = s .. "}"
        return s
    else
        error("Can not serialize value of type '" .. t .. "'.")
    end
end

function table.unserialize(str)
    return loadstring("return " .. str)()
end